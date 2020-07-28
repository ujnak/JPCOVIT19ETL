declare
  l_url covid19_municipalities.content_url%type;
  l_file_name covid19_municipalities.file_name%type;
begin
  l_url := 'https://stopcovid19.metro.tokyo.lg.jp/data/130001_tokyo_covid19_patients.csv';
  l_file_name := '130001_tokyo_covid19_patients.csv';
  update covid19_municipalities
  set content_blob = apex_web_service.make_rest_request_b(l_url, 'GET'),
      content_url = l_url,
      file_name = l_file_name,
      last_update_date = systimestamp
  where name = '東京都';
end;
