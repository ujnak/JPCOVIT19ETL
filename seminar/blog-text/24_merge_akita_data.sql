merge into covid19_patients p
using
(
    select
        to_number(regexp_replace(col001, '^\s*(\d+)例目','\1')) "No",
        50008 municipality_code,
        '秋田県' prefecture_name,
        null city_name,
        to_date(col002, 'MM"月"DD"日"') published_date,
        null onset_date,
        col005 patient_location,
        case
        when regexp_like(col003, '^\d+歳代') then
            replace(col003, '歳')
        else
            col003
        end patient_age,
        col004 patient_sex,
        col006 patient_occupation,
        null patient_status,
        null patient_symptom,
        null patient_travel_history,
        null patient_left_hospital,
        col008 remark
    from table(parse_html_table_akita)
    minus
    select
        "No", municipality_code, prefecture_name, city_name, 
        published_date, onset_date,
        patient_location, patient_age, patient_sex, patient_occupation,
        patient_status, patient_symptom, 
        patient_travel_history, patient_left_hospital, remark
    from covid19_patients
) n
on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)
when matched then
    update set
        p.city_name              = n.city_name,
        p.published_date         = n.published_date,
        p.onset_date             = n.onset_date,
        p.patient_location       = n.patient_location,
        p.patient_age            = n.patient_age,
        p.patient_sex            = n.patient_sex,
        p.patient_occupation     = n.patient_occupation,
        p.patient_status         = n.patient_status,
        p.patient_symptom        = n.patient_symptom,
        p.patient_travel_history = n.patient_travel_history,
        p.patient_left_hospital  = n.patient_left_hospital,
        p.remark                 = n.remark
when not matched then
    insert(
        "No", municipality_code, prefecture_name, city_name, 
        published_date, onset_date, 
        patient_location, patient_age, patient_sex, patient_occupation,
        patient_status, patient_symptom,
        patient_travel_history, patient_left_hospital, remark
    )
    values
    (
        n."No", n.municipality_code, n.prefecture_name, n.city_name, 
        n.published_date, n.onset_date, 
        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,
        n.patient_status, n.patient_symptom,
        n.patient_travel_history, n.patient_left_hospital, n.remark
    );
