create or replace function parse_pdf_table_gunma(
  P_MUNICIPALITY_CODE IN NUMBER DEFAULT 100005,
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
        l_line := translate(l_line,'０１２３４５６７８９','0123456789');
        l_line := replace(l_line, '　',' ');
        -- 15   １４１例目   R2.4.26   ８０代    高崎市     男性        無職
        l_parsed := regexp_replace(l_line,
            '\d+\s+(\S+)例目\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s*',
            '\1:\2:\3:\4:\5:\6',1,1);
        if l_line != l_parsed then -- 正規表現が一致している
            if l_row is not null then      -- 直前の行もデータ行なので出力する。
                pipe row(l_row); l_row := null; -- 二重出力を抑止
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
        -- １３９例目   R2.4.24   ６０代      高崎市    女性   飲食店従業員    １３５例目の濃厚接触者
        l_parsed := regexp_replace(l_line,
            '\s*(\d+)例目\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s*',
            '\1:\2:\3:\4:\5:\6:\7',1,1);
        if l_line != l_parsed then
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
        -- ８５例目   R2.4.12   ４０代      富岡市    男性     会社員
        l_parsed := regexp_replace(l_line,
            '\s*(\d+)例目\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s*',
            '\1:\2:\3:\4:\5:\6',1,1);
        if l_line != l_parsed then
            if l_row is not null then
                pipe row(l_row); l_row := null;
            end if;
            l_columns := apex_string.split(l_parsed,':');
            if l_columns(4) = '男性' or l_columns(4) = '女性' then
                l_row := t_table_row(
                    l_columns(1), l_columns(2), l_columns(3), null, l_columns(4), 
                    l_columns(5),
                    null, null, null, null,
                    null, null, null, null, null,
                    null, null, null, null, null
                );
            else
                l_row := t_table_row(
                    l_columns(1), l_columns(2), l_columns(3), l_columns(4), l_columns(5), 
                    l_columns(6),
                    null, null, null, null,
                    null, null, null, null, null,
                    null, null, null, null, null
                );
            end if;
            continue;
        end if;
        -- 2   １４２例目   R2.4.27   ２０代             男性    施設職員
        l_parsed := regexp_replace(l_line,
            '\s*\d+\s+(\d+)例目\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s*',
            '\1:\2:\3:\4:\5',1,1);
        if l_line != l_parsed then
            if l_row is not null then
                pipe row(l_row); l_row := null;
            end if;
            l_columns := apex_string.split(l_parsed,':');
            l_row := t_table_row(
                l_columns(1), l_columns(2), l_columns(3), null, l_columns(4), 
                l_columns(5),
                null, null, null, null,
                null, null, null, null, null,
                null, null, null, null, null
            );
            continue;
        end if;
        -- １３３例目   R2.4.22   ５０代             男性   診療放射線技師
        l_parsed := regexp_replace(l_line,
            '\s*(\d+)例目\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s*',
            '\1:\2:\3:\4:\5',1,1);
        if l_line != l_parsed then
            if l_row is not null then
                pipe row(l_row); l_row := null;
            end if;
            l_columns := apex_string.split(l_parsed,':');
            l_row := t_table_row(
                l_columns(1), l_columns(2), l_columns(3), null, l_columns(4), 
                l_columns(5),
                null, null, null, null,
                null, null, null, null, null,
                null, null, null, null, null
            );
            continue;
        end if;
        -- データ行でなく、セルに複数行含まれているときの対応を行う。
        l_next := l_line;
        if l_row is not null then
            if l_row.col004 is null then -- 居住地がnullであれば前後を居住地とする
                l_row.col004 := l_prev || l_next;
            end if;
            pipe row(l_row); l_row := null;
        end if;
        l_prev := l_line;
    end loop;
    if l_row is not null then
        pipe row(l_row);
    end if;
end parse_pdf_table_gunma;
/
