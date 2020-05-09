create or replace function parse_html_table_saga( 
  p_html clob 
) 
return t_table pipelined 
as  
  l_html   clob; 
  l_start  number; 
  l_end    number; 
  l_row    t_table_row; 
  c_record sys_refcursor; 
  l_prev varchar2(80);
begin 
  -- 必要な情報までスキップ。 
  l_html  := substr(p_html, instr(p_html,'PCR検査陽性者一覧'));
  l_start := instr(l_html, '<tbody'); 
  l_end   := instr(l_html, '</tbody>'); 
  l_html  := substr(l_html, l_start, l_end - l_start + 8); 
  l_html  := replace(l_html,'&nbsp;');
  l_html := regexp_replace(l_html, '<a.*>.*?</a>');
  for r in 
  ( 
     select td from xmltable('tbody/tr' passing xmltype(l_html) 
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
    close c_record;
    l_row.col001 := replace(to_single_byte(l_row.col001),' '); 
    l_row.col002 := to_single_byte(l_row.col002);
    l_row.col003 := to_single_byte(l_row.col003); 
    l_row.col007 := replace(to_single_byte(l_row.col007),' ');
    if instr(l_row.col001,'〃') > 0 then
        l_row.col001 := l_prev;
    end if;
    if l_row.col001 is not null then
        l_prev := l_row.col001;
        pipe row(l_row);
    end if;
  end loop; 
end parse_html_table_saga; 
/

