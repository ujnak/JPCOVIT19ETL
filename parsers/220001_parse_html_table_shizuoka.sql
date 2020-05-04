create or replace function parse_html_table_shizuoka(
  p_html clob
)
return t_table pipelined
as 
  l_html   clob;
  l_start  number;
  l_end    number;
  l_row    t_table_row;
  c_record sys_refcursor;
begin
  l_start := instr(p_html, '<tbody');
  l_end   := instr(p_html, '</tbody>');
  l_html  := substr(p_html, l_start, l_end - l_start + 8);
  l_html  := replace(l_html,'&nbsp;');
  l_html  := replace(l_html, '　',' '); -- 全角スペースを半角へ
  for r in
  (
     select rownum rn, td from xmltable('tbody/tr' passing xmltype(l_html)
                                        columns td xmltype path './td')
  )
  loop
    if r.rn < 3 then
        continue;
    end if;
    l_row := t_table_row(
        null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null
    );  
    open c_record for 
        select cell from xmltable('./td' passing r.td
                               columns cell varchar2(200) path '.');
        fetch c_record into l_row.col001;
        fetch c_record into l_row.col002;
        fetch c_record into l_row.col003;
        fetch c_record into l_row.col004;
        fetch c_record into l_row.col005;
    close c_record;
    l_row.col001 := to_single_byte(l_row.col001);
    l_row.col002 := to_single_byte(l_row.col002);
    l_row.col004 := to_single_byte(l_row.col004);
    pipe row(l_row);
  end loop;
end parse_html_table_shizuoka;
/
