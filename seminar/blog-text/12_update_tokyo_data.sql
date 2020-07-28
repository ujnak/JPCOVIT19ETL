update covid19_municipalities m
set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, 'GET'),
    m.last_update_date = systimestamp
where m.name = '東京都';
