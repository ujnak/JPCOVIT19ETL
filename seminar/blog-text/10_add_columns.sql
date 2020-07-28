alter table covid19_municipalities add content_blob blob;
alter table covid19_municipalities add last_update_date timestamp with local time zone;
alter table covid19_municipalities add file_name varchar2(200);
alter table covid19_municipalities add content_url varchar2(400);
