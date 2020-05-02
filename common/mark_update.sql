/*
 * データの最終更新マークと更新ログを書き込みます。
*/
create or replace procedure mark_update(
   p_table_name in varchar2 default 'covid19_patients',
   p_municipality_code in number
)
as
begin
  -- 更新マークを現在時刻にする。
  merge into covid19_last_refresh r
  using (select p_table_name as table_name,
         p_municipality_code as municipality_code,
         systimestamp as last_refresh_time from dual) c
  on (r.table_name = c.table_name and r.municipality_code = c.municipality_code)
  when matched then
      update set r.last_refresh_time = c.last_refresh_time
  when not matched then
      insert(table_name, municipality_code, last_refresh_time) 
      values(c.table_name, c.municipality_code, c.last_refresh_time);
  -- 更新ログを書き込む。
  insert into covid19_refresh_log(table_name, municipality_code, refresh_time) 
      values(p_table_name, p_municipality_code, systimestamp);
end mark_update;
