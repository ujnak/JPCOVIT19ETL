create or replace procedure UPDATE_PATIENTS_KANAGAWA(
    P_MUNICIPALITY_CODE IN NUMBER DEFAULT 140007,
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
    -- 神奈川のデータはNoがないので行を特定できない。なので削除/挿入で全入れ替え。
    delete from covid19_patients where "全国地方公共団体コード" = p_municipality_code;
    insert into covid19_patients(
        LINE_NO,"全国地方公共団体コード","都道府県名","公表_年月日","曜日",
        "患者_居住地","患者_年代","患者_性別"
    )
    select
        rownum as LINE_NO,
        p_municipality_code as "全国地方公共団体コード",
        '神奈川県' as "都道府県名",
        normalize_date(col001) as "公表_年月日",
        to_char(normalize_date(col001), 'DY') as "曜日", 
        normalize_text(col002) as "患者_居住地",
        normalize_age(col003) as "患者_年代",
        normalize_sex(col004) as "患者_性別"
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
    );
    -- 更新マークを現在時刻にする。
    mark_update(p_municipality_code => p_municipality_code);
    commit;
end UPDATE_PATIENTS_KANAGAWA;