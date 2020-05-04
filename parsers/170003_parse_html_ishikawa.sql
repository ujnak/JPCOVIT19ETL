create or replace function parse_html_ishikawa(
  p_html clob
)
return t_table pipelined
as 
  l_html clob;
  l_start number;
  l_end   number;
  l_patient varchar2(1000);
  l_info    varchar2(4000);
  l_start_h3 number;
  l_start_p  number;
  lc number := 1;
  l_patient_no number := 0;
  l_age varchar2(20);
  l_sex varchar2(20);
  l_home varchar2(200);
  l_date_pre varchar2(200);
  l_date varchar2(800);
begin
l_html := regexp_replace(p_html,'<o:p>.*?</o:p>','',1,0);
l_start := instr(l_html, '<h3>感染者');
l_end := instr(l_html, '<h3>感染者1</h3>');
l_html := substr(l_html, l_start, l_end - l_start + 862);
l_html := replace(l_html,'&nbsp;');
l_html := replace(l_html, '<p></p>');
l_html := replace(l_html, '　'); -- 全角スペースはまったく不要
-- h3タグとpタグのみ、読み取り対象。
loop
    lc := lc + 1;
    l_start_h3 := instr(l_html, '<h3>');
    l_start_p  := instr(l_html, '<p>');
    if l_start_h3 = 0 and l_start_p = 0 then
        exit;
    elsif l_start_h3 = 0 or (l_start_p < l_start_h3) then
        l_html := substr(l_html, l_start_p+3);
        l_end := instr(l_html, '</p>');
        if l_end > 0 then
            l_info := substr(l_html, 1, l_end-1);
            l_html := substr(l_html, l_end + 4);
            -- ここで取得情報の解析。
            l_info := trim(l_info);
            l_info := translate(l_info,'０１２３４５６７８９：:','0123456789  ');
            if instr(l_info, '(1)年代') > 0 then
                l_age := trim(substr(l_info, 6));
            elsif instr(l_info, '(2)性別') > 0 then
                l_sex := trim(substr(l_info, 6));
            elsif instr(l_info, '(3)居住地') > 0 then
                l_home := trim(substr(l_info, 7));
            elsif regexp_like(l_info, '^\s*\d+月\s*\d+日.*') then
                l_date_pre := substr(l_info, 1, instr(l_info,'日'));
                l_date_pre := replace(l_date_pre, ' '); -- 半角スペース
                if instr(l_info, '陽性と判明') > 0 then
                    l_date := l_date_pre;
                end if;
            elsif regexp_like(l_info, '（4）症状・経過<br />\s*\d+月\s*\d+日.*') then
                l_date_pre := substr(l_info, 17, instr(l_info,'日')-16);
                l_date_pre := replace(l_date_pre, ' '); -- 半角スペース
                if instr(l_info, '陽性と判明') > 0  then
                    l_date := l_date_pre;
                end if;
            elsif instr(l_info, '陽性と判明') > 0 or 
                  instr(l_info, '陽性を判明') > 0 or
                  instr(l_info, '陽性が判明') > 0 then
                l_date := l_date_pre;
            end if;
        else
            exit;
        end if;
    else
        l_html := substr(l_html, l_start_h3+4);
        l_end := instr(l_html, '</h3>');
        if l_end > 0 then
            -- ここで患者情報を出力する。
            if l_patient_no != 0 then
                -- 感染者126は、どうやっても読めない。
                if l_patient_no = 126 then
                    l_date := '4月14日';
                end if;
                pipe row(t_table_row(
                    to_char(l_patient_no, '9999999'),
                    l_date,
                    l_age,
                    l_sex,
                    l_home,
                    null, null, null, null, null,
                    null, null, null, null, null,
                    null, null, null, null, null
                ));
            end if;
            -- 次の行の準備
            l_patient := substr(l_html, 1, l_end-1);
            l_patient := translate(l_patient,'０１２３４５６７８９','0123456789');
            l_patient_no := to_number(regexp_replace(l_patient, '感染者(\d+).*', '\1'));
            l_html := substr(l_html, l_end + 5);
            l_date_pre := '';
            l_date := '';
        else
            exit;
        end if;    
    end if;
    -- 無限ループ回避 (感染者が増えたら数値を上げる)
    if lc > 4000 then
        exit;
    end if;
end loop;
-- 最後の一行
pipe row(t_table_row(to_char(l_patient_no, '9999999'),
                         l_date,
                         l_age,
                         l_sex,
                         l_home,
                         null, null, null, null, null,
                         null, null, null, null, null,
                         null, null, null, null, null
));
end parse_html_ishikawa;
/
