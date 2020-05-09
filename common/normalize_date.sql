create or replace FUNCTION normalize_date (
p_value IN varchar2) RETURN date IS
BEGIN
    RETURN
    case
    when regexp_like(p_value, '^\d+月\d+日\(\w曜日\)$') then
        to_date(substr(p_value,1,instr(p_value,'(')-1), 'MM"月"DD"日')
    when regexp_like(p_value, '^\d+月\d+日\(\w\)$') then
        to_date(substr(p_value,1,instr(p_value,'(')-1), 'MM"月"DD"日')
    when regexp_like(p_value, '^\d{4}[/-]\d{1,2}[/-]\d{1,2}\w\d{1,2}[:]\d{1,2}$') then
        to_date(p_value, 'YYYY-MM-DD"T"HH24:MI')
    when regexp_like(p_value,'^令和\d+年\d+月\d+日$') then
        from_reiwa(p_value) 
    when regexp_like(p_value, '^R\d+\.\d+\.\d+$') then
        from_reiwa2(p_value)
    when regexp_like(p_value,'^\d+年\d+月\d+日$') then
        to_date(p_value,'YYYY"年"MM"月"DD"日"')   
    when regexp_like(p_value, '^\d{4}[/-]\d{1,2}[/-]\d{1,2}$') then
        to_date(p_value, 'YYYY-MM-DD')
    when regexp_like(p_value, '^\s*\d+月\s*\d+日\s*$') then
        to_date(p_value, 'MM"月"DD"日')
    when regexp_like(p_value,'^\s*\d+/\d+\s*$') then 
        to_date(p_value, 'MM/DD')
    when regexp_like(p_value,'^\s*\d+\s*$') then
        to_date('1900/01/01 00:00:00', 'YYYY/MM/DD HH24:MI:SS') - 2 + to_number(p_value)    
    else
        NULL
    end;
end;
/
