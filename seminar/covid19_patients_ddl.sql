CREATE TABLE  "COVID19_PATIENTS" 
   (	"No" NUMBER, 
	"MUNICIPALITY_CODE" NUMBER, 
	"PREFECTURE_NAME" VARCHAR2(16) NOT NULL ENABLE, 
	"CITY_NAME" VARCHAR2(40), 
	"PUBLISHED_DATE" DATE, 
	"ONSET_DATE" DATE, 
	"PATIENT_LOCATION" VARCHAR2(200), 
	"PATIENT_AGE" VARCHAR2(40), 
	"PATIENT_SEX" VARCHAR2(40), 
	"PATIENT_OCCUPATION" VARCHAR2(200), 
	"PATIENT_STATUS" VARCHAR2(200), 
	"PATIENT_SYMPTOM" VARCHAR2(200), 
	"PATIENT_TRAVEL_HISTORY" NUMBER, 
	"PATIENT_LEFT_HOSPITAL" NUMBER, 
	"REMARK" VARCHAR2(200), 
	 CONSTRAINT "COVID19_PATIE_PATIENT_TRAVE_CC" CHECK (patient_travel_history in ('1','0')) ENABLE, 
	 CONSTRAINT "COVID19_PATIE_PATIENT_LEFT_CC" CHECK (patient_left_hospital in ('1','0')) ENABLE
   )
/
CREATE TABLE  "COVID19_MUNICIPALITIES" 
   (	"ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
	"CODE" NUMBER, 
	"NAME" VARCHAR2(100), 
	"CONTENT_BLOB" BLOB, 
	"LAST_UPDATE_DATE" TIMESTAMP (6) WITH LOCAL TIME ZONE, 
	"FILE_NAME" VARCHAR2(200), 
	"CONTENT_URL" VARCHAR2(400), 
	"HOME_URL" VARCHAR2(400), 
	"OFFICIAL_SITE_URL" VARCHAR2(400), 
	 PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/
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
CREATE OR REPLACE EDITIONABLE TYPE  "T_TABLE" is table of t_table_row
/
CREATE OR REPLACE EDITIONABLE FUNCTION  convert_blob_to_clob
(
    p_blob     blob,
    p_charset  varchar2
)
return clob
is
    l_clob clob;
    ls integer := 1;
    le integer := 1;
    l_lang_ctx integer := DBMS_LOB.DEFAULT_LANG_CTX;
    l_warning  integer;
begin
    dbms_lob.createtemporary(l_clob, true, dbms_lob.call);
    dbms_lob.converttoclob(
      l_clob,
      p_blob,
      dbms_lob.lobmaxsize,
      ls,
      le,
      NLS_CHARSET_ID(p_charset),
      l_lang_ctx,
      l_warning);
    return l_clob;
end ;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  get_content_as_clob
(
    p_prefecture_name varchar2,
    p_charset         varchar2
)
return clob
is
    l_blob blob;
    l_clob clob;
    ls integer := 1;
    le integer := 1;
    l_lang_ctx integer := DBMS_LOB.DEFAULT_LANG_CTX;
    l_warning  integer;
begin
    select content_blob into l_blob from covid19_municipalities where name = p_prefecture_name;
    if dbms_lob.getlength(l_blob) = 0 then
        return null;
    end if;
    dbms_lob.createtemporary(l_clob, true, dbms_lob.call);
    dbms_lob.converttoclob(
      l_clob,
      l_blob,
      dbms_lob.lobmaxsize,
      ls,
      le,
      NLS_CHARSET_ID(p_charset),
      l_lang_ctx,
      l_warning);
    return l_clob;
end ;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  parse_html_table_akita
return t_table pipelined 
as  
  l_html   clob; 
  l_start  number; 
  l_end    number; 
  l_row    t_table_row; 
  c_record sys_refcursor; 
  l_data   varchar2(200);
begin 
  -- 取り込むデータの部分を切り出す。 
  l_html := get_content_as_clob('秋田県','AL32UTF8');
  l_start := instr(l_html, '<tbody'); 
  l_end   := instr(l_html, '</tbody>'); 
  l_html  := substr(l_html, l_start, l_end - l_start + 8); 
  l_html  := replace(l_html,'&nbsp;');  
  for r in 
  ( 
     select rownum rn, td from xmltable('tbody/tr' passing xmltype(l_html) 
                               columns td xmltype path './td') 
  ) 
  loop
    l_row := t_table_row(
        null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null
    );
    open c_record for  
        select cell from xmltable('./td' passing r.td 
                               columns cell varchar2(200) path '.'); 
        fetch c_record into l_row.col001;
        fetch c_record into l_row.col002;
        fetch c_record into l_row.col003;
        fetch c_record into l_row.col004;
        fetch c_record into l_row.col005;
        fetch c_record into l_row.col006;
        fetch c_record into l_row.col007;
        fetch c_record into l_row.col008;
    close c_record; 
    pipe row(l_row); 
  end loop; 
end ;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  parse_html_table_hiroshima
return t_table pipelined 
as  
  l_html   clob; 
  l_start  number; 
  l_end    number; 
  l_row    t_table_row; 
  c_record sys_refcursor; 
  l_data   varchar2(200);
  l_start_n number;
  l_end_n   number;
begin 
  -- 取り込むデータの部分を切り出す。 
  l_html := get_content_as_clob('広島県','AL32UTF8');
  l_start := instr(l_html, '<tbody'); 
  l_end   := instr(l_html, '</tbody>'); 
  l_html  := substr(l_html, l_start, l_end - l_start + 8); 
  l_html  := replace(l_html,'<p>&nbsp;</p>');
  l_html  := replace(l_html,'&nbsp;');  
  for r in 
  ( 
     select rownum rn, td from xmltable('tbody/tr' passing xmltype(l_html) 
                               columns td xmltype path './td') 
  ) 
  loop
    if r.rn = 1 then
        continue;
    end if;
    l_row := t_table_row(
        null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null
    );
    open c_record for  
        select cell from xmltable('./td' passing r.td 
                               columns cell varchar2(200) path '.'); 
        fetch c_record into l_row.col001;
        fetch c_record into l_row.col002;
        fetch c_record into l_row.col003;
        fetch c_record into l_row.col004;
        fetch c_record into l_row.col005;
        fetch c_record into l_row.col006;
        fetch c_record into l_row.col007;
    close c_record;
    if instr(l_row.col001,'～') > 0 then
        l_start_n := to_number(regexp_replace(l_row.col001, '\s*(\d+)\s*～.*','\1'));
        l_end_n   := to_number(regexp_replace(l_row.col001, '\s*\d+\s*～\s*(\d+)\s*','\1'));
        for i in l_start_n .. l_end_n
        loop
            l_row.col001 := to_char(i, '9999999');
            pipe row(l_row);
        end loop;
    else
        pipe row(l_row);
    end if;
  end loop; 
end ;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  parse_html_table_ibaraki
return t_table pipelined 
as  
  l_html   clob; 
  l_start  number; 
  l_end    number; 
  l_row    t_table_row; 
  c_record sys_refcursor; 
  l_data   varchar2(200);
begin 
  -- 取り込むデータの部分を切り出す。 
  l_html := get_content_as_clob('茨城県','AL32UTF8');
  l_start := instr(l_html, '<tbody'); 
  l_end   := instr(l_html, '</tbody>'); 
  l_html  := substr(l_html, l_start, l_end - l_start + 8); 
  l_html  := replace(l_html,'&nbsp;');  
  for r in 
  ( 
     select rownum rn, td from xmltable('tbody/tr' passing xmltype(l_html) 
                               columns td xmltype path './td') 
  ) 
  loop
    if r.rn = 1 then
        continue;
    end if;
    l_row := t_table_row(
        null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null
    );
    open c_record for  
        select cell from xmltable('./td' passing r.td 
                               columns cell varchar2(200) path '.'); 
        fetch c_record into l_row.col001;
        fetch c_record into l_row.col002;
        fetch c_record into l_row.col003;
        fetch c_record into l_row.col004;
        fetch c_record into l_row.col005;
    close c_record; 
    pipe row(l_row); 
  end loop; 
end ;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  parse_html_table_kagawa
return t_table pipelined 
as  
  l_html   clob; 
  l_start  number; 
  l_end    number; 
  l_row    t_table_row; 
  c_record sys_refcursor; 
  l_data   varchar2(200);
  l_prev   varchar2(200);
  l_prev2  varchar2(200);
begin 
  -- 取り込むデータの部分を切り出す。 
  l_html := get_content_as_clob('香川県','JA16EUC');
  l_start := instr(l_html, '感染者ごとの状況');
  l_html  := substr(l_html, l_start);
  l_start := instr(l_html, '<tbody'); 
  l_end   := instr(l_html, '</tbody>'); 
  l_html  := substr(l_html, l_start, l_end - l_start + 8); 
  l_html  := replace(l_html,'&nbsp;');  
  for r in 
  ( 
     select rownum rn, td from xmltable('tbody/tr' passing xmltype(l_html) 
                                        columns td xmltype path './td')
  ) 
  loop 
    if r.rn = 1 then
        continue;
    end if;
    l_row := t_table_row( 
        null, null, null, null, null, null, null, null, null, null, 
        null, null, null, null, null, null, null, null, null, null 
    );  
    open c_record for  
        select cell from xmltable('./td' passing r.td 
                               columns cell varchar2(200) path '.'); 
        fetch c_record into l_row.col001; 
        fetch c_record into l_row.col002; 
        fetch c_record into l_row.col003; 
        fetch c_record into l_row.col004; 
        fetch c_record into l_row.col005;
        fetch c_record into l_row.col006;
    close c_record;
    if instr(l_row.col002,'曜日') > 0 then
        l_prev := l_row.col002;
    else
        l_row.col006 := l_row.col005;
        l_row.col005 := l_row.col004;
        l_row.col004 := l_row.col003;
        l_row.col003 := l_row.col002;
        l_row.col002 := l_prev;
    end if;
    if l_row.col006 is not null then
        l_prev2 := l_row.col006;
    else
        l_row.col006 := l_prev2;
    end if;
    pipe row(l_row);
  end loop; 
end ;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  parse_html_table_kagoshima
return t_table pipelined 
as  
  l_html   clob; 
  l_start  number; 
  l_end    number; 
  l_row    t_table_row; 
  c_record sys_refcursor; 
  l_data   varchar2(200);
  l_prev_date varchar2(200);
  l_prev_location varchar2(200);
begin 
  -- 取り込むデータの部分を切り出す。 
  l_html := get_content_as_clob('鹿児島県','AL32UTF8');
  l_start := instr(l_html, '鹿児島県内での発生状況');
  l_html  := substr(l_html, l_start);
  l_start := instr(l_html, '<tbody'); 
  l_end   := instr(l_html, '</tbody>'); 
  l_html  := substr(l_html, l_start, l_end - l_start + 8); 
  l_html  := replace(l_html,'&nbsp;');  
  for r in
  (
     select rownum rn, td from xmltable('tbody/tr' passing xmltype(l_html)
                                        columns td xmltype path './td')
  )
  loop
    if r.rn = 1 then
        continue;
    end if;
    l_row := t_table_row(
        null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null
    );
    open c_record for 
        select cell from xmltable('./td' passing r.td
                               columns cell varchar2(200) path '.');
        fetch c_record into l_row.col001;
        fetch c_record into l_row.col002;
        if regexp_like(l_row.col002,'\d+月\d+日') then
            l_prev_date := l_row.col002;
            fetch c_record into l_row.col003;
            l_prev_location := l_row.col003;
            fetch c_record into l_row.col004;
        else
            if regexp_like(l_row.col002,'\d+代') then
                l_row.col004 := l_row.col002;
                l_row.col002 := l_prev_date;
                l_row.col003 := l_prev_location;
            else
                l_row.col003 := l_row.col002;
                l_row.col002 := l_prev_date;
                fetch c_record into l_row.col004;
            end if;
        end if;
        fetch c_record into l_row.col005;
        fetch c_record into l_row.col006;
        if l_row.col006 = '〇' then
            l_row.col007 := l_row.col006;
            l_row.col006 := null;
        else
            fetch c_record into l_row.col007;
        end if;
    close c_record;
    pipe row(l_row);
  end loop;
end ;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  parse_html_table_kyoto1
return t_table pipelined 
as  
  l_html   clob; 
  l_start  number; 
  l_end    number; 
  l_row    t_table_row; 
  c_record sys_refcursor; 
  l_data   varchar2(200);
begin 
  -- 取り込むデータの部分を切り出す。 
  l_html := get_content_as_clob('京都府','AL32UTF8');
  l_start := instr(l_html, '入院・療養中：');
  l_html  := substr(l_html, l_start);
  l_start := instr(l_html, '<tbody'); 
  l_end   := instr(l_html, '</tbody>'); 
  l_html  := substr(l_html, l_start, l_end - l_start + 8); 
  l_html  := replace(l_html,'&nbsp;');  
  for r in 
  ( 
     select rownum rn, td from xmltable('tbody/tr' passing xmltype(l_html) 
                               columns td xmltype path './td') 
  ) 
  loop
    if r.rn = 1 then
        continue;
    end if;
    l_row := t_table_row(
        null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null
    );
    open c_record for  
        select cell from xmltable('./td' passing r.td 
                               columns cell varchar2(200) path '.'); 
        fetch c_record into l_row.col001;
        fetch c_record into l_row.col002;
        fetch c_record into l_row.col003;
        fetch c_record into l_row.col004;
        fetch c_record into l_row.col005;
        fetch c_record into l_row.col006;
    close c_record; 
    pipe row(l_row); 
  end loop; 
end ;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  parse_html_table_kyoto2
return t_table pipelined 
as  
  l_html   clob; 
  l_start  number; 
  l_end    number; 
  l_row    t_table_row;
  c_record sys_refcursor; 
  l_data   varchar2(200);
begin 
  -- 取り込むデータの部分を切り出す。 
  l_html := get_content_as_clob('京都府','AL32UTF8');
  l_start := instr(l_html, '退院等（死亡退院・転院を含む）：');
  l_html  := substr(l_html, l_start);
  l_start := instr(l_html, '<tbody'); 
  l_end   := instr(l_html, '</tbody>'); 
  l_html  := substr(l_html, l_start, l_end - l_start + 8); 
  l_html  := replace(l_html,'&nbsp;');  
  for r in 
  ( 
     select rownum rn, td from xmltable('tbody/tr' passing xmltype(l_html) 
                               columns td xmltype path './td') 
  ) 
  loop
    if r.rn = 1 then
        continue;
    end if;
    l_row := t_table_row(
        null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null
    );
    open c_record for  
        select cell from xmltable('./td' passing r.td 
                               columns cell varchar2(200) path '.'); 
        fetch c_record into l_row.col001;
        fetch c_record into l_row.col002;
        fetch c_record into l_row.col003;
        fetch c_record into l_row.col004;
        fetch c_record into l_row.col005;
        fetch c_record into l_row.col006;
    close c_record; 
    pipe row(l_row); 
  end loop; 
end ;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  parse_html_table_miyazaki
return t_table pipelined 
as  
  l_html   clob; 
  l_start  number; 
  l_end    number; 
  l_row    t_table_row; 
  c_record sys_refcursor; 
  l_data   varchar2(200);
  l_prev   varchar2(200);
begin 
  -- 取り込むデータの部分を切り出す。 
  l_html := get_content_as_clob('宮崎県','AL32UTF8');
  l_start := instr(l_html, '<tbody'); 
  l_end   := instr(l_html, '</tbody>'); 
  l_html  := substr(l_html, l_start, l_end - l_start + 8); 
  l_html  := replace(l_html,'&nbsp;');  
  l_html := regexp_replace(l_html, '<a\s+.*?a>');
  for r in 
  ( 
     select rownum rn, td from xmltable('tbody/tr' passing xmltype(l_html) 
                                        columns td xmltype path './td') 
  )
  loop 
    if r.rn = 1 then
        continue;
    end if;
    l_row := t_table_row( 
        null, null, null, null, null, null, null, null, null, null, 
        null, null, null, null, null, null, null, null, null, null 
    );  
    open c_record for  
        select cell from xmltable('./td' passing r.td 
                               columns cell varchar2(200) path '.'); 
        fetch c_record into l_row.col001; 
        fetch c_record into l_row.col002; 
        fetch c_record into l_row.col003; 
        fetch c_record into l_row.col004; 
        fetch c_record into l_row.col005;
        fetch c_record into l_row.col006;
        fetch c_record into l_row.col007; 
        fetch c_record into l_row.col008;
    close c_record;
    pipe row(l_row);
  end loop; 
end ;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  parse_html_table_niigata
return t_table pipelined 
as  
  l_html   clob; 
  l_start  number; 
  l_end    number; 
  l_row    t_table_row; 
  c_record sys_refcursor; 
  l_data   varchar2(200);
begin 
  -- 取り込むデータの部分を切り出す。 
  l_html := get_content_as_clob('新潟県','AL32UTF8');
  l_html  := substr(l_html, instr(l_html, '<caption>県内における感染者の発生状況'));
  l_start := instr(l_html, '<tbody'); 
  l_end   := instr(l_html, '</tbody>'); 
  l_html  := substr(l_html, l_start, l_end - l_start + 8); 
  l_html  := replace(l_html,'&nbsp;');  
  for r in 
  ( 
     select rownum rn, td from xmltable('tbody/tr' passing xmltype(l_html) 
                               columns td xmltype path './td') 
  ) 
  loop
    l_row := t_table_row(
        null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null
    );
    open c_record for  
        select cell from xmltable('./td' passing r.td 
                               columns cell varchar2(200) path '.'); 
        fetch c_record into l_row.col001;
        fetch c_record into l_row.col002;
        fetch c_record into l_row.col003;
        fetch c_record into l_row.col004;
        fetch c_record into l_row.col005;
        fetch c_record into l_row.col006;
        fetch c_record into l_row.col007;
        fetch c_record into l_row.col008;
        fetch c_record into l_row.col009;
    close c_record; 
    pipe row(l_row); 
  end loop; 
end ;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  parse_html_table_saga
return t_table pipelined 
as  
  l_html   clob; 
  l_start  number; 
  l_end    number; 
  l_row    t_table_row; 
  c_record sys_refcursor; 
  l_data   varchar2(200);
  l_prev   varchar2(200);
begin 
  -- 取り込むデータの部分を切り出す。 
  l_html := get_content_as_clob('佐賀県','AL32UTF8');
  l_start := instr(l_html, 'PCR検査陽性者一覧');
  l_html  := substr(l_html, l_start);
  l_start := instr(l_html, '<tbody'); 
  l_end   := instr(l_html, '</tbody>'); 
  l_html  := substr(l_html, l_start, l_end - l_start + 8); 
  l_html  := replace(l_html,'&nbsp;');  
  l_html := regexp_replace(l_html, '<a\s+.*?a>');
  for r in 
  ( 
     select rownum rn, td from xmltable('tbody/tr' passing xmltype(l_html) 
                                        columns td xmltype path './td') 
  )
  loop 
    if r.rn = 1 then
        continue;
    end if;
    l_row := t_table_row( 
        null, null, null, null, null, null, null, null, null, null, 
        null, null, null, null, null, null, null, null, null, null 
    );  
    open c_record for  
        select cell from xmltable('./td' passing r.td 
                               columns cell varchar2(200) path '.'); 
        fetch c_record into l_row.col001; 
        fetch c_record into l_row.col002; 
        fetch c_record into l_row.col003; 
        fetch c_record into l_row.col004; 
        fetch c_record into l_row.col005;
        fetch c_record into l_row.col006;
        fetch c_record into l_row.col007;     
    close c_record;
    if instr(l_row.col001,'〃') > 0 then
        l_row.col001 := l_prev;
    end if;
    if l_row.col001 is not null then
        l_prev := l_row.col001;
        pipe row(l_row);
    end if;
  end loop; 
end ;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  parse_html_table_tokushima
return t_table pipelined 
as  
  l_html   clob; 
  l_start  number; 
  l_end    number; 
  l_row    t_table_row; 
  c_record sys_refcursor; 
  l_data   varchar2(200);
begin 
  -- 取り込むデータの部分を切り出す。 
  l_html := get_content_as_clob('徳島県','AL32UTF8');
  l_start := instr(l_html, '徳島県内の発生状況');
  l_html  := substr(l_html, l_start);
  l_start := instr(l_html, '<tbody'); 
  l_end   := instr(l_html, '</tbody>'); 
  l_html  := substr(l_html, l_start, l_end - l_start + 8); 
  l_html  := replace(l_html,'&nbsp;');  
  for r in
  (
     select td from xmltable('tbody/tr' passing xmltype(l_html)
                                        columns td xmltype path './td|./th')
  )
  loop
    l_row := t_table_row(
        null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null
    ); 
    open c_record for 
        select cell from xmltable('./td|./th' passing r.td
                               columns cell varchar2(200) path '.');
        fetch c_record into l_row.col001;
        fetch c_record into l_row.col002;
        fetch c_record into l_row.col003;
        fetch c_record into l_row.col004;
        fetch c_record into l_row.col005;
    close c_record;
    if regexp_like(l_row.col001, '\d+例目') then
        pipe row(l_row);
    end if;
  end loop;
end ;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  parse_html_table_tottori
return t_table pipelined 
as  
  l_html   clob; 
  l_start  number; 
  l_end    number; 
  l_row    t_table_row; 
  c_record sys_refcursor; 
  l_data   varchar2(200);
begin 
  -- 取り込むデータの部分を切り出す。 
  l_html := get_content_as_clob('鳥取県','AL32UTF8');
  l_start := instr(l_html, '検査陽性者の属性');
  l_html  := substr(l_html, l_start);
  l_start := instr(l_html, '<tbody'); 
  l_end   := instr(l_html, '</tbody>'); 
  l_html  := substr(l_html, l_start, l_end - l_start + 8); 
  l_html  := replace(l_html,'&nbsp;');  
  for r in 
  ( 
     select rownum rn, td from xmltable('tbody/tr' passing xmltype(l_html) 
                               columns td xmltype path './td') 
  ) 
  loop
    if r.rn <= 2 then
        continue;
    end if;
    l_row := t_table_row(
        null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null
    );
    open c_record for  
        select cell from xmltable('./td' passing r.td 
                               columns cell varchar2(200) path '.'); 
        fetch c_record into l_row.col001;
        fetch c_record into l_row.col002;
        fetch c_record into l_row.col003;
        fetch c_record into l_row.col004;
        fetch c_record into l_row.col005;
        fetch c_record into l_row.col006;
        fetch c_record into l_row.col007;
        fetch c_record into l_row.col008;
    close c_record; 
    pipe row(l_row); 
  end loop; 
end ;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  parse_pdf_table_aichi
return t_table pipelined 
as  
    l_columns apex_t_varchar2; 
    l_line    varchar2(1000); 
    l_parsed  varchar2(1000); 
    l_row t_table_row := null; 
    l_age  varchar2(80);
    l_sex  varchar2(80);
    l_home varchar2(80);
    --
    procedure debug_print(
        p_rule varchar2,
        p_row t_table_row
    )
    is
    begin
        dbms_output.put_line('Rule:' || p_rule
            || ' No:' || p_row.col001 || ' Date:' || p_row.col002 || ' Age:' || p_row.col003
            || ' Sex:' || p_row.col004 || ' Home:' || p_row.col005);
    end debug_print;
begin 
    for r in ( 
        select col001 
        from table( 
            apex_data_parser.parse( 
               p_content => (select content_blob from covid19_municipalities where name = '愛知県'),
               p_file_name => 'file_is.xlsx', 
               p_skip_rows => 3 
            ) 
        ) 
    ) 
    loop 
        l_line := r.col001; 
        l_line := replace(l_line,'_x000C_');
        l_line := to_single_byte(l_line); 
        l_line := trim(l_line);
        l_age := null; l_sex := null; l_home := null;
        -- 10       2月21日 70代男性     日本    名古屋市    No.4と接触          名古屋市発表5
        l_parsed := regexp_replace(l_line,  
            '(\d+)\s+(\S+)\s+(\S+)\s+(\w+)\s+(\w+)\s+.*', 
            '\1:\2:\3:\4:\5', 1, 1);
        if l_line != l_parsed then -- 正規表現が一致している 
            --  dbms_output.put_line(l_line);
            if l_row is not null then
                pipe row(l_row); l_row := null;
                -- debug_print('1',l_row); l_row := null;
            end if; 
            l_columns := apex_string.split(l_parsed,':');
            if instr(l_columns(3),'男性') > 0 then
                l_age := replace(l_columns(3),'男性');
                l_sex := '男性';
            elsif instr(l_columns(3),'女性') > 0 then
                l_age := replace(l_columns(3),'女性');
                l_sex := '女性';
            end if;
            if l_columns(4) = '日本' then
                l_home := l_columns(5);
            else
                l_home := l_columns(4);
            end if;
            l_row := t_table_row( 
                l_columns(1), l_columns(2), l_age, l_sex, l_home, 
                null, null, null, null, null, 
                null, null, null, null, null, 
                null, null, null, null, null 
            ); 
            continue;  
        end if; 
        -- 99    3月10日           日本    名古屋市                       名古屋市発表81
        l_parsed := regexp_replace(l_line,  
            '(\d+)\s+(\S+)\s+(\w+)\s+(\w+)\s+.*', 
            '\1:\2:\3:\4:\5', 1, 1);
        if l_line != l_parsed then -- 正規表現が一致している 
            -- dbms_output.put_line(l_line);
            l_age := null; l_sex := null; l_home := null;
            if l_row is not null then
                pipe row(l_row); l_row := null;
                -- debug_print('2',l_row); l_row := null;
            end if; 
            l_columns := apex_string.split(l_parsed,':');
            if instr(l_columns(3),'男性') > 0 then
                l_age := replace(l_columns(3),'男性');
                l_sex := '男性';
                if l_columns(4) = '日本' then
                    l_home := l_columns(5);
                else
                    l_home := l_columns(4);
                end if;
            elsif instr(l_columns(3),'女性') > 0 then
                l_age := replace(l_columns(3),'女性');
                l_sex := '女性';
                if l_columns(4) = '日本' then
                    l_home := l_columns(5);
                else
                    l_home := l_columns(4);
                end if;
            elsif l_columns(3) = '日本' then
                l_home := l_columns(4);
            else
                l_home := l_columns(3);
            end if;       
            l_row := t_table_row( 
                l_columns(1), l_columns(2), l_age, l_sex, l_home, 
                null, null, null, null, null, 
                null, null, null, null, null, 
                null, null, null, null, null 
            ); 
            continue;  
        end if; 
    end loop; 
    if l_row is not null then 
        pipe row(l_row);
        -- debug_print('1',l_row); l_row := null;
    end if; 
end ;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  parse_pdf_table_chiba
return t_table pipelined 
as  
    l_columns apex_t_varchar2; 
    l_prev    varchar2(1000); 
    l_line    varchar2(1000); 
    l_parsed  varchar2(1000); 
    l_row t_table_row := null; 
begin 
    for r in ( 
        select rownum rn, col001 
        from table( 
            apex_data_parser.parse( 
               p_content => (select content_blob from covid19_municipalities where name = '千葉県'),
               p_file_name => 'file_is.xlsx', 
               p_skip_rows => 6 
            ) 
        ) 
    ) 
    loop 
        l_line := r.col001; 
        l_line := replace(l_line, '_x000C_');
        l_line := to_single_byte(l_line);
        -- 6 20代 男性 市川市 県内発生 2月2日 2月13日 
        l_parsed := regexp_replace(l_line,  
            '(\d+)\s+(\w+)\s+(\w+)\s+(\S+)\s+(\S+)\s+(\w+)\s+(\w+)\s*', 
            '\1:\2:\3:\4:\5:\6:\7', 1, 1); 
        if l_line != l_parsed then -- 正規表現が一致している 
            l_columns := apex_string.split(l_parsed,':'); 
            l_row := t_table_row( 
                l_columns(1), l_columns(2), l_columns(3), l_columns(4), l_columns(5), 
                l_columns(6), l_columns(7), null, null, null,
                null, null, null, null, null, 
                null, null, null, null, null 
            ); 
            pipe row(l_row);
            continue;  
        end if; 
        -- 16    80代       女性       市川市  (ここにデータがない)   2月16日  3月3日 
        -- もしくは無症状の以下
        -- 1       50代           女性       中国（武漢市）                     ﾁｬｰﾀｰ便           1月30日
        l_parsed := regexp_replace(l_line, 
            '(\d+)\s+(\w+)\s+(\w+)\s+(\S+)\s+(\S+)\s+(\w+)\s*', 
            '\1:\2:\3:\4:\5:\6',1,1); 
        if l_line != l_parsed then 
            l_columns := apex_string.split(l_parsed, ':'); 
            if regexp_like(l_columns(5),'^\d+月\d+日$') and regexp_like(l_columns(6),'^\d+月\d+日$') then
                l_row := t_table_row( 
                    l_columns(1), l_columns(2), l_columns(3), l_columns(4), null, 
                    l_columns(5), l_columns(6), null, null, null, 
                    null, null, null, null, null, 
                    null, null, null, null, null 
                );
             else
                l_row := t_table_row( 
                    l_columns(1), l_columns(2), l_columns(3), l_columns(4), l_columns(5), 
                    null, l_columns(6), '無症状', to_char(r.rn,'9999'), null, 
                    null, null, null, null, null, 
                    null, null, null, null, null 
                );
             end if;             
            pipe row(l_row);
            continue; 
        end if; 
        -- 無症状の以下
        -- 73   10代   男性   松戸市                          4月11日
        l_parsed := regexp_replace(l_line, 
            '(\d+)\s+(\w+)\s+(\w+)\s+(\S+)\s+(\S+)\s*', 
            '\1:\2:\3:\4:\5',1,1); 
        if l_line != l_parsed then 
            l_columns := apex_string.split(l_parsed, ':');
            l_row := t_table_row(
                l_columns(1), l_columns(2), l_columns(3), l_columns(4), null,
                null, l_columns(5), '無症状', null, null,
                null, null, null, null, null,
                null, null, null, null, null
            );
            pipe row(l_row);
            continue; 
        end if; 
    end loop; 
end ;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  parse_pdf_table_gunma
return t_table pipelined
as 
    l_columns apex_t_varchar2;
    l_line    varchar2(4000);
    l_location   covid19_patients.patient_location%type;
    l_sex        covid19_patients.patient_sex%type;
    l_occupation covid19_patients.patient_occupation%type;
    l_row t_table_row := null;
begin
    for r in (
        select col001
        from apex_data_parser.parse(
               p_content => (select content_blob from covid19_municipalities where name = '群馬県'),
               p_file_name => 'file_is.xlsx',
               p_skip_rows => 1
        )
    )
    loop
        l_line := r.col001;
        l_line := replace(l_line, '_x000C_');
        l_line := to_single_byte(l_line);
        if regexp_like(l_line, '\d+\s+\d+例目.*') then
            l_columns := apex_string.split(l_line, '\s+');
            if l_columns(4) in ('男性','女性') then
                l_location := null;
                l_sex      := l_columns(4);
                if l_columns.count > 4 then
                    l_occupation := l_columns(5);
                end if;
            elsif l_columns(5) in ('男性','女性') then
                l_location := null;
                l_sex := l_columns(5);
                if l_columns.count > 5 then
                    l_occupation := l_columns(6);
                end if;
            elsif l_columns.count > 5 and l_columns(6) in ('男性','女性') then
                l_location := l_columns(5);
                l_sex      := l_columns(6);
                if l_columns.count > 6 then
                    l_occupation := l_columns(7);
                end if;
            end if;
            l_row := t_table_row(
                l_columns(2), l_columns(3), l_columns(4), l_location, l_sex,
                l_occupation, null, null, null, null,
                null, null, null, null, null,
                null, null, null, null, null
            );
            pipe row(l_row);
        end if;
    end loop;
end ;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  parse_pdf_table_okinawa
return t_table pipelined 
as  
    l_columns apex_t_varchar2; 
    l_prev    varchar2(1000); 
    l_next    varchar2(1000); 
    l_line    varchar2(1000); 
    l_parsed  varchar2(1000); 
    l_row t_table_row := null; 
begin 
    for r in ( 
        select col001 
        from table( 
            apex_data_parser.parse( 
               p_content => (select content_blob from covid19_municipalities where name = '沖縄県'), 
               p_file_name => 'file_is.xlsx', 
               p_skip_rows => 1 
            ) 
        ) 
    ) 
    loop 
        l_line := r.col001; 
        l_line := replace(l_line, '_x000C_'); 
        l_line := to_single_byte(l_line); 
        l_line := replace(l_line, '　',' '); 
        -- dbms_output.put_line('DEBUG: ' || l_line);
        -- 143   男性    50代   4月22日   4月30日   東京都     会社員 調査中 
        l_parsed := regexp_replace(l_line, 
            '^(\d+)\s+(\w+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\w+)\s+(\w+)\s+(\S+)\s*.*', 
            '\1:\2:\3:\4:\5:\6:\7:\8',1,1); 
        if l_line != l_parsed then -- 正規表現が一致している 
            if l_row is not null then      -- 直前の行もデータ行なので出力する。 
                pipe row(l_row); l_row := null; -- 二重出力を抑止 
                -- debug_print('1',l_row); l_row := null;
            end if; 
            l_columns := apex_string.split(l_parsed,':'); 
            l_row := t_table_row( 
                l_columns(1), l_columns(2), l_columns(3), l_columns(4), l_columns(5), 
                l_columns(6), l_columns(7),
                null, null, null, 
                null, null, null, null, null, 
                null, null, null, null, null 
            ); 
            continue; 
        end if; 
        -- 142   女性    70代   4月21日   4月28日   沖縄市      無職 
        l_parsed := regexp_replace(l_line, 
            '^(\d+)\s+(\w+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\w+)\s+(\S+)\s*.*', 
            '\1:\2:\3:\4:\5:\6:\7',1,1); 
        if l_line != l_parsed then 
            if l_row is not null then 
                pipe row(l_row); l_row := null; 
                -- debug_print('2', l_row); l_row := null;
            end if; 
            l_columns := apex_string.split(l_parsed,':'); 
            l_row := t_table_row( 
                l_columns(1), l_columns(2), l_columns(3), l_columns(4), l_columns(5), 
                l_columns(6), l_columns(7),
                null, null, null, 
                null, null, null, null, null, 
                null, null, null, null, null 
            ); 
            if not regexp_like(l_columns(6),'\w+[都|道|府|県|市|町|村]$') then
                l_row.col006 := null;
                l_row.col007 := l_columns(6);
            end if;
            continue; 
        end if; 
        -- 141   女性    60代   4月18日   4月28日            無職 
        l_parsed := regexp_replace(l_line, 
            '^(\d+)\s+(\w+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s*.*', 
            '\1:\2:\3:\4:\5:\6',1,1); 
        if l_line != l_parsed then 
            if l_row is not null then 
                pipe row(l_row); l_row := null; 
                -- debug_print('3', l_row); l_row := null;
            end if; 
            l_columns := apex_string.split(l_parsed,':'); 
            l_row := t_table_row( 
                l_columns(1), l_columns(2), l_columns(3), l_columns(4), l_columns(5), 
                l_columns(6),
                null, null, null, null,
                null, null, null, null, null, 
                null, null, null, null, null 
            ); 
            if not regexp_like(l_columns(6),'\w+[都|道|府|県|市|町|村]$') then
                l_row.col006 := null;
                l_row.col007 := l_columns(6);
            end if;
            continue; 
        end if; 
        -- dbms_output.put_line('DEBUG: ' || l_line);
        -- データ行でなく、セルに複数行含まれているときの対応を行う。 
        l_next := regexp_replace(l_line, '(\S+).*', '\1', 1,1); 
        if l_row is not null then 
            if l_row.col006 is null then -- 居住地がnullであれば前後を居住地とする 
                l_row.col006 := l_prev || l_next; 
            end if; 
            pipe row(l_row); l_row := null; 
            -- debug_print('4', l_row); l_row := null;
        end if;
        l_prev := regexp_replace(l_line, '(\S+).*', '\1', 1,1); 
    end loop; 
    if l_row is not null then 
        pipe row(l_row); 
        -- debug_print('5', l_row);
        null;
    end if; 
end ;
/

