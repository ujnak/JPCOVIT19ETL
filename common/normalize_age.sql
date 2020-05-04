/*
 * 年代の表記をできるだけ統一する。
 */
create or replace function "NORMALIZE_AGE"
(p_value in VARCHAR2)
return VARCHAR2
is
l_value varchar2(80) := trim(p_value);
begin
return
    case l_value
    when '0' then
        null
    when '-' then 
        null
    when '－' then
        null
    when '-' then
        null
    when 'ー' then
        null
    when '不明' then
        null
    when '調査中' then
        null
    when '公表を望まない' then
        null
    when '10未満' then
        '10歳未満'
    else
        case when regexp_like(l_value, '^\d\d$') then
            l_value || '代'
        when instr(l_value, '非公表') > 0 then
            null
        when instr(l_value, '歳代') > 0 then
            replace(l_value, '歳代','代')
        else
            l_value
        end
    end;
end;
/

