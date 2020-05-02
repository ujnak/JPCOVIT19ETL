/*
 * 青森県のデータを取り込む。
 *
 * 形式: CSV
 */
create or replace procedure UPDATE_PATIENTS_AOMORI(
    P_MUNICIPALITY_CODE IN NUMBER DEFAULT 20001,
    P_URL IN VARCHAR2,
    P_CACHE IN NUMBER DEFAULT 0
)
as
    pragma autonomous_transaction;
    l_munics munics_t;
    l_file_name varchar2(200) := substr(p_url,instr(p_url,'/',-1)+1);
begin
    -- 変更対象の地方自治体情報をロック。
    select "全国地方公共団体コード" bulk collect into l_munics from covid19_patients 
    where "全国地方公共団体コード" = p_municipality_code for update nowait;
    -- 取得したデータのうち、変更分のみを適用。
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
            col003 as "都道府県名",
            col004 as "市区町村名",
            normalize_date(col005) as "公表_年月日",
            to_char(normalize_date(col005),'DY') as "曜日",
            normalize_text(col007) as "患者_居住地", 
            normalize_age(col008)  as "患者_年代",
            normalize_sex(col009)  as "患者_性別"
        from table(
            apex_data_parser.parse(
                p_content => get_content_b(
                p_municipality_code,
                p_url,
                p_cache
                ),
                p_file_name => l_file_name,
                p_file_charset => 'JA16SJIS',
                p_skip_rows => 1
            )
        ) where col001 is not null
        minus
        select 
            LINE_NO,"全国地方公共団体コード","都道府県名","市区町村名","公表_年月日","曜日",
            "患者_居住地","患者_年代","患者_性別"
        from covid19_patients
        where "全国地方公共団体コード" = p_municipality_code
    ) n
    on (p.LINE_NO = n.LINE_NO and p."全国地方公共団体コード" = n."全国地方公共団体コード")
    when matched then
        update set
            p."市区町村名" = n."市区町村名",
            p."公表_年月日" = n."公表_年月日",
            p."曜日" = n."曜日",
            p."患者_居住地" = n."患者_居住地",
            p."患者_年代" = n."患者_年代",
            p."患者_性別" = n."患者_性別"
    when not matched then
        insert(
            LINE_NO,"全国地方公共団体コード","都道府県名","市区町村名",
            "公表_年月日","曜日","患者_居住地","患者_年代","患者_性別"
        )
        values(
            n.LINE_NO,n."全国地方公共団体コード",n."都道府県名",n."市区町村名",
            n."公表_年月日",n."曜日",n."患者_居住地",n."患者_年代",n."患者_性別"
        );
    -- 更新マークを現在時刻にする。
    mark_update(p_municipality_code => p_municipality_code);
    commit;
end UPDATE_PATIENTS_AOMORI;