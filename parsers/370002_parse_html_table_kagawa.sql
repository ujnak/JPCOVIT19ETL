create or replace function parse_html_table_kagawa( 
  p_html clob 
) 
return t_table pipelined 
as  
  l_html   clob; 
  l_start  number; 
  l_end    number; 
  l_row    t_table_row; 
  c_record sys_refcursor; 
  l_prev  varchar2(80);
  l_prev2 varchar2(400);
begin 
  -- 必要な情報までスキップ。 
  l_html  := substr(p_html, instr(p_html,'香川県での発生状況</h2>'));
  l_start := instr(l_html, '<tbody'); 
  l_end   := instr(l_html, '</tbody>'); 
  l_html  := substr(l_html, l_start, l_end - l_start + 8); 
  l_html  := replace(l_html,'&nbsp;');
  -- dbms_output.put_line(l_html);
  for r in 
  ( 
     select rownum rn, td from xmltable('tbody/tr' passing xmltype(l_html) 
                                        columns td xmltype path './td')
  ) 
  loop 
    if r.rn = 1 then
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
        fetch c_record into l_row.col006;
    close c_record;
    l_row.col001 := to_single_byte(l_row.col001); 
    l_row.col002 := to_single_byte(l_row.col002);
    l_row.col003 := to_single_byte(l_row.col003);
    if regexp_like(l_row.col002, '^\d+月\d+日\(\w曜日\)$') then
        l_prev := l_row.col002;
    else
        l_row.col006 := l_row.col005;
        l_row.col005 := l_row.col004;
        l_row.col004 := l_row.col003;
        l_row.col003 := l_row.col002;
        l_row.col002 := l_prev;
    end if;
    if l_row.col006 is not null then
        l_prev2 := l_row.col006;
    else
        l_row.col006 := l_prev2;
    end if;
    pipe row(l_row);
  end loop; 
end parse_html_table_kagawa; 
/

