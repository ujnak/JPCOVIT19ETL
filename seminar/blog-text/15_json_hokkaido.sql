select json_serialize(
    apex_web_service.make_rest_request_b(
        p_url => 'https://www.harp.lg.jp/opendata/api/package_show?id=752c577e-0cbe-46e0-bebd-eb47b71b38bf',
        p_http_method => 'GET'
    )
    returning varchar2 pretty
) from dual;

