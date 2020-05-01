/*
 * 与えられたURLをバイナリ・データとして取得する。
 *
 * p_code  全国地方公共団体コード (47都道府県のみが有効)
 * p_url   データとして取得するURL
 * p_cache  0 - URLにアクセスしたデータを返す, 1 - DBに保持されているデータがあればそれを返す(p_urlは無視)
 *          2 - URLにアクセスして取得したデータをCONTENT_BLOBに保存する
 */
create or replace function get_content_b
(
   p_code number,
   p_url  varchar2,
   p_cache number
)
return blob
is
  l_blob blob;
begin
  begin
      select content_blob into l_blob
      from covid19_municipalities
      where code = p_code;
  exception
     when no_data_found then
         l_blob := null;
  end;
  if p_cache = 1 and dbms_lob.getlength(l_blob) > 0 then
      return l_blob;
  end if;
  l_blob := apex_web_service.make_rest_request_b(
      p_url,
      'GET'
  );
  if p_cache = 2 then
      update covid19_municipalities set content_blob = l_blob
      where code = p_code;
  end if;
  return l_blob;
end get_content_b;
