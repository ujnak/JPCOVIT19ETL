declare
  type cur_t is ref cursor;
  c cur_t;
  r_patient covid19_patients%rowtype;
begin
  -- 都道府県の指定を参照して、出力対象を絞り込む。無ければ全件出力する。
  if :prefecture_name is not null then
    open c for select * from covid19_patients 
        where prefecture_name = :prefecture_name order by "No";
  else
    open c for select * from covid19_patients order by municipality_code, "No";
  end if;
  -- 出力がCSV形式であること、UTF-8であることをHTTPヘッダーで宣言する。
  owa_util.mime_header('text/csv', FALSE, 'utf-8');
  htp.p('Content-disposition: attachment; filename="patients' || 
        utl_url.escape(:prefecture_name, false, 'utf-8') || '.csv"');
  owa_util.http_header_close;
  -- BOM(バイトオーダーマーク)を最初に出力する。
  htp.prn(unistr('\feff'));
  -- カラムヘッダーを出力する。
  htp.prn('"No",');
  htp.prn('"全国地方公共団体コード",');
  htp.prn('"都道府県名",');
  htp.prn('"市区町村名",');
  htp.prn('"公表_年月日",');
  htp.prn('"発症_年月日",');
  htp.prn('"患者_居住地",');
  htp.prn('"患者_年代",');
  htp.prn('"患者_性別",');
  htp.prn('"患者_職業",');
  htp.prn('"患者_状態",');
  htp.prn('"患者_症状",');
  htp.prn('"患者_渡航歴の有無フラグ",');
  htp.prn('"患者_退院済フラグ",');
  htp.p('"備考"');
  -- データを一行づつ出力する。
  loop
    fetch c into r_patient;
    exit when c%notfound;
    htp.prn(r_patient."No"); htp.prn(',');
    htp.prn(to_char(r_patient.municipality_code,'000000')); htp.prn(',');
    htp.prn(r_patient.prefecture_name); htp.prn(',');
    htp.prn(r_patient.city_name); htp.prn(',');
    htp.prn(to_char(r_patient.published_date,'YYYY-MM-DD')); htp.prn(',');
    htp.prn(to_char(r_patient.onset_date,'YYYY-MM-DD')); htp.prn(',');
    htp.prn(r_patient.patient_location); htp.prn(',');
    htp.prn(r_patient.patient_age); htp.prn(',');
    htp.prn(r_patient.patient_sex); htp.prn(',');
    htp.prn(r_patient.patient_occupation); htp.prn(',');
    htp.prn(r_patient.patient_status); htp.prn(',');
    htp.prn(r_patient.patient_symptom); htp.prn(',');
    htp.prn(r_patient.patient_travel_history); htp.prn(',');
    htp.prn(r_patient.patient_left_hospital); htp.prn(',');
    htp.p(r_patient.remark);          
  end loop;
  close c;
end;
