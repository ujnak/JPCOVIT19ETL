/*
 * 島根県はプレーンなHTML
 */
create or replace procedure UPDATE_PATIENTS_SHIMANE(
    P_MUNICIPALITY_CODE IN NUMBER DEFAULT 320005,
    P_URL IN VARCHAR2,
    P_CACHE IN NUMBER DEFAULT 0
)
as
    pragma autonomous_transaction;
begin
    merge into covid19_patients p
    using
    (
        select
            to_number(col001) as LINE_NO,
            p_municipality_code as "全国地方公共団体コード",
            '島根県' as "都道府県名",
            normalize_date(col002) as "公表_年月日",
            to_char(normalize_date(col002),'DY') as "曜日",
            normalize_text(col005) as "患者_居住地",
            normalize_age(col003) as "患者_年代",
            normalize_sex(col004) as "患者_性別",
            case when col006 = '退院' then
                1
            else
                null
            end as "患者_退院済フラグ"
        from table(
            parse_html_shimane(
                p_html => get_content_c(
                p_municipality_code,
                p_url,
                p_cache,
                'AL32UTF8'
                )
            )
        )
        minus
        select
            LINE_NO,"全国地方公共団体コード","都道府県名",
            "公表_年月日","曜日","患者_居住地","患者_年代","患者_性別",
            "患者_退院済フラグ"
        from covid19_patients
        where "全国地方公共団体コード" = p_municipality_code
    ) n
    on (p.LINE_NO = n.LINE_NO and p."全国地方公共団体コード" = n."全国地方公共団体コード")
    when matched then
        update set
            p."公表_年月日" = n."公表_年月日",
            p."曜日" = n."曜日",
            p."患者_居住地" = n."患者_居住地",
            p."患者_年代" = n."患者_年代",
            p."患者_性別" = n."患者_性別",
            p."患者_退院済フラグ" = n."患者_退院済フラグ"
    when not matched then
        insert(
            LINE_NO, "全国地方公共団体コード","都道府県名",
            "公表_年月日","曜日","患者_居住地","患者_年代","患者_性別",
            "患者_退院済フラグ"
        )
        values(
            n.LINE_NO, n."全国地方公共団体コード", n."都道府県名",
            n."公表_年月日",n."曜日",n."患者_居住地",n."患者_年代",n."患者_性別",
            n."患者_退院済フラグ"
        );
    commit;
end UPDATE_PATIENTS_SHIMANE;
/
