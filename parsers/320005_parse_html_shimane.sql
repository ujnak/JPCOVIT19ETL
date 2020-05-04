create or replace function parse_html_shimane(
  p_html clob
)
return t_table pipelined
as 
  l_html clob;
  l_line varchar2(2000);
  l_parsed varchar2(1000);
  l_columns apex_t_varchar2;
begin
  l_html := substr(p_html, regexp_instr(p_html, '<div><p>【.*現在】</p>'));
  l_html := substr(l_html, 1, instr(l_html, '<p>（年代は判明時の年代）</p>')-1);
  l_html := l_html || '</div>';
  l_html := replace(l_html, '<span style="letter-spacing: 1em;">', '');
  l_html := replace(l_html, '<span style="letter-spacing: 2em;">', ' ');
  l_html := replace(l_html, '<span style="letter-spacing: 3em;">', ' ');
  l_html := replace(l_html, '</span>', ' ');
  for r in
  (
     select rownum rn, p from xmltable('div/p' passing xmltype(l_html)
                                   columns p varchar2(1000) path '.')
  )
  loop
      l_line := translate(r.p, '０１２３４５６７８９　','0123456789 ');
      l_parsed := regexp_replace(l_line, '(\d+)\s+(\d+月\s*\d+日)\s+(\d+\w+\s*代)\s+(\w+)\s+(\w+)\s+(\w+).*',
                                '\1:\2:\3:\4:\5:\6',1,1);
      if l_line != l_parsed then
          l_columns := apex_string.split(l_parsed, ':');
          pipe row(t_table_row(
              l_columns(1), replace(l_columns(2),' '), replace(l_columns(3), ' '),
              l_columns(4), l_columns(5), l_columns(6),
              null, null, null, null,
              null, null, null, null, null,
              null, null, null, null, null
          ));
          continue;
      end if;
      l_parsed := regexp_replace(l_line, '(\d+)\s+(\d+月\s*\d+日)\s+(\d+\w+\s*代)\s+(\w+)\s+(\w+).*',
                                '\1:\2:\3:\4:\5',1,1);
      if l_line != l_parsed then
          l_columns := apex_string.split(l_parsed, ':');
          pipe row(t_table_row(
              l_columns(1), replace(l_columns(2),' '), replace(l_columns(3), ' '),
              l_columns(4), l_columns(5),
              null, null, null, null, null,
              null, null, null, null, null,
              null, null, null, null, null
          ));
          continue;
      end if;
      l_parsed := regexp_replace(l_line, '(\d+)\s+(\d+月\s*\d+日)\s+(\d+\w+\s*未満)\s+(\w+)\s+(\w+).*',
                                '\1:\2:\3:\4:\5',1,1);
      if l_line != l_parsed then
          l_columns := apex_string.split(l_parsed, ':');
          pipe row(t_table_row(
              l_columns(1), replace(l_columns(2),' '), replace(l_columns(3), ' '),
              l_columns(4), l_columns(5),
              null, null, null, null, null,
              null, null, null, null, null,
              null, null, null, null, null
          ));
          continue;
      end if;
  end loop;
end parse_html_shimane;
/
