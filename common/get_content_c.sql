/*
 * 与えられたURLを文字列データとして取り出す。
 *
 * 引数については、get_content_bと同じ。それに加えて
 * p_charset   元データの文字コード
 * 
 * 結果は必ずAL32UTF8となる。元データなので"AL32UTF8"または"JA16SJIS"のどちらかを指定する。
 */
create or replace function get_content_c
(
   p_code number,
   p_url  varchar2,
   p_cache number,
   p_charset varchar2
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
    l_blob := get_content_b(
        p_code => p_code,
        p_url  => p_url,
        p_cache => p_cache
    );
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
end get_content_c;
/

