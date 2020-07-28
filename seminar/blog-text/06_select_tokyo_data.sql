select * from 
    apex_data_parser.parse(
        p_content => apex_web_service.make_rest_request_b(
            p_url => 'https://stopcovid19.metro.tokyo.lg.jp/data/130001_tokyo_covid19_patients.csv',
            p_http_method => 'GET'
        ),
        p_file_name => 'file_is.csv',
        p_skip_rows => 1
    ) where col001 is not null;
