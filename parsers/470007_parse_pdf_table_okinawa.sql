create or replace function parse_pdf_table_okinawa( 
  P_MUNICIPALITY_CODE IN NUMBER DEFAULT 470007, 
  P_URL IN VARCHAR2, 
  P_CACHE IN NUMBER DEFAULT 1 
) 
return t_table pipelined 
as  
    l_columns apex_t_varchar2; 
    l_prev    varchar2(1000); 
    l_next    varchar2(1000); 
    l_line    varchar2(1000); 
    l_parsed  varchar2(1000); 
    l_row t_table_row := null; 
    l_file_name varchar2(200) := 'dummy.xlsx'; 
    procedure debug_print(
        p_rule varchar2,
        p_row t_table_row
    )
    is
    begin
        dbms_output.put_line('Rule:' || p_rule
            || ' No:' || p_row.col001 || ' Sex:' || p_row.col002 || ' Age:' || p_row.col003
            || ' ID:' || p_row.col004 || ' PD:' || p_row.col005 || ' Home:' 
            || p_row.col006 || ' Job:' || p_row.col007);
    end debug_print;
begin 
    for r in ( 
        select col001 
        from table( 
            apex_data_parser.parse( 
               p_content => get_content_b( 
               p_municipality_code, 
               p_url, 
               p_cache
               ), 
               p_file_name => l_file_name, 
               p_skip_rows => 1 
            ) 
        ) 
    ) 
    loop 
        l_line := r.col001; 
        l_line := replace(l_line, '_x000C_'); 
        l_line := to_single_byte(l_line); 
        l_line := replace(l_line, '　',' '); 
        -- dbms_output.put_line('DEBUG: ' || l_line);
        -- 143   男性    50代   4月22日   4月30日   東京都     会社員 調査中 
        l_parsed := regexp_replace(l_line, 
            '^(\d+)\s+(\w+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\w+)\s+(\w+)\s+(\S+)\s*.*', 
            '\1:\2:\3:\4:\5:\6:\7:\8',1,1); 
        if l_line != l_parsed then -- 正規表現が一致している 
            if l_row is not null then      -- 直前の行もデータ行なので出力する。 
                pipe row(l_row); l_row := null; -- 二重出力を抑止 
                -- debug_print('1',l_row); l_row := null;
            end if; 
            l_columns := apex_string.split(l_parsed,':'); 
            l_row := t_table_row( 
                l_columns(1), l_columns(2), l_columns(3), l_columns(4), l_columns(5), 
                l_columns(6), l_columns(7),
                null, null, null, 
                null, null, null, null, null, 
                null, null, null, null, null 
            ); 
            continue; 
        end if; 
        -- 142   女性    70代   4月21日   4月28日   沖縄市      無職 
        l_parsed := regexp_replace(l_line, 
            '^(\d+)\s+(\w+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\w+)\s+(\S+)\s*.*', 
            '\1:\2:\3:\4:\5:\6:\7',1,1); 
        if l_line != l_parsed then 
            if l_row is not null then 
                pipe row(l_row); l_row := null; 
                -- debug_print('2', l_row); l_row := null;
            end if; 
            l_columns := apex_string.split(l_parsed,':'); 
            l_row := t_table_row( 
                l_columns(1), l_columns(2), l_columns(3), l_columns(4), l_columns(5), 
                l_columns(6), l_columns(7),
                null, null, null, 
                null, null, null, null, null, 
                null, null, null, null, null 
            ); 
            if not regexp_like(l_columns(6),'\w+[都|道|府|県|市|町|村]$') then
                l_row.col006 := null;
                l_row.col007 := l_columns(6);
            end if;
            continue; 
        end if; 
        -- 141   女性    60代   4月18日   4月28日            無職 
        l_parsed := regexp_replace(l_line, 
            '^(\d+)\s+(\w+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s*.*', 
            '\1:\2:\3:\4:\5:\6',1,1); 
        if l_line != l_parsed then 
            if l_row is not null then 
                pipe row(l_row); l_row := null; 
                -- debug_print('3', l_row); l_row := null;
            end if; 
            l_columns := apex_string.split(l_parsed,':'); 
            l_row := t_table_row( 
                l_columns(1), l_columns(2), l_columns(3), l_columns(4), l_columns(5), 
                l_columns(6),
                null, null, null, null,
                null, null, null, null, null, 
                null, null, null, null, null 
            ); 
            if not regexp_like(l_columns(6),'\w+[都|道|府|県|市|町|村]$') then
                l_row.col006 := null;
                l_row.col007 := l_columns(6);
            end if;
            continue; 
        end if; 
        -- dbms_output.put_line('DEBUG: ' || l_line);
        -- データ行でなく、セルに複数行含まれているときの対応を行う。 
        l_next := regexp_replace(l_line, '(\S+).*', '\1', 1,1); 
        if l_row is not null then 
            if l_row.col006 is null then -- 居住地がnullであれば前後を居住地とする 
                l_row.col006 := l_prev || l_next; 
            end if; 
            pipe row(l_row); l_row := null; 
            -- debug_print('4', l_row); l_row := null;
        end if;
        l_prev := regexp_replace(l_line, '(\S+).*', '\1', 1,1); 
    end loop; 
    if l_row is not null then 
        pipe row(l_row); 
        -- debug_print('5', l_row);
        null;
    end if; 
end parse_pdf_table_okinawa;
/
