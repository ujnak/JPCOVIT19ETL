select
    to_number(col001)  "No",
    to_number(col002) municipality_code,
    col003 prefecture_name,
    to_date(col005, 'YYYY-MM-DD') published_date,
    col008 patient_location,
    col009 patient_age,
    col010 patient_sex,
    to_number(col016) patient_left_hospital
from 
    apex_data_parser.parse(
        p_content => 
          (select content_blob from covid19_municipalities where name = '東京都'),
        p_file_name => 'file_is.csv',
        p_skip_rows => 1
    ) where col001 is not null;
