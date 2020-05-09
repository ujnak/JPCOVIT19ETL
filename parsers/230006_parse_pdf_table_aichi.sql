create or replace function parse_pdf_table_aichi( 
  P_MUNICIPALITY_CODE IN NUMBER DEFAULT 230006, 
  P_URL IN VARCHAR2, 
  P_CACHE IN NUMBER DEFAULT 1 
) 
return t_table pipelined 
as  
    l_columns apex_t_varchar2; 
    l_line    varchar2(1000); 
    l_parsed  varchar2(1000); 
    l_row t_table_row := null; 
    l_file_name varchar2(200) := 'dummy.xlsx'; 
    l_age  varchar2(80);
    l_sex  varchar2(80);
    l_home varchar2(80);
    --
    procedure debug_print(
        p_rule varchar2,
        p_row t_table_row
    )
    is
    begin
        dbms_output.put_line('Rule:' || p_rule
            || ' No:' || p_row.col001 || ' Date:' || p_row.col002 || ' Age:' || p_row.col003
            || ' Sex:' || p_row.col004 || ' Home:' || p_row.col005);
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
               p_skip_rows => 3 
            ) 
        ) 
    ) 
    loop 
        l_line := r.col001; 
        l_line := replace(l_line,'_x000C_');
        l_line := to_single_byte(l_line); 
        l_line := trim(l_line);
        l_age := null; l_sex := null; l_home := null;
        -- 10       2月21日 70代男性     日本    名古屋市    No.4と接触          名古屋市発表5
        l_parsed := regexp_replace(l_line,  
            '(\d+)\s+(\S+)\s+(\S+)\s+(\w+)\s+(\w+)\s+.*', 
            '\1:\2:\3:\4:\5', 1, 1);
        if l_line != l_parsed then -- 正規表現が一致している 
            --  dbms_output.put_line(l_line);
            if l_row is not null then
                pipe row(l_row); l_row := null;
                -- debug_print('1',l_row); l_row := null;
            end if; 
            l_columns := apex_string.split(l_parsed,':');
            if instr(l_columns(3),'男性') > 0 then
                l_age := replace(l_columns(3),'男性');
                l_sex := '男性';
            elsif instr(l_columns(3),'女性') > 0 then
                l_age := replace(l_columns(3),'女性');
                l_sex := '女性';
            end if;
            if l_columns(4) = '日本' then
                l_home := l_columns(5);
            else
                l_home := l_columns(4);
            end if;
            l_row := t_table_row( 
                l_columns(1), l_columns(2), l_age, l_sex, l_home, 
                null, null, null, null, null, 
                null, null, null, null, null, 
                null, null, null, null, null 
            ); 
            continue;  
        end if; 
        -- 99    3月10日           日本    名古屋市                       名古屋市発表81
        l_parsed := regexp_replace(l_line,  
            '(\d+)\s+(\S+)\s+(\w+)\s+(\w+)\s+.*', 
            '\1:\2:\3:\4:\5', 1, 1);
        if l_line != l_parsed then -- 正規表現が一致している 
            -- dbms_output.put_line(l_line);
            l_age := null; l_sex := null; l_home := null;
            if l_row is not null then
                pipe row(l_row); l_row := null;
                -- debug_print('2',l_row); l_row := null;
            end if; 
            l_columns := apex_string.split(l_parsed,':');
            if instr(l_columns(3),'男性') > 0 then
                l_age := replace(l_columns(3),'男性');
                l_sex := '男性';
                if l_columns(4) = '日本' then
                    l_home := l_columns(5);
                else
                    l_home := l_columns(4);
                end if;
            elsif instr(l_columns(3),'女性') > 0 then
                l_age := replace(l_columns(3),'女性');
                l_sex := '女性';
                if l_columns(4) = '日本' then
                    l_home := l_columns(5);
                else
                    l_home := l_columns(4);
                end if;
            elsif l_columns(3) = '日本' then
                l_home := l_columns(4);
            else
                l_home := l_columns(3);
            end if;       
            l_row := t_table_row( 
                l_columns(1), l_columns(2), l_age, l_sex, l_home, 
                null, null, null, null, null, 
                null, null, null, null, null, 
                null, null, null, null, null 
            ); 
            continue;  
        end if; 
    end loop; 
    if l_row is not null then 
        pipe row(l_row);
        -- debug_print('1',l_row); l_row := null;
    end if; 
end parse_pdf_table_aichi; 
/
