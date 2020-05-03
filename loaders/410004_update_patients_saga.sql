create or replace procedure UPDATE_PATIENTS_SAGA(
    P_MUNICIPALITY_CODE IN NUMBER DEFAULT 410004,
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
            to_number(col001) as LINE_NO,
            p_municipality_code as "全国地方公共団体コード",
            '佐賀県' as "都道府県名",
            case when instr(col004,'在住') > 0 then
                replace(col004,'在住')
            else
                col004
            end as "患者_居住地",
            normalize_age(col002) as "患者_年代",
            normalize_sex(col003) as "患者_性別"
        from table(
            parse_html_saga(
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
    -- 更新マークを現在時刻にする。
    mark_update(p_municipality_code => p_municipality_code);
    commit;
end UPDATE_PATIENTS_SAGA;
