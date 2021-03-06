/*
 * 山形県は表形式のHTML
 */
create or replace procedure UPDATE_PATIENTS_YAMAGATA(
    P_MUNICIPALITY_CODE IN NUMBER DEFAULT 60003,
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
            to_number(regexp_replace(col001,'第(\d+)例', '\1')) as LINE_NO,
            p_municipality_code as "全国地方公共団体コード",
            '山形県' as "都道府県名",
            normalize_text(col004) as "患者_居住地", 
            normalize_age(col002)  as "患者_年代",
            normalize_sex(col003)  as "患者_性別"
        from table(
            parse_html_table_yamagata(
                p_html => get_content_c(
                    p_municipality_code,
                    p_url,
                    p_cache,
                    'AL32UTF8'
                )
            )
        ) where regexp_like(col001,'第\d+例')
        minus
        select 
            LINE_NO,"全国地方公共団体コード","都道府県名",
            "患者_居住地","患者_年代","患者_性別"
        from covid19_patients
        where "全国地方公共団体コード" = p_municipality_code
    ) n
    on (p.LINE_NO = n.LINE_NO and p."全国地方公共団体コード" = n."全国地方公共団体コード")
    when matched then
        update set
            p."患者_居住地" = n."患者_居住地",
            p."患者_年代" = n."患者_年代",
            p."患者_性別" = n."患者_性別"
    when not matched then
        insert(
            LINE_NO, "全国地方公共団体コード","都道府県名",
            "患者_居住地","患者_年代","患者_性別"
        )
        values(
            n.LINE_NO, n."全国地方公共団体コード", n."都道府県名",
            n."患者_居住地",n."患者_年代",n."患者_性別"
        );
    commit;
end UPDATE_PATIENTS_YAMAGATA;
/
