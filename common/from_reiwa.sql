/*
 * 令和による年月日表示からDATEに変換する
 * データベースに令和の対応がないケースに対応。
 */
create or replace function "FROM_REIWA"
(p_string_date in VARCHAR2)
return DATE
is
l_date varchar2(80);
begin
  l_date := 
  to_char
  (
      to_number
      (
          substr
          (
              p_string_date,
              3,
              instr(p_string_date,'年')-3
          )
      )+2018,
      '9999'
  )
  || substr(p_string_date, instr(p_string_date,'年'));
  return to_date(l_date,'YYYY"年"MM"月"DD"日"'); 
end;
/

