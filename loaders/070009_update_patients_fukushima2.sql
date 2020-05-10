create or replace procedure UPDATE_PATIENTS_FUKUSHIMA2( 
    P_MUNICIPALITY_CODE IN NUMBER DEFAULT 070009, 
    P_URL IN VARCHAR2, 
    P_CACHE IN NUMBER DEFAULT 0 
) 
as 
    pragma autonomous_transaction;
    l_file_name varchar2(200) := 'dummy.csv';
begin
    if p_cache = 0 then
        l_file_name := substr(p_url,instr(p_url,'/',-1)+1);
    end if;
    merge into covid19_patients p
    using
    (
        select
            case when regexp_like(col001, '^\d+$') then
                to_number(col001)
            else
              null
            end as LINE_NO,
            case when regexp_like(col002, '^\d+$') then
                to_number(col002)
            else
                null
            end as "全国地方公共団体コード",
            col003 as "都道府県名", col004 as "市区町村名",
            normalize_date(col005) as "公表_年月日",
            to_char(normalize_date(col005),'DY') as "曜日",
            normalize_date(col006) as "発症_年月日",
            normalize_text(col007) as "患者_居住地",
            normalize_age(col008)  as "患者_年代",
            normalize_sex(col009)  as "患者_性別",
            col010 as "患者_職業",
            col011 as "患者_状態",
            col012 as "患者_症状",
            normalize_flag(col013) as "患者_渡航歴の有無フラグ",
            col016 as "備考",
            normalize_flag(col014) as "患者_退院済フラグ",
            normalize_flag(col015) as "患者_死亡フラグ"
        from table(
            apex_data_parser.parse(
                p_content => get_content_b(
                p_municipality_code,
                p_url,
                p_cache
                ),
                p_file_name => l_file_name,
                p_skip_rows => 1,
                p_file_charset => 'JA16SJIS'
            )
        )
        minus
        select 
            LINE_NO,"全国地方公共団体コード","都道府県名","市区町村名","公表_年月日","曜日",
            "発症_年月日","患者_居住地","患者_年代","患者_性別","患者_職業","患者_状態",
            "患者_症状","患者_渡航歴の有無フラグ","備考","患者_退院済フラグ","患者_死亡フラグ"
        from covid19_patients
        where "全国地方公共団体コード" = p_municipality_code
    ) n
    on (p.LINE_NO = n.LINE_NO and p."全国地方公共団体コード" = n."全国地方公共団体コード")
    when matched then
        update set
            p."市区町村名" = n."市区町村名",
            p."公表_年月日" = n."公表_年月日",
            p."曜日" = n."曜日",
            p."発症_年月日" = n."発症_年月日",
            p."患者_居住地" = n."患者_居住地",
            p."患者_年代" = n."患者_年代",
            p."患者_性別" = n."患者_性別",
            p."患者_職業" = n."患者_職業",
            p."患者_状態" = n."患者_状態",
            p."患者_症状" = n."患者_症状",
            p."患者_渡航歴の有無フラグ" = n."患者_渡航歴の有無フラグ",
            p."備考" = n."備考",
            p."患者_退院済フラグ" = n."患者_退院済フラグ",
            p."患者_死亡フラグ" = n."患者_死亡フラグ"
    when not matched then
        insert(
            LINE_NO, "全国地方公共団体コード","都道府県名","市区町村名",
            "公表_年月日","曜日","発症_年月日","患者_居住地","患者_年代",
            "患者_性別","患者_職業","患者_状態","患者_症状",
            "患者_渡航歴の有無フラグ","備考","患者_退院済フラグ","患者_死亡フラグ"
        )
        values(
            n.LINE_NO, n."全国地方公共団体コード", n."都道府県名",n."市区町村名",
            n."公表_年月日",n."曜日",n."発症_年月日",n."患者_居住地",n."患者_年代",
            n."患者_性別",n."患者_職業",n."患者_状態",n."患者_症状",
            n."患者_渡航歴の有無フラグ",n."備考",n."患者_退院済フラグ",n."患者_死亡フラグ"
        );
    commit;
end UPDATE_PATIENTS_FUKUSHIMA2;
/

