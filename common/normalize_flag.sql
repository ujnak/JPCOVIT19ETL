/*
 * データを 0 or 1 のフラグに変換する。
 *
 * 主に 患者_退院済フラグ に使用
 */
create or replace function "NORMALIZE_FLAG"
(p_value in VARCHAR2)
return NUMBER
is
begin
return
    case trim(p_value) 
    when '0' then
        0
    when 'なし' then
        0
    when '1' then
        1
    when 'あり' then
        1
    else
        null
    end;
end;
