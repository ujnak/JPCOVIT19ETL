/*
 * 陽性患者属性を取り込む表
 *
 * 外部キーの設定があるため、COVID19_MUNICIPALITIES表を先に作成する
 * LINE_NOは都道府県別の連番であるため主キーにはならず、この表自体には主キーはありません。
 * 
 * 参照: https://www.code4japan.org/activity/stopcovid19#doc
 *      新型コロナウイルス感染症対策に関するオープンデータ項目定義書
 */
CREATE TABLE  "COVID19_PATIENTS" 
   (	
    "LINE_NO" NUMBER, 
	"全国地方公共団体コード" NUMBER, 
	"都道府県名" VARCHAR2(2000), 
	"市区町村名" VARCHAR2(2000), 
	"公表_年月日" DATE, 
	"曜日" VARCHAR2(8), 
	"発症_年月日" DATE, 
	"患者_居住地" VARCHAR2(2000), 
	"患者_年代" VARCHAR2(80), 
	"患者_性別" VARCHAR2(80), 
	"患者_職業" VARCHAR2(2000), 
	"患者_状態" VARCHAR2(2000), 
	"患者_症状" VARCHAR2(2000), 
	"備考" VARCHAR2(2000), 
	"患者_渡航歴の有無フラグ" NUMBER, 
	"患者_退院済フラグ" NUMBER,
	"患者_死亡フラグ" NUMBER
   )
/
ALTER TABLE  "COVID19_PATIENTS" ADD CONSTRAINT "COVID19_PATIENTS_MUNIC_FK" FOREIGN KEY ("全国地方公共団体コード")
	  REFERENCES  "COVID19_MUNICIPALITIES" ("CODE") ENABLE
/
