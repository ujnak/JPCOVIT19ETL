merge into covid19_patients p
using
(
    select
        to_number(col001) "No",
        to_number(col002) municipality_code,
        col003 prefecture_name,
        to_date(col005, 'YYYY-MM-DD') published_date,
        col008 patient_location,
        col009 patient_age,
        col010 patient_sex,
        to_number(col016) patient_left_hospital
    from 
        apex_data_parser.parse(
            p_content => apex_web_service.make_rest_request_b(
                p_url => 'https://stopcovid19.metro.tokyo.lg.jp/data/130001_tokyo_covid19_patients.csv',
                p_http_method => 'GET'
            ),
            p_file_name => 'file_is.csv',
            p_skip_rows => 1
        ) where col001 is not null
    minus
    select
        "No", municipality_code, prefecture_name, published_date, 
        patient_location, patient_age, patient_sex, patient_left_hospital
    from covid19_patients
) n
on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)
when matched then
    update set
        p.published_date   = n.published_date,
        p.patient_location = n.patient_location,
        p.patient_age      = n.patient_age,
        p.patient_sex      = n.patient_sex,
        p.patient_left_hospital = n.patient_left_hospital
when not matched then
    insert(
        "No", municipality_code, prefecture_name, published_date, 
        patient_location, patient_age, patient_sex, patient_left_hospital
    )
    values
    (
        n."No", n.municipality_code, n.prefecture_name, n.published_date, 
        n.patient_location, n.patient_age, n.patient_sex, n.patient_left_hospital    
    );
