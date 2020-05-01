/*
 * R.2.4.10という形式の令和形式からDATE方を返す
 */
create or replace function "FROM_REIWA2"
(p_string_date in VARCHAR2)
return DATE
is
l_date varchar2(80);
l_parts apex_t_varchar2;
begin
  l_date := regexp_replace(p_string_date,'R(\d+)\.(\d+)\.(\d+)', '\1:\2:\3', 1,1);
  l_parts := apex_string.split(l_date, ':');
  return to_date(to_char(to_number(l_parts(1))+2018, '9999') || '-' || l_parts(2) || '-' || l_parts(3), 'YYYY-MM-DD');
end;
