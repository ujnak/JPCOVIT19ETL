create or replace procedure UPDATE_PATIENTS_OKAYAMA2( 
    P_MUNICIPALITY_CODE IN NUMBER DEFAULT 330001, 
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
    -- 岡山のデータはNoがないので行を特定できない。なので削除/挿入で全入れ替え。 
    delete from covid19_patients where "全国地方公共団体コード" = p_municipality_code; 
    insert into covid19_patients( 
        LINE_NO,"全国地方公共団体コード","都道府県名","市区町村名","公表_年月日","曜日", 
        "患者_居住地","患者_年代","患者_性別" 
    ) 
    select 
        rownum as LINE_NO, 
        to_number(col001) as "全国地方公共団体コード", 
        col002 as "都道府県名",
        col003 as "市区町村名",
        normalize_date(col004) as "公表_年月日", 
        to_char(normalize_date(col004), 'DY') as "曜日",  
        normalize_text(col006) as "患者_居住地", 
        normalize_age(col007) as "患者_年代",
        normalize_sex(col008) as "患者_性別"
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
    commit; 
end UPDATE_PATIENTS_OKAYAMA2; 
/


