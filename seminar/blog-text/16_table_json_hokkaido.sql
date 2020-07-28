  select col016, col019 into l_file_name, l_url from 
    apex_data_parser.parse(
      p_content => apex_web_service.make_rest_request_b(
        p_url => 'https://www.harp.lg.jp/opendata/api/package_show?id=752c577e-0cbe-46e0-bebd-eb47b71b38bf',
        p_http_method => 'GET'
      ),
      p_file_type => 4
    )
  where col001 = '3827';
