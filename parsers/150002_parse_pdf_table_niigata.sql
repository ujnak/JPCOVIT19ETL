create or replace function parse_pdf_table_niigata(
  P_MUNICIPALITY_CODE IN NUMBER DEFAULT 150002,
  P_URL IN VARCHAR2,
  P_CACHE IN NUMBER DEFAULT 1
)
return t_table pipelined
as 
    l_columns apex_t_varchar2;
    l_prev    varchar2(1000);
    l_prev2   varchar2(1000);
    l_line    varchar2(1000);
    l_parsed  varchar2(1000);
    l_row t_table_row := null;
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
               p_skip_rows => 4
            )
        )
    )
    loop
        if instr(r.col001, '新潟県内における') > 0 then
            continue;
        end if;
        if instr(r.col001, '判明日') > 0 then
            continue;
        end if;        
        l_line := r.col001;
        l_line := replace(l_line, '_x000C_');
        l_line := translate(l_line,'０１２３４５６７８９　','0123456789 ');
        l_line := replace(l_line, chr(10));
        l_line := replace(l_line, chr(12));
        l_line := trim(l_line);
        -- 患者2        新潟県１例目   3月2日       40歳代      男性     加茂市      会社員
        l_parsed := regexp_replace(l_line,
            '患者(\d+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\w+)\s+(\w+)\s+(\S+)\s*',
            '\1:\2:\3:\4:\5:\6:\7',1,1);
        if l_line != l_parsed then
            if l_row is not null then
                pipe row(l_row); l_row := null;
            end if;
            l_columns := apex_string.split(l_parsed, ':');
            l_row := t_table_row(
                l_columns(1), l_columns(3), l_columns(4), l_columns(5), l_columns(6),
                l_columns(7),
                null, null, null, null,
                null, null, null, null, null,
                null, null, null, null, null
            );
            continue;
        end if;
        -- 患者1  新潟市１例目   2月29日   60歳代   男性         無職
        l_parsed := regexp_replace(l_line, 
            '患者(\d+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\w+)\s+(\S+)\s*',
            '\1:\2:\3:\4:\5:\6', 1, 1);
        if l_line != l_parsed then -- 正規表現が一致している
            if l_row is not null then
                pipe row(l_row); l_row := null;
            end if;
            l_columns := apex_string.split(l_parsed,':');
            l_row := t_table_row(
                l_columns(1), l_columns(3), l_columns(4), l_columns(5), l_prev,
                l_columns(6),
                null, null, null, null,
                null, null, null, null, null,
                null, null, null, null, null
            );
            l_prev := null;
            continue; 
        end if;
        -- 患者7        新潟市６例目   3月9日       50歳代      女性
        l_parsed := regexp_replace(l_line,
            '患者(\d+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\w+)\s*',
            '\1:\2:\3:\4:\5',1,1);
        if l_line != l_parsed then
            if l_row is not null then
                pipe row(l_row); l_row := null;
            end if;
            l_columns := apex_string.split(l_parsed, ':');
            l_row := t_table_row(
                l_columns(1), l_columns(3), l_columns(4), l_columns(5), l_prev,
                l_prev2,
                null, null, null, null,
                null, null, null, null, null,
                null, null, null, null, null
            );
            l_prev  := null;
            l_prev2 := null;
            continue;
        end if;
        -- データ行でなく、セルに複数行含まれているときの対応を行う。
        if l_row is not null then
            l_parsed := regexp_replace(l_line, '(\S+)\s+(\S+)\s*', '\1:\2',1,1);
            if l_parsed != l_line then
                l_columns := apex_string.split(l_parsed, ':');
                l_row.col005 := l_row.col005 || l_columns(1);
                l_row.col006 := l_row.col006 || l_columns(2);
            elsif l_line is not null then
                l_row.col005 := l_row.col005 || l_line;
            end if;
        end if;
        if l_row is not null then
            pipe row(l_row); l_row := null;
        end if;
        l_parsed := regexp_replace(l_line, '(\S+)\s+(\S+)\s*', '\1:\2',1,1);
        if l_parsed != l_line then
            l_columns := apex_string.split(l_parsed, ':');
            l_prev  := l_columns(1);
            l_prev2 := l_columns(2);
        elsif l_line is not null then
            l_prev  := l_line;
            l_prev2 := null;
        end if;
    end loop;
    if l_row is not null then
        pipe row(l_row);
    end if;
end parse_pdf_table_niigata;
/
