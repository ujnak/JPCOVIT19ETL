create or replace function parse_pdf_table_miyazaki(
  P_MUNICIPALITY_CODE IN NUMBER DEFAULT 450006,
  P_URL IN VARCHAR2,
  P_CACHE IN NUMBER DEFAULT 1
)
return t_table pipelined
as 
    l_columns apex_t_varchar2;
    l_line    varchar2(1000);
    l_parsed  varchar2(1000);
    l_row t_table_row := null;
    l_file_name varchar2(200) := substr(p_url,instr(p_url,'/',-1)+1);
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
               p_skip_rows => 8
            )
        )
    )
    loop
        if instr(r.col001, '無症状病原体保有者') > 0 then
            exit;
        end if;
        if instr(r.col001, 'ページ') > 0 then
            continue;
        end if;
        l_line := r.col001;
        l_line := replace(l_line, '_x000C_');
        l_line := translate(l_line,'０１２３４５６７８９　','0123456789 ');
        l_line := replace(l_line, chr(10));
        l_line := replace(l_line, chr(12));        
        l_line := trim(l_line);
        -- 1      1     3月4日    70代   男性   宮崎市    4月4日退院       なし
        l_parsed := regexp_replace(l_line, 
            '(\d+)\s+(\d+)\s+(\S+)\s+(\S+)\s+(\w+)\s+(\w+)\s+(\S+)\s+(\S+)\s*',
            '\1:\2:\3:\4:\5:\6:\7:\8', 1, 1);
        if l_line != l_parsed then -- 正規表現が一致している
            if l_row is not null then
                pipe row(l_row); l_row := null;
            end if;
            l_columns := apex_string.split(l_parsed,':');
            l_row := t_table_row(
                l_columns(1), l_columns(3), l_columns(4), l_columns(5), l_columns(6),
                l_columns(7),
                null, null, null, null,
                null, null, null, null, null,
                null, null, null, null, null
            );
            continue; 
        end if;
        -- 4            4月3日    50代   男性   延岡市    4月13日退院      なし    なし
        l_parsed := regexp_replace(l_line, 
            '(\d+)\s+(\S+)\s+(\S+)\s+(\w+)\s+(\w+)\s+(\S+)\s+(\S+)\s+(\S+)\s*',
            '\1:\2:\3:\4:\5:\6:\7:\8', 1, 1);
        if l_line != l_parsed then -- 正規表現が一致している
            if l_row is not null then
                pipe row(l_row); l_row := null;
            end if;
            l_columns := apex_string.split(l_parsed,':');
            l_row := t_table_row(
                l_columns(1), l_columns(2), l_columns(3), l_columns(4), l_columns(5),
                l_columns(6),
                null, null, null, null,
                null, null, null, null, null,
                null, null, null, null, null
            );
            continue; 
        end if;
        -- 2            3月17日   20代   男性    英国    3月31日退院      なし
        l_parsed := regexp_replace(l_line,
            '(\d+)\s+(\S+)\s+(\S+)\s+(\w+)\s+(\w+)\s+(\S+)\s+(\S+)\s*',
            '\1:\2:\3:\4:\5:\6:\7',1,1);
        if l_line != l_parsed then
            if l_row is not null then
                pipe row(l_row); l_row := null;
            end if;
            l_columns := apex_string.split(l_parsed, ':');
            l_row := t_table_row(
                l_columns(1), l_columns(2), l_columns(3), l_columns(4), l_columns(5),
                l_columns(6),
                null, null, null, null,
                null, null, null, null, null,
                null, null, null, null, null
            );
            continue;
        end if;
        -- 宮崎県は番号のある行以外は取り込まない。
    end loop;
    if l_row is not null then
        pipe row(l_row);
    end if;
end parse_pdf_table_miyazaki;
