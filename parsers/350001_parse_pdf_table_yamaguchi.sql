create or replace function parse_pdf_table_yamaguchi(
  P_MUNICIPALITY_CODE IN NUMBER DEFAULT 350001,
  P_URL IN VARCHAR2,
  P_CACHE IN NUMBER DEFAULT 1
)
return t_table pipelined
as 
    l_columns apex_t_varchar2;
    l_line    varchar2(1000);
    l_parsed  varchar2(1000);
    l_row t_table_row := null;
    l_start   number;
    l_file_name varchar2(200) := 'dummy.xlsx';
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
        l_line := translate(r.col001,'０１２３４５６７８９　','0123456789 ');
        l_parsed := regexp_replace(l_line,
            '^(\d+)\s+(\d+/\d+)\s+(年\s*代)\s+(\S+).*',
            '\1:\2:\3:\4',1,1);
        if l_line != l_parsed then
            if l_row is not null then
                pipe row(l_row);
            end if;
            l_columns := apex_string.split(l_parsed, ':');
            l_row := t_table_row(
                l_columns(1), l_columns(2), l_columns(4),
                null, null,
                null, null, null, null, null,
                null, null, null, null, null,
                null, null, null, null, null
            );
            continue;
        end if;
        l_start := regexp_instr(l_line, '性\s*別');
        if l_start > 0 then
            l_line := substr(l_line, l_start);
            l_parsed := regexp_replace(l_line,
                '性\s*別\s+(\w+\s*\w+)\s+.*',
                '\1',1,1);
            if l_line != l_parsed then
                l_row.col004 := replace(l_parsed, ' ');
                continue;
            end if;
        end if;
        l_start := instr(l_line, '居住地');
        if l_start > 0 then
            l_line := substr(l_line, l_start);
            l_parsed := regexp_replace(l_line,
                '居住地\s+(\S+)\s*(\S+)?.*',
                '\1:\2',1,1);
            if l_line != l_parsed then
                l_columns := apex_string.split(l_parsed, ':');
                if length(l_columns(1)) = 1 then
                    l_row.col005 := l_columns(1) || l_columns(2);
                else
                    l_row.col005 := l_columns(1);
                end if;
            end if;
            continue;
        end if;
        l_start := regexp_instr(l_line, '職\s*業');
        if l_start > 0 then
            l_line := substr(l_line, l_start);
            l_parsed := regexp_replace(l_line,
                '職\s*業\s+(\S+)\s*(\S+)?.*',
                '\1:\2',1,1);
            if l_line != l_parsed then
                l_columns := apex_string.split(l_parsed, ':');
                if length(l_columns(1)) = 1 and l_columns(1) != '－' then
                    l_row.col006 := l_columns(1) || l_columns(2);
                else
                    l_row.col006 := l_columns(1);
                end if;
            end if;
            if instr(l_line, '退院済') > 0 then
                l_row.col007 := '退院';
            elsif instr(l_line, '入院済') > 0 then
                l_row.col007 := '入院中';
            else
                l_row.col007 := null;
            end if;
            continue;
        end if;
    end loop;
    if l_row is not null then
        pipe row(l_row);
    end if;
end parse_pdf_table_yamaguchi;
/
