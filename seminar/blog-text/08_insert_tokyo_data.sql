insert into covid19_patients(
    "No", 
    municipality_code,
    prefecture_name,
    published_date,
    patient_location,
    patient_age,
    patient_sex,
    patient_left_hospital
)
select
    to_number(col001),
    to_number(col002),
    col003,
    to_date(col005, 'YYYY-MM-DD'),
    col008,
    col009,
    col010,
    to_number(col016)
from 
    apex_data_parser.parse(
        p_content => apex_web_service.make_rest_request_b(
            p_url => 'https://stopcovid19.metro.tokyo.lg.jp/data/130001_tokyo_covid19_patients.csv',
            p_http_method => 'GET'
        ),
        p_file_name => 'file_is.csv',
        p_skip_rows => 1
    ) where col001 is not null;
