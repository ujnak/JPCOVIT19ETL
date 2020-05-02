/*
 * 与えられたURLをバイナリ・データとして取得する。
 *
 * p_code  全国地方公共団体コード (47都道府県のみが有効)
 * p_url   データとして取得するURL
 * p_cache  0 - URLにアクセスしたデータを返す
 *          1 - DBに保持されているデータがあればそれを返す(p_urlは無視)
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
    if p_cache = 0 then
        l_blob := apex_web_service.make_rest_request_b(
            p_url,
            'GET'
        );
    elsif p_cache = 1 then
        -- 47都道府県のエントリは必ず存在するので NOT FOUND は発生しない。
        select content_blob into l_blob
        from covid19_municipalities
        where code = p_code;
    end if;
    return l_blob;
exception
    when no_data_found then
        return null;
end get_content_b;
