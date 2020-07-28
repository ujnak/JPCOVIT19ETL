declare
  l_url covid19_municipalities.content_url%type;
  l_file_name covid19_municipalities.file_name%type;
begin
  select col016, col019 into l_file_name, l_url from 
    apex_data_parser.parse(
      p_content => apex_web_service.make_rest_request_b(
        p_url => 'https://www.harp.lg.jp/opendata/api/package_show?id=752c577e-0cbe-46e0-bebd-eb47b71b38bf',
        p_http_method => 'GET'
      ),
      p_file_type => 4
    )
  where col001 = '3827';
  update covid19_municipalities
  set content_blob = apex_web_service.make_rest_request_b(l_url, 'GET'),
      content_url = l_url,
      file_name = l_file_name,
      last_update_date = systimestamp
  where name = '北海道';
end;
