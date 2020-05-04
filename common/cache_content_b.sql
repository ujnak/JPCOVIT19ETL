create or replace procedure cache_content_b
(
    p_code number,
    p_url  varchar2
)
is
    l_blob blob;
 begin
    l_blob := apex_web_service.make_rest_request_b(
        p_url,
        'GET'
    );
    update covid19_municipalities set content_blob = l_blob
    where code = p_code;
end cache_content_b;
/
