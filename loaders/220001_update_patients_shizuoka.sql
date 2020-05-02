create or replace procedure UPDATE_PATIENTS_SHIZUOKA(
    P_MUNICIPALITY_CODE IN NUMBER DEFAULT 220001,
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
            to_number(regexp_replace(col001, '([0-9]+)例目','\1')) as LINE_NO,
            p_municipality_code as "全国地方公共団体コード",
            '静岡県' as "都道府県名",
            to_date(regexp_replace(substr(col004,1,12),'^【(\d+月\d+日)】.+','\1',1,1),'MM"月"DD"日"') as "公表_年月日",
            to_char(to_date(regexp_replace(substr(col004,1,12),'^【(\d+月\d+日)】.+','\1',1,1),'MM"月"DD"日"'),'DY') as "曜日",
            normalize_text(col003) as "患者_居住地",
            case when instr(col002, '女性') > 0 then
                normalize_age(replace(col002,'女性'))
            when instr(col002, '男性') > 0 then
                normalize_age(replace(col002, '男性'))
            else
                normalize_age(col002)
            end as "患者_年代",
            case when instr(col002, '女性') > 0 then
                '女性'
            when instr(col002, '男性') > 0 then
                '男性'
            end as "患者_性別",
            case when col005 = '〇' then
                1
            else
                0
            end as "患者_退院済フラグ"
        from table(
            parse_html_table_shizuoka(
                p_html => get_content_c(
                    p_municipality_code,
                    p_url,
                    p_cache,
                    'AL32UTF8'
                )
            )
        ) where regexp_like(col001, '^[0-9]+例目')
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
    -- 更新マークを現在時刻にする。
    mark_update(p_municipality_code => p_municipality_code);
    commit;
end UPDATE_PATIENTS_SHIZUOKA;
