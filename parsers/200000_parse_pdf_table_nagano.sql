create or replace function parse_pdf_table_nagano(
  P_MUNICIPALITY_CODE IN NUMBER DEFAULT 200000,
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
    l_job      varchar2(1000);
    l_home     varchar2(1000);
    l_hospital varchar2(1000);
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
        l_line := r.col001;
        l_line := replace(l_line, '_x000C_');
        l_line := translate(l_line,'０１２３４５６７８９　','0123456789 ');
        l_line := replace(l_line, chr(10));
        l_line := replace(l_line, chr(12));        
        l_line := trim(l_line);
        -- 9   1    患者  4月1日 30代   女性 長野市  退院   イギリス ○  ○
        l_parsed := regexp_replace(l_line, 
            '(\d+)\s+(\d+)\s+(\w+)\s+(\S+)\s+(\S+)\s+(\w+)\s+(\S+)\s+(\S+)\s+.*',
            '\1:\2:\3:\4:\5:\6:\7:\8', 1, 1);
        if l_line != l_parsed then -- 正規表現が一致している
            if l_row is not null then
                pipe row(l_row); l_row := null;
            end if;
            l_columns := apex_string.split(l_parsed,':');
            if to_number(l_columns(1)) > 13 then -- 長野県の特殊な事情
                l_job  := l_columns(7);
                l_home := l_columns(8);
            else
                l_job := null;
                l_home := l_columns(7);
            end if;
            if instr(l_line, '退院') > 0 then
                l_hospital := '退院';
            else
                l_hospital := null;
            end if;            
            l_row := t_table_row(
                l_columns(1), l_columns(4), l_columns(5), l_columns(6), l_home,
                l_job, l_hospital,
                null, null, null,
                null, null, null, null, null,
                null, null, null, null, null
            );
            continue; 
        end if;
        -- 2   無症状病原体保有者   2月26日 50代   女性 松本保健所管内  退院 1例目の妻   なし
        l_parsed := regexp_replace(l_line, 
            '(\d+)\s+(\w+)\s+(\S+)\s+(\S+)\s+(\w+)\s+(\S+)\s+(\S+)\s+.*',
            '\1:\2:\3:\4:\5:\6:\7', 1, 1);
        if l_line != l_parsed then -- 正規表現が一致している
            if l_row is not null then
                pipe row(l_row); l_row := null;
            end if;
            l_columns := apex_string.split(l_parsed,':');
            if to_number(l_columns(1)) > 13 then -- 長野県の特殊な事情
                l_job  := l_columns(6);
                l_home := l_columns(7);
            else
                l_job  := null;
                l_home := l_columns(6);
            end if;
            if instr(l_line, '退院') > 0 then
                l_hospital := '退院';
            else
                l_hospital := null;
            end if;
            l_row := t_table_row(
                l_columns(1), l_columns(3), l_columns(4), l_columns(5), l_home,
                l_job, l_hospital,
                null, null, null,
                null, null, null, null, null,
                null, null, null, null, null
            );
            continue; 
        end if;
        -- 10             患者        4月3日 20代    男性             大町保健所管内
        l_parsed := regexp_replace(l_line, 
            '(\d+)\s+(\w+)\s+(\S+)\s+(\S+)\s+(\w+)\s+(\w+).*',
            '\1:\2:\3:\4:\5:\6', 1, 1);
        if l_line != l_parsed then -- 正規表現が一致している
            if l_row is not null then
                pipe row(l_row); l_row := null;
            end if;
            l_columns := apex_string.split(l_parsed,':');
            if instr(l_line, '退院') > 0 then
                l_hospital := '退院';
            else
                l_hospital := null;
            end if;
            l_row := t_table_row(
                l_columns(1), l_columns(3), l_columns(4), l_columns(5), l_columns(6),
                null, l_hospital,
                null, null, null,
                null, null, null, null, null,
                null, null, null, null, null
            );
            continue; 
        end if;       
        -- 長野県は番号のある行以外は取り込まない。
    end loop;
    if l_row is not null then
        pipe row(l_row);
    end if;
end parse_pdf_table_nagano;
/
