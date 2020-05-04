create or replace function parse_html_akita(
  p_html clob
)
return t_table pipelined
as 
  l_html clob;
  l_line varchar2(2000);
  l_patient_no varchar2(1000);
  l_parsed varchar2(1000);
  l_columns apex_t_varchar2;
begin
  l_html := substr(p_html, instr(p_html, '<h2><a id="gaiyou"></a>1　概要</h2>'));
  l_html := substr(l_html, 1, instr(l_html, '<h2><a id="houdouhappyou"></a>2　報道発表資料</h2>')-1);
  l_html := replace(l_html, '<h2><a id="gaiyou"></a>1　概要</h2>','<tbody>');
  l_html := l_html || '</tbody>';
  for r in
  (
     select line from xmltable('tbody/p' passing xmltype(l_html)
                                        columns line varchar2(1000) path '.')
  )
  loop
      l_line := r.line;
      l_parsed := regexp_replace(l_line, '^(\d+)例目.*', '\1');
      if l_line != l_parsed then
          l_patient_no := l_parsed;
          continue;
      end if;
      l_parsed := regexp_replace(l_line, 
                                 '年齢：(\w+)、性別：(\w+).*居住地：(\w+)、職業：(\S+)、.*(\d+月\d+日).*',
                                '\1:\2:\3:\4:\5',1,1);
      if l_line != l_parsed then
          l_columns := apex_string.split(l_parsed, ':');
          pipe row(t_table_row(
              l_patient_no, l_columns(5), l_columns(1), l_columns(2), l_columns(3),
              l_columns(4),
              null, null, null, null,
              null, null, null, null, null,
              null, null, null, null, null
          ));
          continue;
      end if;
      l_parsed := regexp_replace(l_line, 
                                 '年齢：(\w+)、性別：(\w+).*居住地：(\w+).*(\d+月\d+日).*',
                                '\1:\2:\3:\4',1,1);
      if l_line != l_parsed then
          l_columns := apex_string.split(l_parsed, ':');
          pipe row(t_table_row(
              l_patient_no, l_columns(4), l_columns(1), l_columns(2), l_columns(3),
              null, null, null, null, null,
              null, null, null, null, null,
              null, null, null, null, null
          ));
          continue;
      end if;
  end loop;
end parse_html_akita;
/
