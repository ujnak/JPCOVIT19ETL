create or replace function get_content_as_clob
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
end get_content_as_clob;
