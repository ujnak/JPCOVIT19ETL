declare
    l_data     blob;
    l_data_len number;
begin
    l_data := apex_web_service.make_rest_request_b(
        p_url => 'https://stopcovid19.metro.tokyo.lg.jp/data/130001_tokyo_covid19_patients.csv',
        p_http_method => 'GET'
    );
    dbms_output.put_line('Content Length is ' || dbms_lob.getLength(l_data));
end;
