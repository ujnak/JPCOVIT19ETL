create or replace function parse_pdf_ibaraki(
  P_MUNICIPALITY_CODE IN NUMBER DEFAULT 80004,
  P_URL IN VARCHAR2,
  P_CACHE IN NUMBER DEFAULT 0
)
return t_table pipelined
as 
    l_clob    clob;
    l_blob    blob;
    l_line    varchar2(1000);
    l_parsed  varchar2(1000);
    l_row t_table_row := null;
    l_file_name varchar2(200) := substr(p_url,instr(p_url,'/',-1)+1);
    l_string apex_t_varchar2 := apex_t_varchar2();
    l_count number;
    l_patient_no      varchar2(10);
    l_patient_no_temp varchar2(10);
    l_age  varchar2(1000);
    l_sex  varchar2(1000);
    l_home varchar2(1000);
    l_job  varchar2(1000);
    l_date varchar2(1000);
begin
  l_blob := get_content_b
  (
      p_municipality_code,
      p_url,
      p_cache
  );
  ctx_doc.policy_filter( 'pdf_policy', l_blob, l_clob, false );
  l_clob := substr(l_clob, instr(l_clob, '<body'));
  l_clob := substr(l_clob, 1, instr(l_clob, '</body>')+6);
  for r in 
  (
      select div from xmltable('body/div' passing xmltype(l_clob)
                               columns div varchar2(1000) path '.')
  )
  loop
      l_line := trim(to_single_byte(r.div));
      l_line := replace(l_line, '：',':');
      if regexp_like(l_line, '^\d+$') then
          if l_patient_no_temp is not null then
              if to_number(l_line) > to_number(l_patient_no_temp) then 
                  l_patient_no_temp := l_line;
              end if;
          else
              l_patient_no_temp := l_line;
          end if;
          apex_string.push(l_string, l_line);
      --
      elsif regexp_like(l_line, '^\d+例目$') then
          -- 今までのを出力する - 番号が通常だが番号は'^\d+$'のルールでマッチする可能性があるので年齢で確認する。
          if l_age is not null then
              pipe row(t_table_row(
                  l_patient_no, l_age, l_sex, l_home, l_job,
                  l_date,
                  null, null, null, null,
                  null, null, null, null, null,
                  null, null, null, null, null
              ));
              l_age := null; l_sex := null; l_home := null;
              l_job := null; l_date := null;
          end if;
          -- 新しい行の始まり
          l_patient_no := regexp_replace(l_line, '^(\d+)例目$','\1',1,1);
          l_string := apex_t_varchar2();                
      elsif regexp_like(l_line, '^例目$') then
          -- 今までのを出力する
          if l_age is not null then
              pipe row(t_table_row(
                  l_patient_no, l_age, l_sex, l_home, l_job,
                  l_date,
                  null, null, null, null,
                  null, null, null, null, null,
                  null, null, null, null, null
              ));
              l_age := null; l_sex := null; l_home := null;
              l_job := null; l_date := null;
          end if;
          l_string := apex_t_varchar2();
          l_patient_no     := l_patient_no_temp;
      elsif regexp_like(l_line, '^・年\s*代') then
          -- 年代が最初に現れるので、スタックをクリアする。
          l_string := apex_t_varchar2();
          apex_string.push(l_string, l_line);
      elsif regexp_like(l_line, '^・性\s*別') then
          -- 今まで出現していたのは年代
          l_age := apex_string.join(l_string, null);
          l_age := regexp_replace(l_age, '^・年\s*代:\s*(\w+)', '\1', 1,1);
          l_string := apex_t_varchar2();
          apex_string.push(l_string, l_line);
      elsif regexp_like(l_line, '^・居住地') then
          l_sex := apex_string.join(l_string, null);
          l_sex := regexp_replace(l_sex, '^・性\s*別:\s*(\w+)', '\1', 1,1);
          l_string := apex_t_varchar2();
          apex_string.push(l_string, l_line);          
      elsif regexp_like(l_line, '^・職\s*業') then
          l_home := apex_string.join(l_string, null);
          l_home := regexp_replace(l_home, '^・居住地:\s*(\w+)', '\1', 1,1);
          l_string := apex_t_varchar2();
          apex_string.push(l_string, l_line);          
      elsif regexp_like(l_line, '.*\d+/\d+\s+.*陽性が判明') then
          l_job := apex_string.join(l_string, ' ');
          l_job := regexp_replace(l_job, '^・職\s*業:\s*(\S+).*', '\1', 1,1);
          l_string := apex_t_varchar2();
          l_date := regexp_replace(l_line, '.*(\d+/\d+)\s+.*陽性が判明','\1', 1,1);
          l_string := apex_t_varchar2();
      elsif regexp_like(l_line, '.*\d+/\d+\s+.*帰国者・接触者外来受診') then
          l_job := apex_string.join(l_string, ' ');
          l_job := regexp_replace(l_job, '^・職\s*業:\s*(\S+).*', '\1', 1,1);
          l_string := apex_t_varchar2();
          l_date := regexp_replace(l_line, '.*(\d+/\d+)\s+.*帰国者・接触者外来受診','\1', 1,1);
          l_string := apex_t_varchar2();
      elsif regexp_like(l_line, '陽性が判明') or regexp_like(l_line, '帰国者・接触者外来受診') then
          apex_string.push(l_string, l_line);
          l_date := apex_string.join(l_string, ' ');
          l_job := regexp_replace(l_date, '^・職\s*業:\s*(\S+).*', '\1', 1,1);
          l_date := replace(l_date, ' ');
          l_count := regexp_count(l_date,'\d+/\d+');
          if l_count > 0 then
            l_date := regexp_substr(l_date, '(\d+/\d+)', 1, l_count);
          else
            l_date := null;
          end if;
      else
          apex_string.push(l_string, l_line);
      end if;
  end loop;
  if l_age is not null then
      pipe row(t_table_row(
          l_patient_no, l_age, l_sex, l_home, l_job,
          l_date,
          null, null, null, null,
          null, null, null, null, null,
          null, null, null, null, null
      ));
      l_age := null; l_sex := null; l_home := null;
      l_job := null; l_date := null;
  end if;
end parse_pdf_ibaraki;
