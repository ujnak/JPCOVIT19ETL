create or replace procedure UPDATE_PATIENTS_NARA( 
    P_MUNICIPALITY_CODE IN NUMBER DEFAULT 290009, 
    P_URL IN VARCHAR2, 
    P_CACHE IN NUMBER DEFAULT 0 
) 
as 
    pragma autonomous_transaction; 
    l_file_name varchar2(200) := 'dummy.xlsx'; 
begin 
    if p_cache = 0 then 
        l_file_name := substr(p_url,instr(p_url,'/',-1)+1); 
    end if; 
    merge into covid19_patients p 
    using 
    ( 
        select 
            to_number(col001) as LINE_NO, 
            to_number(col002) as "全国地方公共団体コード", 
            col003 as "都道府県名", 
            normalize_date(col004) as "公表_年月日", 
            to_char(normalize_date(col004),'DY') as "曜日", 
            normalize_date(col005) as "発症_年月日", 
            normalize_text(col006) as "患者_居住地",  
            normalize_age(col007)  as "患者_年代", 
            normalize_sex(col008)  as "患者_性別",  
            col009 as "備考" 
        from table( 
            apex_data_parser.parse( 
                p_content => get_content_b( 
                p_municipality_code, 
                p_url, 
                p_cache 
                ), 
                p_file_name => l_file_name, 
                p_skip_rows => 2 
            ) 
        ) where col001 is not null 
        minus
        select  
            LINE_NO,"全国地方公共団体コード","都道府県名","公表_年月日","曜日", 
            "発症_年月日","患者_居住地","患者_年代","患者_性別","備考" 
        from covid19_patients 
        where "全国地方公共団体コード" = p_municipality_code 
    ) n 
    on (p.LINE_NO = n.LINE_NO and p."全国地方公共団体コード" = n."全国地方公共団体コード") 
    when matched then 
        update set 
            p."公表_年月日" = n."公表_年月日", 
            p."曜日" = n."曜日", 
            p."発症_年月日" = n."発症_年月日", 
            p."患者_居住地" = n."患者_居住地", 
            p."患者_年代" = n."患者_年代", 
            p."患者_性別" = n."患者_性別", 
            p."備考" = n."備考"           
    when not matched then 
        insert( 
            LINE_NO,"全国地方公共団体コード","都道府県名","公表_年月日","曜日", 
            "発症_年月日","患者_居住地","患者_年代","患者_性別","備考" 
        ) 
        values( 
            n.LINE_NO,n."全国地方公共団体コード",n."都道府県名",n."公表_年月日",n."曜日", 
            n."発症_年月日",n."患者_居住地",n."患者_年代",n."患者_性別",n."備考" 
        ); 
    commit; 
end UPDATE_PATIENTS_NARA; 
