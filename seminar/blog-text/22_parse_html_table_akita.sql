create or replace function parse_html_table_akita
return t_table pipelined 
as  
  l_html   clob; 
  l_start  number; 
  l_end    number; 
  l_row    t_table_row; 
  c_record sys_refcursor; 
  l_data   varchar2(200);
begin 
  -- 取り込むデータの部分を切り出す。 
  l_html := get_content_as_clob('秋田県','AL32UTF8');
  l_start := instr(l_html, '<tbody'); 
  l_end   := instr(l_html, '</tbody>'); 
  l_html  := substr(l_html, l_start, l_end - l_start + 8); 
  l_html  := replace(l_html,'&nbsp;');  
  for r in 
  ( 
     select rownum rn, td from xmltable('tbody/tr' passing xmltype(l_html) 
                               columns td xmltype path './td') 
  ) 
  loop
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
        fetch c_record into l_row.col006;
        fetch c_record into l_row.col007;
        fetch c_record into l_row.col008;
    close c_record; 
    pipe row(l_row); 
  end loop; 
end parse_html_table_akita;
