create or replace function parse_html_saga(
  p_html clob
)
return t_table pipelined
as 
  l_html clob;
  l_start number;
  l_end   number;
  l_info  varchar2(4000);
  l_patient varchar2(1000);
  l_columns apex_t_varchar2;   
begin
  l_start := instr(p_html, '佐賀県の患者発生状況');
  l_end := instr(p_html, '佐賀県の検査状況');
  l_html := substr(p_html, l_start, l_end - l_start);
  loop
      l_start := instr(l_html, '<div>');
      if l_start < 1 then
          exit;
      end if;
      l_html := substr(l_html, l_start);
      l_end   := instr(l_html, '</div>');
      if l_end < 1 then
          exit;
      end if;
      l_info := substr(l_html, 6, l_end - 6);
      l_info := replace(l_info,'&nbsp;',' '); -- 半角スペースに
      l_info := replace(l_info,'　',' '); -- 全角を半角へ
      l_info := replace(l_info,'<div>'); -- ５例目対策
      l_info := translate(l_info, '（）','  '); -- 在住カッコ対策
      l_patient := regexp_replace(l_info,'\s*(\d+?)例目：(\w+)\s+(\w+)\s+(\S+)\s+.*','\1:\2:\3:\4');
      if l_info != l_patient then
          l_columns := apex_string.split(l_patient, ':');
          pipe row(t_table_row(
              l_columns(1),
              l_columns(2),
              l_columns(3),
              l_columns(4),
              null,
              null, null, null, null, null,
              null, null, null, null, null,
              null, null, null, null, null
          ));
      end if;
      l_html := substr(l_html, l_end + 6);
  end loop;
end parse_html_saga;
/
