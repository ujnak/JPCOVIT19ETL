create or replace function parse_pdf_kagawa(
  P_MUNICIPALITY_CODE IN NUMBER DEFAULT 370002,
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
    l_string apex_t_varchar2 := apex_t_varchar2();
    l_count number;
    l_patient_no      varchar2(10);
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
      if regexp_like(l_line, '^\(\d+$') then
          l_string := apex_t_varchar2();
          apex_string.push(l_string, l_line);
      elsif regexp_like(l_line, '^例目\)$') then
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
          apex_string.push(l_string, l_line);
          l_patient_no := apex_string.join(l_string,null);
          l_patient_no := regexp_substr(l_patient_no, '(\d+)', 1,1);
          l_string := apex_t_varchar2();
      elsif instr(l_line, '(1)年 代') > 0 then
          -- 年代が最初に現れるので、スタックをクリアする。
          l_string := apex_t_varchar2();
          apex_string.push(l_string, l_line);
      elsif instr(l_line, '(2)性 別') > 0 then
          -- 今まで出現していたのは年代
          l_age := apex_string.join(l_string, null);
          l_age := regexp_replace(l_age, '^\(1\)年\s*代:\s*(\w+)', '\1', 1,1);
          l_string := apex_t_varchar2();
          apex_string.push(l_string, l_line);
      elsif instr(l_line, '(3)住 所') > 0 then
          -- 今まで出現していたのは性別
          l_sex := apex_string.join(l_string, null);
          l_sex := regexp_replace(l_sex, '^\(2\)性\s*別:\s*(\w+)', '\1', 1,1);
          l_string := apex_t_varchar2();
          apex_string.push(l_string, l_line);
      elsif instr(l_line, '(4)職業等') > 0 then
          -- 今まで出現していたのは住所
          l_home := apex_string.join(l_string, null);
          l_home := regexp_replace(l_home, '^\(3\)住\s*所:\s*(\w+)', '\1', 1,1);
          l_string := apex_t_varchar2();
          apex_string.push(l_string, l_line);
      elsif instr(l_line, '(5)症状') > 0 then
          -- 今まで出現していたのは職業
          l_job := apex_string.join(l_string, null);
          l_job := regexp_replace(l_job, '^\(4\)職業等:\s*(\w+)', '\1', 1,1);       
          l_string := apex_t_varchar2();
          apex_string.push(l_string, l_line);
      elsif instr(l_line, '(6)行動歴') > 0 then
         l_date := apex_string.join(l_string, null);
          l_count := regexp_count(l_date,'\d+月\d+日');
          if l_count > 0 then
            l_date := regexp_substr(l_date, '(\d+月\d+日)', 1, l_count);
          else
            l_date := null;
          end if;
          -- dbms_output.put_line(l_date);
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
end parse_pdf_kagawa;
/
