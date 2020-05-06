/*
 * 全国地方公共団体コードのマスター表
 *
 * 47都道府県のみを保持することを想定しています。
 */
CREATE TABLE  "COVID19_MUNICIPALITIES" 
   (
    "CODE" NUMBER,                     -- 全国地方公共団体コード
	"NAME" VARCHAR2(40),               -- 都道府県名
	"OPEN_DATA_URL" VARCHAR2(400),     -- 実際のデータが含まれるページもしくはファイル(CSV, XSLX, PDF, HTML)
	"LOAD_PROC_NAME" VARCHAR2(40),     -- 都道府県毎のデータロードを行うプロシージャ名
	"OFFICIAL_SITE_URL" VARCHAR2(400), -- 陽性患者の状況が載っている都道府県毎のWebページ
	"NOTE" VARCHAR2(4000),             -- ロード処理についての解説 
	"CONTENT_BLOB" BLOB,               -- 取得したオープンデータをそのままの形式で一旦保存するために使用
	"LAST_UPDATE_DATE" DATE            -- 最後にデータを更新した日付
	 CONSTRAINT "COVID19_MUNICIPALITY_CODES_PK" PRIMARY KEY ("CODE")
  USING INDEX  ENABLE
   )
/
