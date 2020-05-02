/*
 * 更新時に、すでに存在する患者データをロックするために使用します。
 */
CREATE OR REPLACE EDITIONABLE TYPE  "MUNICS_T" as table of number
/

/*
 * 取り込むオープンデータの一行を表現します。
 */
CREATE OR REPLACE EDITIONABLE TYPE  "T_TABLE_ROW" as object (
    col001 varchar2(200),
    col002 varchar2(200),
    col003 varchar2(200),
    col004 varchar2(200),
    col005 varchar2(200),
    col006 varchar2(200),
    col007 varchar2(200),
    col008 varchar2(200),
    col009 varchar2(200),
    col010 varchar2(200),
    col011 varchar2(200),
    col012 varchar2(200),
    col013 varchar2(200),
    col014 varchar2(200),
    col015 varchar2(200),
    col016 varchar2(200),
    col017 varchar2(200),
    col018 varchar2(200),
    col019 varchar2(200),
    col020 varchar2(200)
)
/

/*
 * オープンデータを表形式に変換するために使用します。
 */
CREATE OR REPLACE EDITIONABLE TYPE  "T_TABLE" is table of t_table_row
/

