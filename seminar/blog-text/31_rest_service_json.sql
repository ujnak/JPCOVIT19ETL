select
  "No",
  municipality_code "全国地方公共団体コード",
  prefecture_name "都道府県名",
  city_name "市区町村名",
  published_date "公表_年月日",
  onset_date "発症_年月日",
  patient_location "患者_居住地",
  patient_age "患者_年代",
  patient_sex "患者_性別",
  patient_occupation "患者_職業",
  patient_status "患者_状態",
  patient_symptom "患者_症状",
  patient_travel_history "患者_渡航歴の有無フラグ",
  patient_left_hospital "患者_退院済フラグ",            
  remark "備考"
from covid19_patients 
where
  :prefecture_name is null
  or
  prefecture_name = :prefecture_name
order by municipality_code, "No"
