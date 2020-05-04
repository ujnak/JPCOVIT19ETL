/*
 * 居住地、職業の表記をできるだけ統一する。
 */
create or replace function "NORMALIZE_TEXT"
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
    when '"' then
        null
    when '不明' then
        null
    when '調査中' then
        null
    when '公表を望まない' then
        null
    else
       l_value
    end;
end;
/
