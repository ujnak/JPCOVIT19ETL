/*
 * 性別の表記をできるだけ統一する。
 */
create or replace function "NORMALIZE_SEX"
(p_value in VARCHAR2)
return VARCHAR2
is
l_value varchar2(80) := trim(p_value);
begin
return
    case l_value
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
    when '女児' then
        '女性'
    when '調査中' then
        null
    when '男' then
        '男性'
    when '女' then
        '女性'
    else
        case when instr(l_value, '非公表') > 0 then
            null
        else
            l_value
        end
    end;
end;
