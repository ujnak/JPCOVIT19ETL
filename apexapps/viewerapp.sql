prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_200100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>6979475522839677864
,p_default_application_id=>30392
,p_default_id_offset=>6980873045884727360
,p_default_owner=>'COVID19JP'
);
end;
/
 
prompt APPLICATION 30392 - COVID19患者情報
--
-- Application Export:
--   Application:     30392
--   Name:            COVID19患者情報
--   Date and Time:   02:28 日曜日 5月 10, 2020
--   Exported By:     YUJI.NAKAKOSHI@ORACLE.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                      7
--       Items:                   21
--       Processes:                8
--       Regions:                  8
--       Buttons:                  9
--       Dynamic Actions:          7
--     Shared Components:
--       Logic:
--         Processes:              3
--         Build Options:          4
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:              1
--       Security:
--         Authentication:         2
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--           Page:                 9
--           Region:              16
--           Label:                7
--           List:                13
--           Popup LOV:            1
--           Calendar:             1
--           Breadcrumb:           1
--           Button:               3
--           Report:              12
--         LOVs:                   1
--         Shortcuts:              1
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--       Install scripts:          4
--   Version:         20.1.0.00.13
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'COVID19JP')
,p_name=>nvl(wwv_flow_application_install.get_application_name,unistr('COVID19\60A3\8005\60C5\5831'))
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'PATIENTS')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'3DA74744A15FE77071978D211A2E8EEE63B56EAA0C4E55F7EDC47EC9BBB04126'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'19.2'
,p_flow_language=>'ja'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\4F5C\6210\30A6\30A3\30B6\30FC\30C92020.04.09\304B\3089\4F5C\6210\3055\308C\305F\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\3002')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(12618647265536111486)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>unistr('COVID19\60A3\8005\60C5\5831')
,p_app_builder_icon_name=>'app-icon.svg'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'0.9'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>unistr('\3053\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306F\3001\73FE\6642\70B9\3067\306F\4F7F\7528\3067\304D\307E\305B\3093\3002')
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>unistr('\65B0\578B\30B3\30ED\30CA\60C5\5831')
,p_substitution_string_02=>'G_URL_TOKYO'
,p_substitution_value_02=>'https://stopcovid19.metro.tokyo.lg.jp/data/130001_tokyo_covid19_patients.csv'
,p_substitution_string_03=>'G_URL_KANAGAWA'
,p_substitution_value_03=>'http://www.pref.kanagawa.jp/osirase/1369/data/csv/patient.csv'
,p_substitution_string_04=>'G_URL_SAITAMA'
,p_substitution_value_04=>'https://opendata.pref.saitama.lg.jp/data/dataset/c3a8db28-b943-4fcc-82ec-b7febd460bec/resource/2e24e981-91c8-4654-ae98-2ef7548d6543/download/jokyo20200413.csv'
,p_substitution_string_05=>'G_URL_FUKUOKA'
,p_substitution_value_05=>'https://ckan.open-governmentdata.org/dataset/8a9688c2-7b9f-4347-ad6e-de3b339ef740/resource/c27769a2-8634-47aa-9714-7e21c4038dd4/download/400009_pref_fukuoka_covid19_patients.csv'
,p_substitution_string_06=>'G_URL_FUKUI'
,p_substitution_value_06=>'https://www.pref.fukui.lg.jp/doc/toukei-jouhou/covid-19_d/fil/covid19_patients.csv'
,p_substitution_string_07=>'G_URL_HOKKAIDO'
,p_substitution_value_07=>'https://www.harp.lg.jp/opendata/dataset/1369/resource/2828/patients.csv'
,p_substitution_string_08=>'G_URL_OSAKA'
,p_substitution_value_08=>'http://www.pref.osaka.lg.jp/attach/23711/00346644/youseisyajyouhou.xlsx'
,p_substitution_string_09=>'G_URL_HYOGO'
,p_substitution_value_09=>'https://web.pref.hyogo.lg.jp/kk03/documents/corona-kanjajokyou.xlsx'
,p_substitution_string_10=>'G_URL_AOMORI'
,p_substitution_value_10=>'https://opendata.pref.aomori.lg.jp/dataset/1531/resource/11178/20200411_%E9%99%BD%E6%80%A7%E6%82%A3%E8%80%85%E9%96%A2%E4%BF%82.csv'
,p_substitution_string_11=>'G_URL_NAGASAKI'
,p_substitution_value_11=>'https://data.bodik.jp/dataset/09951e04-dc5d-42e9-9a49-37443be6787e/resource/de7ce61e-1849-47a1-b758-bca3f809cdf8/download/20200416prefnagasakicovidpatients.csv'
,p_substitution_string_12=>'G_URL_KUMAMOTO'
,p_substitution_value_12=>'https://www.pref.kumamoto.jp/common/UploadFileOutput.ashx?c_id=3&id=22038&sub_id=7&flid=231833'
,p_substitution_string_13=>'G_URL_OITA'
,p_substitution_value_13=>'https://data.bodik.jp/dataset/f632f467-716c-46aa-8838-0d535f98b291/resource/3714d264-70f3-4518-a57a-8391e0851d7d/download/440001oitacovid19patients.csv'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20200510002336'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists/デスクトップ・ナビゲーション・メニュー
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(12618648083260111488)
,p_name=>unistr('\30C7\30B9\30AF\30C8\30C3\30D7\30FB\30CA\30D3\30B2\30FC\30B7\30E7\30F3\30FB\30E1\30CB\30E5\30FC')
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12619097103801111686)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\30DB\30FC\30E0')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/デスクトップ・ナビゲーション・バー
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(12619086359380111621)
,p_name=>unistr('\30C7\30B9\30AF\30C8\30C3\30D7\30FB\30CA\30D3\30B2\30FC\30B7\30E7\30F3\30FB\30D0\30FC')
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13726605186878941785)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\30A2\30C3\30D7\30C7\30FC\30C8')
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:::'
,p_list_item_icon=>'fa-refresh'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12765262381350970537)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>unistr('\3053\306E\30DA\30FC\30B8\306B\3064\3044\3066')
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-info-circle-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files/app_icon_svg
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '3C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667222076696577426F783D22302030203634203634222077696474683D22363422206865696768743D223634223E3C726563742077696474683D2231303025';
wwv_flow_api.g_varchar2_table(2) := '22206865696768743D2231303025222066696C6C3D222343413538394422202F3E3C67206F7061636974793D222E32223E3C7061746820643D224D333220323661322E3520322E3520302031203020322E3520322E3541322E35303320322E3530332030';
wwv_flow_api.g_varchar2_table(3) := '203020302033322032367A6D30203461312E3520312E3520302031203120312E352D312E3541312E35303220312E3530322030203020312033322033307A222F3E3C7061746820643D224D34322E3533362033362E3832386C2D322E3637332D322E3637';
wwv_flow_api.g_varchar2_table(4) := '324131382E3937332031382E39373320302030203020343020333263302D352E3835352D322E3732332D31312E3439332D372E3636382D31352E383734612E352E352030203020302D2E36363420304332362E3732332032302E3530372032342032362E';
wwv_flow_api.g_varchar2_table(5) := '3134352032342033326131382E3937332031382E393733203020302030202E31333720322E3135366C2D322E36373320322E36373341342E39363720342E3936372030203020302032302034302E3336345634372E35612E352E35203020302030202E35';
wwv_flow_api.g_varchar2_table(6) := '2E3568312E30373561332E30303220332E30303220302030203020312E3935322D2E3732326C342E332D332E363835632E3431312E3538322E38343720312E31353520312E33323220312E37313261322E30303120322E30303120302030203020312E35';
wwv_flow_api.g_varchar2_table(7) := '32372E363935682E38323476312E35612E352E3520302030203020312030563436682E38323461322E30303120322E30303120302030203020312E3532372D2E3639352032332E37382032332E373820302030203020312E3332332D312E3731326C342E';
wwv_flow_api.g_varchar2_table(8) := '32393820332E36383461332E30303220332E30303220302030203020312E3935332E3732334834332E35612E352E35203020302030202E352D2E35762D372E31333661342E393720342E39372030203020302D312E3436342D332E3533367A4D33322031';
wwv_flow_api.g_varchar2_table(9) := '372E3137334132322E3839372032322E3839372030203020312033362E363237203233682D392E3235344132322E3839372032322E3839372030203020312033322031372E3137337A4D32322E3837362034362E3532613220322030203020312D312E33';
wwv_flow_api.g_varchar2_table(10) := '2E343831483231762D362E36333661332E39373320332E39373320302030203120312E3137312D322E3832386C322E31342D322E31346132302E3330312032302E33303120302030203020322E39353920372E3335377A6D31312E3231342D312E383633';
wwv_flow_api.g_varchar2_table(11) := '61312E30313420312E3031342030203020312D2E3736362E3334344833322E35762D392E35612E352E352030203020302D312030563435682D2E38323461312E30313420312E3031342030203020312D2E3736362D2E3334344131392E342031392E3420';
wwv_flow_api.g_varchar2_table(12) := '30203020312032352033326131382E3434362031382E34343620302030203120312E3835382D386831302E3238344131382E3434362031382E3434362030203020312033392033326131392E342031392E342030203020312D342E39312031322E363536';
wwv_flow_api.g_varchar2_table(13) := '7A4D3433203437682D2E353735613220322030203020312D312E3330322D2E3438326C2D342E3339332D332E3736356132302E332032302E3320302030203020322E3935382D372E3335386C322E313420322E313441332E39373520332E393735203020';
wwv_flow_api.g_varchar2_table(14) := '3020312034332034302E3336347A222F3E3C2F673E3C7061746820643D224D33322031372E3137334132322E3839372032322E3839372030203020312033362E363237203233682D392E3235344132322E3839372032322E383937203020302031203332';
wwv_flow_api.g_varchar2_table(15) := '2031372E3137337A4D32322E3837362034362E3532613220322030203020312D312E332E343831483231762D362E36333661332E39373320332E39373320302030203120312E3137312D322E3832386C322E31342D322E31346132302E3330312032302E';
wwv_flow_api.g_varchar2_table(16) := '33303120302030203020322E39353920372E3335377A4D3433203437682D2E353735613220322030203020312D312E3330322D2E3438326C2D342E3339332D332E3736356132302E332032302E3320302030203020322E3935382D372E3335386C322E31';
wwv_flow_api.g_varchar2_table(17) := '3420322E313441332E39373520332E3937352030203020312034332034302E3336347A222066696C6C3D222366636662666122206F7061636974793D222E34222F3E3C7061746820643D224D33372E3134322032344832362E3835384131382E34343620';
wwv_flow_api.g_varchar2_table(18) := '31382E3434362030203020302032352033326131392E342031392E3420302030203020342E39312031322E36353620312E30313420312E303134203020302030202E3736362E333434682E383234762D392E35612E352E35203020302031203120305634';
wwv_flow_api.g_varchar2_table(19) := '35682E38323461312E30313420312E303134203020302030202E3736362D2E3334344131392E342031392E342030203020302033392033326131382E3434362031382E3434362030203020302D312E3835382D387A4D333220333161322E3520322E3520';
wwv_flow_api.g_varchar2_table(20) := '302031203120322E352D322E3541322E35303320322E3530332030203020312033322033317A222066696C6C3D222366666622206F7061636974793D222E3935222F3E3C7061746820643D224D333220333061312E3520312E3520302031203120312E35';
wwv_flow_api.g_varchar2_table(21) := '2D312E3541312E35303220312E3530322030203020312033322033307A222066696C6C3D222366636662666122206F7061636974793D222E36222F3E3C2F7376673E';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(12619087654337111628)
,p_file_name=>'app-icon.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/app_icon_css
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E6170702D69636F6E207B0A202020206261636B67726F756E642D696D6167653A2075726C286170702D69636F6E2E737667293B0A202020206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0A202020206261636B67726F756E';
wwv_flow_api.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20234341353839443B0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(12619087962136111630)
,p_file_name=>'app-icon.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(12618645239884111482)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(12618645447480111484)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(12618645799992111485)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(12618646069877111485)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH_CB'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(12618646408306111485)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(12618646744753111485)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(12618646998779111485)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
end;
/
prompt --application/shared_components/security/authorizations/管理権限
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(12619089496587111632)
,p_name=>unistr('\7BA1\7406\6A29\9650')
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>unistr('\6A29\9650\304C\4E0D\5341\5206\3067\3059\3002\30E6\30FC\30B6\30FC\306F\7BA1\7406\8005\3067\306F\3042\308A\307E\305B\3093')
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes/update_advice
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(12801991915259060029)
,p_process_sequence=>1
,p_process_point=>'ON_NEW_INSTANCE'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_ADVICE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_code apex_application_page_proc.process_source%type;',
'  lc number;',
'  in_use_exception exception;',
'  pragma exception_init(in_use_exception, -54);',
'  C_MUNICIPALITY constant number := 130001;',
'begin',
'  select 1 into lc from covid19_last_refresh',
'  where table_name = ''covid19_combined_telephone_advice_center'' ',
'  and municipality_code = C_MUNICIPALITY ',
'  and systimestamp > last_refresh_time + interval ''6'' hour;',
'  select count(*) into lc from covid19_combined_telephone_advice_center ',
unistr('  where "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = C_MUNICIPALITY and "\53D7\4ED8_\5E74\6708\65E5" > (trunc(sysdate) - 3);'),
'  if lc = 0 then',
'    select process_source into l_code',
'    from  apex_application_page_proc',
'    where application_id = :APP_ID',
'      and page_name = ''DATA_UPDATE''',
'      and process_name = ''UPDATE_ADVICE'';',
'    apex_exec.execute_plsql(',
'      p_plsql_code => l_code',
'    );',
'  end if;',
'exception',
'  when no_data_found then',
'    null;',
'  when in_use_exception then',
'    null;',
'end;'))
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select 1 from covid19_last_refresh',
'  where table_name = ''covid19_combined_telephone_advice_center'' ',
'  and municipality_code = 130001 ',
'  and systimestamp > last_refresh_time + interval ''6'' hour;'))
,p_process_when_type=>'EXISTS'
,p_required_patch=>wwv_flow_api.id(13209712718223391405)
);
end;
/
prompt --application/shared_components/logic/application_processes/update_tokyo
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(12802347192397595784)
,p_process_sequence=>1
,p_process_point=>'ON_NEW_INSTANCE'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_TOKYO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_code apex_application_page_proc.process_source%type;',
'  lc number;',
'  l_sql_parameters apex_exec.t_parameters;',
'  in_use_exception exception;',
'  pragma exception_init(in_use_exception, -54);',
'  C_MUNICIPALITY constant number := 130001;',
'begin',
'  apex_exec.add_parameter( l_sql_parameters, ''P2_URL_TOKYO'',  :G_URL_TOKYO);',
'  select 1 into lc from covid19_last_refresh',
'  where table_name = ''covid19_patients''',
'  and municipality_code = C_MUNICIPALITY',
'  and systimestamp > last_refresh_time + interval ''1'' hour;',
'  select count(*) into lc from covid19_patients ',
unistr('  where "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = C_MUNICIPALITY and "\516C\8868_\5E74\6708\65E5" > (trunc(sysdate) - 1);'),
'  if lc = 0 then',
'    select process_source into l_code',
'    from  apex_application_page_proc',
'    where application_id = :APP_ID',
'      and page_name = ''DATA_UPDATE''',
'      and process_name = ''UPDATE_TOKYO'';',
'    apex_exec.execute_plsql(',
'      p_plsql_code => l_code,',
'      p_auto_bind_items => false,',
'      p_sql_parameters  => l_sql_parameters',
'    );',
'  end if;',
'exception',
'  when no_data_found then',
'    null;',
'  when in_use_exception then',
'    null;',
'end;'))
,p_process_when_type=>'NEVER'
,p_required_patch=>wwv_flow_api.id(13241462976791644300)
);
end;
/
prompt --application/shared_components/logic/application_processes/update_call_center
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(12802358894612604764)
,p_process_sequence=>1
,p_process_point=>'ON_NEW_INSTANCE'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_CALL_CENTER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_code apex_application_page_proc.process_source%type;',
'  lc number;',
'  in_use_exception exception;',
'  pragma exception_init(in_use_exception, -54);',
'  C_MUNICIPALITY constant number := 130001;',
'begin',
'  select 1 into lc from covid19_last_refresh',
'  where table_name = ''covid19_call_center'' ',
'  and municipality_code = C_MUNICIPALITY',
'  and systimestamp > last_refresh_time + interval ''6'' hour;',
'  select count(*) into lc from covid19_call_center ',
unistr('  where "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = C_MUNICIPALITY and "\53D7\4ED8_\5E74\6708\65E5" > (trunc(sysdate) - 3);'),
'  if lc = 0 then',
'    select process_source into l_code',
'    from  apex_application_page_proc',
'    where application_id = :APP_ID',
'      and page_name = ''DATA_UPDATE''',
'      and process_name = ''UPDATE_CALL_CENTER'';',
'    apex_exec.execute_plsql(',
'      p_plsql_code => l_code',
'    );',
'  end if;',
'exception',
'  when no_data_found then',
'    null;',
'  when in_use_exception then',
'    null;',
'end;'))
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select 1 from covid19_last_refresh',
'  where table_name = ''covid19_call_center'' ',
'  and municipality_code = 130001',
'  and systimestamp > last_refresh_time + interval ''6'' hour;'))
,p_process_when_type=>'EXISTS'
,p_required_patch=>wwv_flow_api.id(13209710387402387908)
);
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(12619092421805111643)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(12619092421805111643)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12619092726812111678)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>unistr('\30E6\30FC\30B6\30FC\540D\3092\8A18\61B6')
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(12619090082601111635)
,p_group_name=>unistr('\7BA1\7406')
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(12618647616481111487)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12618647760514111487)
,p_short_name=>unistr('\30DB\30FC\30E0')
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(12618648378006111491)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618648646820111493)
,p_page_template_id=>wwv_flow_api.id(12618648378006111491)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618648964683111494)
,p_page_template_id=>wwv_flow_api.id(12618648378006111491)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618649339097111494)
,p_page_template_id=>wwv_flow_api.id(12618648378006111491)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618649619571111494)
,p_page_template_id=>wwv_flow_api.id(12618648378006111491)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618649854274111494)
,p_page_template_id=>wwv_flow_api.id(12618648378006111491)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618650218363111495)
,p_page_template_id=>wwv_flow_api.id(12618648378006111491)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618650496220111495)
,p_page_template_id=>wwv_flow_api.id(12618648378006111491)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618650751612111495)
,p_page_template_id=>wwv_flow_api.id(12618648378006111491)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(12618651196323111497)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618651508766111498)
,p_page_template_id=>wwv_flow_api.id(12618651196323111497)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618651756875111498)
,p_page_template_id=>wwv_flow_api.id(12618651196323111497)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618652126442111498)
,p_page_template_id=>wwv_flow_api.id(12618651196323111497)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618652422778111498)
,p_page_template_id=>wwv_flow_api.id(12618651196323111497)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618652666101111499)
,p_page_template_id=>wwv_flow_api.id(12618651196323111497)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618652996140111499)
,p_page_template_id=>wwv_flow_api.id(12618651196323111497)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618653271590111499)
,p_page_template_id=>wwv_flow_api.id(12618651196323111497)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618653645308111499)
,p_page_template_id=>wwv_flow_api.id(12618651196323111497)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618653911458111500)
,p_page_template_id=>wwv_flow_api.id(12618651196323111497)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(12618654334910111500)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-container">',
'  <header class="t-Login-containerHeader">#REGION_POSITION_01#</header>',
'  <main class="t-Login-containerBody" id="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</main>',
'  <footer class="t-Login-containerFooter">#REGION_POSITION_02#</footer>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618654608465111500)
,p_page_template_id=>wwv_flow_api.id(12618654334910111500)
,p_name=>'Body Footer'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618654938421111501)
,p_page_template_id=>wwv_flow_api.id(12618654334910111500)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618655222887111501)
,p_page_template_id=>wwv_flow_api.id(12618654334910111500)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(12618656601537111502)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-info" id="t_Body_info">#REGION_POSITION_02#</div>',
'        <div class="t-Body-contentInner" role="main">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618656848604111503)
,p_page_template_id=>wwv_flow_api.id(12618656601537111502)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618657210747111503)
,p_page_template_id=>wwv_flow_api.id(12618656601537111502)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618657507386111503)
,p_page_template_id=>wwv_flow_api.id(12618656601537111502)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618657750470111503)
,p_page_template_id=>wwv_flow_api.id(12618656601537111502)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618658139308111504)
,p_page_template_id=>wwv_flow_api.id(12618656601537111502)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618658413871111504)
,p_page_template_id=>wwv_flow_api.id(12618656601537111502)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618658682515111504)
,p_page_template_id=>wwv_flow_api.id(12618656601537111502)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618659038676111504)
,p_page_template_id=>wwv_flow_api.id(12618656601537111502)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618659344607111504)
,p_page_template_id=>wwv_flow_api.id(12618656601537111502)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(12618659661155111504)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618659958024111505)
,p_page_template_id=>wwv_flow_api.id(12618659661155111504)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618660291637111505)
,p_page_template_id=>wwv_flow_api.id(12618659661155111504)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618660605645111505)
,p_page_template_id=>wwv_flow_api.id(12618659661155111504)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618660847109111505)
,p_page_template_id=>wwv_flow_api.id(12618659661155111504)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618661210940111505)
,p_page_template_id=>wwv_flow_api.id(12618659661155111504)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618661456488111506)
,p_page_template_id=>wwv_flow_api.id(12618659661155111504)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618661833106111506)
,p_page_template_id=>wwv_flow_api.id(12618659661155111504)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(12618662158027111506)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618662458698111506)
,p_page_template_id=>wwv_flow_api.id(12618662158027111506)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618662829916111506)
,p_page_template_id=>wwv_flow_api.id(12618662158027111506)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618663122940111507)
,p_page_template_id=>wwv_flow_api.id(12618662158027111506)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(12618663735593111508)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" aria-label="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button'
||'>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618664006614111508)
,p_page_template_id=>wwv_flow_api.id(12618663735593111508)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618664332042111508)
,p_page_template_id=>wwv_flow_api.id(12618663735593111508)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618664565955111508)
,p_page_template_id=>wwv_flow_api.id(12618663735593111508)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618664852649111508)
,p_page_template_id=>wwv_flow_api.id(12618663735593111508)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618665209304111509)
,p_page_template_id=>wwv_flow_api.id(12618663735593111508)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618665482020111509)
,p_page_template_id=>wwv_flow_api.id(12618663735593111508)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618665795623111509)
,p_page_template_id=>wwv_flow_api.id(12618663735593111508)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618666059636111509)
,p_page_template_id=>wwv_flow_api.id(12618663735593111508)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(12618666446766111509)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618666821407111510)
,p_page_template_id=>wwv_flow_api.id(12618666446766111509)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618667073023111510)
,p_page_template_id=>wwv_flow_api.id(12618666446766111509)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618667390924111510)
,p_page_template_id=>wwv_flow_api.id(12618666446766111509)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618667718720111510)
,p_page_template_id=>wwv_flow_api.id(12618666446766111509)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618668008812111510)
,p_page_template_id=>wwv_flow_api.id(12618666446766111509)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618668306665111511)
,p_page_template_id=>wwv_flow_api.id(12618666446766111509)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618668605774111511)
,p_page_template_id=>wwv_flow_api.id(12618666446766111509)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(12618669028501111511)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618669331671111511)
,p_page_template_id=>wwv_flow_api.id(12618669028501111511)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618669633557111512)
,p_page_template_id=>wwv_flow_api.id(12618669028501111511)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618669909394111512)
,p_page_template_id=>wwv_flow_api.id(12618669028501111511)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(12619063026514111590)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(12619063719926111592)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(12619063794326111592)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12618670466056111512)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618670813335111514)
,p_plug_template_id=>wwv_flow_api.id(12618670466056111512)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12618974192448111518)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12618974357894111518)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618974663476111519)
,p_plug_template_id=>wwv_flow_api.id(12618974357894111518)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618975033094111519)
,p_plug_template_id=>wwv_flow_api.id(12618974357894111518)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12618975222412111519)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618975518281111519)
,p_plug_template_id=>wwv_flow_api.id(12618975222412111519)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618975806152111520)
,p_plug_template_id=>wwv_flow_api.id(12618975222412111519)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12618977360010111521)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'))
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618977711011111522)
,p_plug_template_id=>wwv_flow_api.id(12618977360010111521)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618977975001111522)
,p_plug_template_id=>wwv_flow_api.id(12618977360010111521)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12618984597200111528)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls"><button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button></div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618984911332111528)
,p_plug_template_id=>wwv_flow_api.id(12618984597200111528)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618985198387111528)
,p_plug_template_id=>wwv_flow_api.id(12618984597200111528)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/content_block
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12618989958941111532)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header">',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--title">',
'      <span class="t-ContentBlock-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h1 class="t-ContentBlock-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'      #EDIT#',
'    </div>',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--buttons">#CHANGE#</div>',
'  </div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>',
''))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12618991951443111533)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618992291516111533)
,p_plug_template_id=>wwv_flow_api.id(12618991951443111533)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12618994055892111534)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618994418818111534)
,p_plug_template_id=>wwv_flow_api.id(12618994055892111534)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_popup
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12618996400720111536)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionPopup" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Popup'
,p_internal_name=>'INLINE_POPUP'
,p_theme_id=>42
,p_theme_class_id=>24
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1483922538999385230
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12618996696403111536)
,p_plug_template_id=>wwv_flow_api.id(12618996400720111536)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12618999705964111538)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12619000338227111539)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">#BODY#</div>',
'  <div class="t-Login-buttons">#NEXT#</div>',
'  <div class="t-Login-links">#EDIT##CREATE#</div>',
'  <div class="t-Login-subRegions">#SUB_REGIONS#</div>',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12619000616297111539)
,p_plug_template_id=>wwv_flow_api.id(12619000338227111539)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12619001634680111540)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12619001902785111540)
,p_plug_template_id=>wwv_flow_api.id(12619001634680111540)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12619002211710111541)
,p_plug_template_id=>wwv_flow_api.id(12619001634680111540)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/tabs_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12619008375908111545)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES# apex-tabs-region" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12619008699161111546)
,p_plug_template_id=>wwv_flow_api.id(12619008375908111545)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12619009005593111546)
,p_plug_template_id=>wwv_flow_api.id(12619008375908111545)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/title_bar
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12619011011806111547)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(12619012042040111548)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12619012254307111548)
,p_plug_template_id=>wwv_flow_api.id(12619012042040111548)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(12619037306772111568)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_list_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'Link Classes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/cards
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(12619041253138111572)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item is-active #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
,p_reference_id=>2885322685880632508
);
end;
/
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(12619046893952111576)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
end;
/
prompt --application/shared_components/user_interface/templates/list/media_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(12619048503125111577)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(12619051321472111579)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(12619052323958111580)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ iconType: ''fa'', callout: e.hasClass("js-menu-callout")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(12619052929128111581)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(12619053250810111581)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_default_template_options=>'js-defaultCollapsed'
,p_preset_template_options=>'js-navCollapsed--hidden:t-TreeNav--styleA'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a06_label=>'Link Target'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(12619054934966111583)
,p_list_template_current=>'<li class="t-Tabs-item is-active #A03#" id="#A01#"><a href="#LINK#" class="t-Tabs-link #A04#"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-Tabs-link #A04#"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_mega_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(12619056539901111584)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--noSub is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--noSub #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_list_template_name=>'Top Navigation Mega Menu'
,p_internal_name=>'TOP_NAVIGATION_MEGA_MENU'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-MegaMenu #COMPONENT_CSS_CLASSES#" id="t_MenuNav" style="display:none;">',
'  <div class="a-Menu-content t-MegaMenu-container">',
'    <div class="t-MegaMenu-body">',
'    <ul class="t-MegaMenu-list t-MegaMenu-list--top">'))
,p_list_template_after_rows=>' </ul></div></div></div>'
,p_before_sub_list=>'<ul class="t-MegaMenu-list t-MegaMenu-list--sub">'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_sub_list_item_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--hasSub is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--hasSub #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Description'
,p_a04_label=>'List Item Class'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_a07_label=>'Badge Class'
,p_a08_label=>'Menu Item Class'
,p_reference_id=>1665447133514362075
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(12619058272989111586)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("#t_MenuNav", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="t_MenuNav"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(12619059318381111587)
,p_list_template_current=>'<li class="t-NavTabs-item #A03# is-active" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class'
||'="t-NavTabs-badge #A05#">#A02#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-NavTabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class="t-NavTab'
||'s-badge #A05#">#A02#</span></a></li>'
,p_list_template_name=>'Top Navigation Tabs'
,p_internal_name=>'TOP_NAVIGATION_TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-NavTabs--inlineLabels-lg:t-NavTabs--displayLabels-sm'
,p_list_template_before_rows=>'<ul class="t-NavTabs #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_navtabs">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a02_label=>'Badge Value'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_a05_label=>'Badge Class'
,p_reference_id=>1453011561172885578
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(12619060911602111588)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></'
||'div></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>',
''))
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report/prefecture_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(9696129459962340549)
,p_row_template_name=>'Prefecture List'
,p_internal_name=>'PREFECTURE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-ContentRow-item #ITEM_CLASSES#">',
'  <div class="t-ContentRow-wrap">',
'<!--    <div class="t-ContentRow-selection">#SELECTION#</div> -->',
'    <div class="t-ContentRow-iconWrap">',
'      <!-- <span class="t-ContentRow-icon #ICON_CLASS#">#ICON_HTML#</span> -->',
'    </div>',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        <h3 class="t-ContentRow-title">#TITLE#</h3>',
'        <div class="t-ContentRow-description">#DESCRIPTION#</div>',
'        <div class="urlbox">#OFFICIAL_SITE_URL#</div>',
'        <div class="urlbox"><a href="#OPEN_DATA_URL#" taregt="_blank">#OPEN_DATA_URL#</a></div>',
'      </div>',
'      <!-- <div class="t-ContentRow-misc">#MISC#</div> -->',
unistr('      <div class="t-ContentRow-actions"><a class="t-Button" href="#ACTIONS#">\30A2\30C3\30D7\30C7\30FC\30C8</a></div>'),
unistr('      <div class="t-ContentRow-misc"><a class="t-Button" href="#EDIT_LINK#">\7DE8\96C6</a></div>'),
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':ACTIONS is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-ContentRow-item #ITEM_CLASSES#">',
'  <div class="t-ContentRow-wrap">',
'<!--    <div class="t-ContentRow-selection">#SELECTION#</div> -->',
'    <div class="t-ContentRow-iconWrap">',
'      <!-- <span class="t-ContentRow-icon #ICON_CLASS#">#ICON_HTML#</span> -->',
'    </div>',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        <h3 class="t-ContentRow-title">#TITLE#</h3>',
'        <div class="t-ContentRow-description">#DESCRIPTION#</div>',
'        <div class="urlbox">#OFFICIAL_SITE_URL#</div>',
'        <div class="urlbox"><a href="#OPEN_DATA_URL#" taregt="_blank">#OPEN_DATA_URL#</a></div>',
'      </div>',
'      <!-- <div class="t-ContentRow-misc">#MISC#</div> -->',
unistr('      <div class="t-ContentRow-misc"><a class="t-Button" href="#EDIT_LINK#">\7DE8\96C6</a></div>'),
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition2=>':ACTIONS is null'
,p_row_template_before_rows=>'<ul class="t-ContentRow #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(12619013343435111549)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_alerts" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/badge_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(12619013472693111550)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
' <span class="t-BadgeList-wrap u-color">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
' </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/cards
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(12619017483598111553)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/comments
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(12619022912971111556)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body">',
'        <div class="t-Comments-info">',
'            #USER_NAME# <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/content_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(12619024110459111557)
,p_row_template_name=>'Content Row'
,p_internal_name=>'CONTENT_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-ContentRow-item #ITEM_CLASSES#">',
'  <div class="t-ContentRow-wrap">',
'    <div class="t-ContentRow-selection">#SELECTION#</div>',
'    <div class="t-ContentRow-iconWrap">',
'      <span class="t-ContentRow-icon #ICON_CLASS#">#ICON_HTML#</span>',
'    </div>',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        <h3 class="t-ContentRow-title">#TITLE#</h3>',
'        <div class="t-ContentRow-description">#DESCRIPTION#</div>',
'      </div>',
'      <div class="t-ContentRow-misc">#MISC#</div>',
'      <div class="t-ContentRow-actions">#ACTIONS#</div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-ContentRow #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1797843454948280151
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(12619027281445111559)
,p_row_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_row_template_condition1=>':LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <div class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_preset_template_options=>'t-MediaList--stack'
,p_reference_id=>2092157460408299055
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(12619030336014111561)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(12619030488845111561)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" id="report_table_#REGION_STATIC_ID#" aria-label="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(12619030488845111561)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(12619033062887111564)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline" data-region-id="#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(12619033455262111564)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(12619035452501111566)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(12619062291620111589)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(12619062418698111589)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(12619062482415111590)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(12619062584277111590)
,p_template_name=>'Optional - Floating'
,p_internal_name=>'OPTIONAL_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>1607675164727151865
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(12619062679119111590)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(12619062781904111590)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(12619062903388111590)
,p_template_name=>'Required - Floating'
,p_internal_name=>'REQUIRED_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1607675344320152883
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(12619065117318111593)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(12619065277296111594)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="apex-item-text"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(12619065232868111593)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(12619066478057111599)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(12618666446766111509)
,p_default_dialog_template=>wwv_flow_api.id(12618662158027111506)
,p_error_template=>wwv_flow_api.id(12618654334910111500)
,p_printer_friendly_template=>wwv_flow_api.id(12618666446766111509)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(12618654334910111500)
,p_default_button_template=>wwv_flow_api.id(12619063719926111592)
,p_default_region_template=>wwv_flow_api.id(12619001634680111540)
,p_default_chart_template=>wwv_flow_api.id(12619001634680111540)
,p_default_form_template=>wwv_flow_api.id(12619001634680111540)
,p_default_reportr_template=>wwv_flow_api.id(12619001634680111540)
,p_default_tabform_template=>wwv_flow_api.id(12619001634680111540)
,p_default_wizard_template=>wwv_flow_api.id(12619001634680111540)
,p_default_menur_template=>wwv_flow_api.id(12619011011806111547)
,p_default_listr_template=>wwv_flow_api.id(12619001634680111540)
,p_default_irr_template=>wwv_flow_api.id(12618999705964111538)
,p_default_report_template=>wwv_flow_api.id(12619030488845111561)
,p_default_label_template=>wwv_flow_api.id(12619062584277111590)
,p_default_menu_template=>wwv_flow_api.id(12619065117318111593)
,p_default_calendar_template=>wwv_flow_api.id(12619065232868111593)
,p_default_list_template=>wwv_flow_api.id(12619046893952111576)
,p_default_nav_list_template=>wwv_flow_api.id(12619058272989111586)
,p_default_top_nav_list_temp=>wwv_flow_api.id(12619058272989111586)
,p_default_side_nav_list_temp=>wwv_flow_api.id(12619053250810111581)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(12618975222412111519)
,p_default_dialogr_template=>wwv_flow_api.id(12618974192448111518)
,p_default_option_label=>wwv_flow_api.id(12619062584277111590)
,p_default_required_label=>wwv_flow_api.id(12619062903388111590)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(12619052929128111581)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.5/')
,p_files_version=>66
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(12304446870329765778)
,p_theme_id=>42
,p_name=>'Vita - Redwood'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_config=>'{"customCSS":"/* Start Overrides */\nbody,\ninput,\nbutton,\ntextarea,\nselect {\n  font-family: \"Oracle Sans\", -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Oxygen, Ubuntu, Cantarell, \"Fira Sans\", \"Droid Sans\", \"Helvetica Neue\", s'
||'ans-serif;\n}\n\n/* Oracle Logo */\n.t-Header-logo {\n  font-size: 16px;\n  font-weight: 700;\n}\n\n.t-Header-logo-link {\n  position: relative;\n  display: inline-flex;\n  align-items: center;\n}\n\n.t-Header-logo-link:before {\n  content: '''';\n  ba'
||'ckground-image: url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzYiIGhlaWdodD0iMjQiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZmlsbD0iI0M3NDYzNCIgZD0iTTI0LjYyOCAwQzMwLjkyMyAwIDM2IDUuMzc0IDM2IDEyLjAwMyAzNiAxOC42MzIgMzAuOTIzIDI0IDI0LjYyOCAy'
||'NGwtMTMuMjQtLjAwNkM1LjA5OSAyMy45OTQgMCAxOC42MzIgMCAxMi4wMDNTNS4wOTkgMCAxMS4zODkgMGgxMy4yMzl6bS0uMzAyIDQuMDI1SDExLjY4MmMtNC4wNyAwLTcuMzY5IDMuNTc0LTcuMzY5IDcuOTk3IDAgNC40MTggMy4zIDguMDAzIDcuMzcgOC4wMDNoMTIuNjQzYzQuMDgyIDAgNy4zNzctMy41ODUgNy4zNzctOC4wMD'
||'MgMC00LjQyMy0zLjI5NS03Ljk5Ny03LjM3Ny03Ljk5N3oiLz48L3N2Zz4=);\n  background-repeat: no-repeat;\n  background-position: center center;\n  width: 36px;\n  height: 24px;\n  display: block;\n  margin-left: 4px;\n  margin-right: 12px;\n  position: relative'
||';\n  z-index: -1;\n}\n\n/* Left Nav */\n.t-TreeNav--styleA .a-TreeView-node--topLevel > .a-TreeView-content .a-TreeView-label,\n.t-TreeNav--styleB .a-TreeView-node--topLevel > .a-TreeView-content .a-TreeView-label {\n  font-weight: 500;\n}\n\n.t-Tree'
||'Nav--styleA .a-TreeView-node--topLevel > .a-TreeView-content.is-current .a-TreeView-label,\n.t-TreeNav--styleB .a-TreeView-node--topLevel > .a-TreeView-content.is-current .a-TreeView-label,\n.t-TreeNav--styleA .a-TreeView-node--topLevel > .a-TreeView'
||'-content.is-current--top .a-TreeView-label,\n.t-TreeNav--styleB .a-TreeView-node--topLevel > .a-TreeView-content.is-current--top .a-TreeView-label {\n  font-weight: 700;\n}\n\n/* Comments */\n.t-Comments-userIcon,\n.t-Comments-userImg {\n  border-rad'
||'ius: 4px;\n}\n\n.t-Comments--chat .t-Comments-comment {\n  background-color: #ECE9E6;\n}\n\n.t-Comments--chat .t-Comments-comment:after {\n  border-right-color: #ECE9E6;\n}\n\n/* Menu */\n.a-Menu-content {\n  border: none;\n  box-shadow: 0 12px 24px '
||'-12px rgba(0, 0, 0, 0.3);\n  background-color: #FFF;\n  border-radius: 4px;\n  padding: 8px 0;\n  min-width: 200px;\n}\n\n.a-Menu-content .a-Menu-statusCol,\n.a-Menu .a-Menu-item .a-Menu-statusCol {\n  padding: 10px 16px;\n  width: auto;\n}\n\n.a-Men'
||'u .a-Menu-item {\n  line-height: 36px;\n  color: #1A1816;\n}\n\n.a-Menu .a-Menu-item > .a-Menu-inner .a-Menu-statusCol {\n  color: inherit !important;\n}\n\n.a-Menu-accel,\n.a-Menu .a-Menu-item.is-expanded > .a-Menu-inner .a-Menu-accel,\n.a-Menu .a-M'
||'enu-item.is-expanded > .a-Menu-inner .a-Menu-statusCol,\n.a-Menu .a-Menu-item.is-focused > .a-Menu-inner .a-Menu-accel,\n.a-Menu .a-Menu-item.is-focused > .a-Menu-inner .a-Menu-statusCol {\n  color: rgba(16, 15, 14, 0.60);\n}\n\n.a-Menu .a-Menu-item '
||'.a-Menu-subMenuCol {\n  height: 32px;\n  padding: 8px 4px 8px 0;\n}\n\n.a-Menu-itemSep .a-Menu-hSeparator {\n  border-color: rgba(0, 0, 0, 0.1);\n  margin-top: 8px;\n  padding-top: 4px;\n  padding-bottom: 4px;\n}\n\n#group_settings_menu .a-Menu-itemS'
||'ep .a-Menu-hSeparator {\n  border-color: rgba(0, 0, 0, 0.05);\n}\n\n.a-Menu .a-Menu-item.is-expanded,\n.a-Menu .a-Menu-item.is-focused {\n  background-color: #F1F0EB;\n  background: rgba(49, 45, 42, 0.05);\n  color: inherit;\n}\n\nhtml .a-Menu-item.i'
||'s-focused {\n  outline: none !important;\n}\n\n/* Page Title & Breadcrumbs */\n.t-HeroRegion-title,\n.t-BreadcrumbRegion-titleText,\n.t-BreadcrumbRegion--useBreadcrumbTitle .t-Breadcrumb-item.is-active .t-Breadcrumb-label {\n  font-weight: 700;\n}\n\'
||'n/* Dialogs */\nbody .ui-dialog {\n  box-shadow: 0 24px 48px -24px rgba(0, 0, 0, 0.3), 0 0 0 1px rgba(0, 0, 0, .1);\n  border: 0 !important;\n  border-radius: 6px;\n  overflow: hidden;\n  background-color: #FCFBFA;\n}\n\nbody .ui-dialog .ui-dialog-bu'
||'ttonpane {\n  background-color: #FCFBFA;\n  border-top-color: rgba(0, 0, 0, .1);\n}\n\nbody .t-Dialog-header {\n  box-shadow: 0 8px 16px -8px rgba(0, 0, 0, 0.1);\n}\n\nbody .ui-dialog .ui-dialog-titlebar-close {\n  width: 34px;\n  height: 34px;\n  bo'
||'rder-radius: 4px;\n  color: #100F0E;\n  background-color: transparent;\n  z-index: 1;\n}\n\nbody .ui-dialog .ui-dialog-titlebar-close:hover {\n  background-color: rgba(49, 45, 42, 0.05)\n}\n\nbody .ui-dialog .ui-dialog-titlebar-close:active {\n  back'
||'ground-color: rgba(49, 45, 42, 0.08)\n}\n\nbody .ui-dialog .ui-dialog-titlebar-close:focus {\n  box-shadow: none;\n}\n\nbody .ui-dialog .ui-dialog-titlebar-close .ui-icon-closethick {\n  margin-top: -12px;\n  margin-left: -12px;\n}\n\nbody .ui-dialog'
||' .ui-dialog-titlebar-close .ui-icon-closethick,\nbody .ui-dialog .ui-dialog-titlebar-close .ui-icon-closethick:before {\n  font-size: 20px;\n  width: 24px;\n  height: 24px;\n  line-height: 24px;\n  text-align: center;\n}\n\n\nbody .ui-dialog .ui-dial'
||'og-titlebar {\n  padding: 16px;\n  background: none;\n  border: 0;\n}\n\nbody .ui-dialog .ui-dialog-title {\n  font-weight: 700;\n  font-size: 18px;\n  line-height: 26px;\n}\n\nbody .t-Dialog-body {\n  padding: 16px 20px;\n}\n\nbody .t-Dialog-footer '
||'.t-ButtonRegion {\n  border: 0;\n}\n\nbody .t-DialogRegion .t-ButtonRegion-col--content,\nbody .t-DialogRegion .t-ButtonRegion-col--left .t-ButtonRegion-buttons,\nbody .t-DialogRegion .t-ButtonRegion-col--right .t-ButtonRegion-buttons {\n  padding: 1'
||'2px 16px;\n}\n\n/* Tabs */\n.t-Tabs-item.is-active,\n.apex-rds .apex-rds-selected {\n  font-weight: 700;\n}\n\n/* Navigation Tabs */\n.t-NavTabs-item.is-active {\n  font-weight: 700;\n}\n\n.t-NavTabs-item {\n  border-width: 0;\n}\n\n.t-NavTabs {\n  b'
||'ackground-color: #312D2A;\n}\n\n/* IRR Select */\n.a-IRR-selectList {\n  background-color: #D9D4D0;\n  border-color: #beb9b6;\n  border-radius: 4px;\n  color: #100f0e\n}\n","vars":{}}'
,p_theme_roller_output_file_url=>'#THEME_DB_IMAGES#12304446870329765778.css'
,p_theme_roller_read_only=>false
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(12619065466343111595)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(12619065736906111595)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(12619065908553111595)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(12619066113494111595)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(12619066295194111596)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A200D0A202A2056697461202D20526564776F6F640D0A202A20202020284F7261636C65204170706C69636174696F6E2045787072657373205468656D65205374796C65290D0A202A200D0A202A2054686973204353532066696C6520776173206765';
wwv_flow_api.g_varchar2_table(2) := '6E657261746564207573696E6720746865204F7261636C65204170706C69636174696F6E204578707265737320352E30205468656D6520526F6C6C65722E200D0A202A200D0A202A2F2E742D426F6479207B0D0A20200D0A7D0D0A2E742D426F6479202E';
wwv_flow_api.g_varchar2_table(3) := '612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C696420233432346135313B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20233262333033353B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(4) := '742D426F6479202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461794F665765656B207B0D0A2020636F6C6F723A20236166616661663B0D0A';
wwv_flow_api.g_varchar2_table(5) := '7D0D0A2E742D426F6479202E612D4D696E6943616C2D646179207B0D0A2020626F726465722D636F6C6F723A20233331333633633B0D0A2020636F6C6F723A20236566656665663B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E';
wwv_flow_api.g_varchar2_table(6) := '69732D746F646179202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D64';
wwv_flow_api.g_varchar2_table(7) := '61792E69732D616374697665202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20234642434534413B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D426F6479202E612D4D696E6943';
wwv_flow_api.g_varchar2_table(8) := '616C2D6461792E69732D7765656B656E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233330333533613B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(9) := '2D636F6C6F723A20233334336134303B0D0A7D0D0A2E742D526567696F6E207B0D0A20200D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C696420233339336634353B0D0A2020626F72';
wwv_flow_api.g_varchar2_table(10) := '6465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20233232323632393B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A20236665666566653B0D0A';
wwv_flow_api.g_varchar2_table(11) := '7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461794F665765656B207B0D0A2020636F6C6F723A20236135613561353B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D646179207B0D0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(12) := '723A20233238326333303B0D0A2020636F6C6F723A20236535653565353B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(13) := '2D636F6C6F723A20233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(14) := '67726F756E642D636F6C6F723A20234642434534413B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(15) := '6C6F723A20233236326232663B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20233262333033353B0D0A7D0D0A2E742D426F64792D616374696F';
wwv_flow_api.g_varchar2_table(16) := '6E73207B0D0A20200D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C696420233435346535353B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261';
wwv_flow_api.g_varchar2_table(17) := '636B67726F756E642D636F6C6F723A20233265333433393B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D616374696F';
wwv_flow_api.g_varchar2_table(18) := '6E73202E612D4D696E6943616C2D6461794F665765656B207B0D0A2020636F6C6F723A20236233623362333B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D646179207B0D0A2020626F726465722D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(19) := '3334336134303B0D0A2020636F6C6F723A20236633663366333B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(20) := '6E642D636F6C6F723A20233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B';
wwv_flow_api.g_varchar2_table(21) := '0D0A20206261636B67726F756E642D636F6C6F723A20234642434534413B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0D0A20';
wwv_flow_api.g_varchar2_table(22) := '206261636B67726F756E642D636F6C6F723A20233333333933653B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20233338336534';
wwv_flow_api.g_varchar2_table(23) := '343B0D0A7D0D0A2E742D426F64792D696E666F207B0D0A20200D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C696420233439353135393B0D0A2020626F726465722D72616469';
wwv_flow_api.g_varchar2_table(24) := '75733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20233332333833643B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(25) := '2D426F64792D696E666F202E612D4D696E6943616C2D6461794F665765656B207B0D0A2020636F6C6F723A20236237623762373B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D646179207B0D0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(26) := '6F723A20233338336534343B0D0A2020636F6C6F723A20236637663766373B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(27) := '6F756E642D636F6C6F723A20233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0D';
wwv_flow_api.g_varchar2_table(28) := '0A20206261636B67726F756E642D636F6C6F723A20234642434534413B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(29) := '6B67726F756E642D636F6C6F723A20233336336434333B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20233362343234383B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(30) := '2E742D4156504C6973742D6974656D207B0D0A2020626F782D736861646F773A2030202D302E3172656D20302072676261283235352C203235352C203235352C20302E30352920696E7365743B0D0A7D0D0A2E742D4156504C6973742D6C6162656C2C0D';
wwv_flow_api.g_varchar2_table(31) := '0A2E742D4156504C6973742D76616C7565207B0D0A2020626F782D736861646F773A203020302E3172656D2072676261283235352C203235352C203235352C20302E3037352920696E7365743B0D0A7D0D0A2E742D4156504C6973742D76616C7565207B';
wwv_flow_api.g_varchar2_table(32) := '0D0A2020636F6C6F723A20236439643964393B0D0A7D0D0A2E742D426F64792D696E666F202E742D4156504C6973742D76616C7565207B0D0A2020636F6C6F723A20236439643964393B0D0A7D0D0A2E742D526567696F6E202E742D4156504C6973742D';
wwv_flow_api.g_varchar2_table(33) := '76616C7565207B0D0A2020636F6C6F723A20236438643864383B0D0A7D0D0A2E742D4156504C6973742D6C6162656C207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D696E666F202E742D4156504C6973742D6C6162';
wwv_flow_api.g_varchar2_table(34) := '656C207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E742D4156504C6973742D6C6162656C207B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E742D4156504C697374202B202E742D5265706F';
wwv_flow_api.g_varchar2_table(35) := '72742D706167696E6174696F6E207B0D0A2020626F726465722D746F702D636F6C6F723A2072676261283235352C203235352C203235352C20302E3035293B0D0A7D0D0A2E742D416C6572742D2D77697A6172642C0D0A2E742D416C6572742D2D686F72';
wwv_flow_api.g_varchar2_table(36) := '697A6F6E74616C207B0D0A2020626F726465722D7261646975733A203270783B0D0A2020626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E742D416C6572742D2D77697A617264202E742D';
wwv_flow_api.g_varchar2_table(37) := '416C6572742D69636F6E2C0D0A2E742D416C6572742D2D686F72697A6F6E74616C202E742D416C6572742D69636F6E207B0D0A2020626F726465722D746F702D6C6566742D7261646975733A203270783B0D0A2020626F726465722D626F74746F6D2D6C';
wwv_flow_api.g_varchar2_table(38) := '6566742D7261646975733A203270783B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E672C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F77207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(39) := '6B67726F756E642D636F6C6F723A20233362326330313B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D73756363657373207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(40) := '6C6F723A20233134333930663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E6765722C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D';
wwv_flow_api.g_varchar2_table(41) := '726564207B0D0A20206261636B67726F756E642D636F6C6F723A20233332303630333B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(42) := '67726F756E642D636F6C6F723A20233032326134643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D416C6572742D69636F6E202E742D49636F6E207B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D416C6572742D2D';
wwv_flow_api.g_varchar2_table(43) := '7761726E696E67202E742D416C6572742D69636F6E202E742D49636F6E2C0D0A2E742D416C6572742D2D79656C6C6F77202E742D416C6572742D69636F6E202E742D49636F6E207B0D0A2020636F6C6F723A20234642434534413B0D0A7D0D0A2E742D41';
wwv_flow_api.g_varchar2_table(44) := '6C6572742D2D7761726E696E672E742D416C6572742D2D686F72697A6F6E74616C202E742D416C6572742D69636F6E2C0D0A2E742D416C6572742D2D79656C6C6F772E742D416C6572742D2D686F72697A6F6E74616C202E742D416C6572742D69636F6E';
wwv_flow_api.g_varchar2_table(45) := '207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235312C203230362C2037342C20302E3135293B0D0A7D0D0A2E742D416C6572742D2D73756363657373202E742D416C6572742D69636F6E202E742D49636F6E207B0D0A202063';
wwv_flow_api.g_varchar2_table(46) := '6F6C6F723A20233342414132433B0D0A7D0D0A2E742D416C6572742D2D737563636573732E742D416C6572742D2D686F72697A6F6E74616C202E742D416C6572742D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612835';
wwv_flow_api.g_varchar2_table(47) := '392C203137302C2034342C20302E3135293B0D0A7D0D0A2E742D416C6572742D2D696E666F202E742D416C6572742D69636F6E202E742D49636F6E207B0D0A2020636F6C6F723A20233361613266613B0D0A7D0D0A2E742D416C6572742D2D696E666F2E';
wwv_flow_api.g_varchar2_table(48) := '742D416C6572742D2D686F72697A6F6E74616C202E742D416C6572742D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612835382C203136322C203235302C20302E3135293B0D0A7D0D0A2E742D416C6572742D2D64616E';
wwv_flow_api.g_varchar2_table(49) := '676572202E742D416C6572742D69636F6E202E742D49636F6E2C0D0A2E742D416C6572742D2D726564202E742D416C6572742D69636F6E202E742D49636F6E207B0D0A2020636F6C6F723A20236634343333363B0D0A7D0D0A2E742D416C6572742D2D64';
wwv_flow_api.g_varchar2_table(50) := '616E6765722E742D416C6572742D2D686F72697A6F6E74616C202E742D416C6572742D69636F6E2C0D0A2E742D416C6572742D2D7265642E742D416C6572742D2D686F72697A6F6E74616C202E742D416C6572742D69636F6E207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(51) := '726F756E642D636F6C6F723A2072676261283234342C2036372C2035342C20302E3135293B0D0A7D0D0A2E742D416C6572742D2D77697A617264202E742D416C6572742D696E736574207B0D0A2020626F726465722D7261646975733A203270783B0D0A';
wwv_flow_api.g_varchar2_table(52) := '7D0D0A2E742D416C6572742D2D686F72697A6F6E74616C2C0D0A2E742D416C6572742D2D77697A617264207B0D0A20206261636B67726F756E642D636F6C6F723A20233232323632393B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(53) := '2D416C6572742D2D70616765207B0D0A2020626F782D736861646F773A20302030203020302E3172656D2072676261283235352C203235352C203235352C20302E312920696E7365742C20302033707820397078202D327078207267626128302C20302C';
wwv_flow_api.g_varchar2_table(54) := '20302C20302E31293B0D0A7D0D0A2E742D416C6572742D2D70616765202E612D4E6F74696669636174696F6E2D6974656D3A6265666F7265207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20';
wwv_flow_api.g_varchar2_table(55) := '302E35293B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73756363657373207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612835392C203137302C2034342C20302E39293B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(56) := '4646463B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73756363657373202E742D416C6572742D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(57) := '20234646463B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73756363657373202E742D416C6572742D69636F6E202E742D49636F6E207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D416C6572742D2D';
wwv_flow_api.g_varchar2_table(58) := '706167652E742D416C6572742D2D73756363657373202E742D427574746F6E2D2D636C6F7365416C657274207B0D0A2020636F6C6F723A20234646462021696D706F7274616E743B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C6572742D';
wwv_flow_api.g_varchar2_table(59) := '2D7761726E696E67207B0D0A20206261636B67726F756E642D636F6C6F723A20234642434534413B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C6572742D2D7761726E696E67202E742D41';
wwv_flow_api.g_varchar2_table(60) := '6C6572742D69636F6E202E742D49636F6E207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C6572742D2D7761726E696E672061207B0D0A2020636F6C6F723A20696E68657269743B0D0A20';
wwv_flow_api.g_varchar2_table(61) := '20746578742D6465636F726174696F6E3A20756E6465726C696E653B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C6572742D2D7761726E696E67202E612D4E6F74696669636174696F6E2D6974656D3A6265666F7265207B0D0A20206261';
wwv_flow_api.g_varchar2_table(62) := '636B67726F756E642D636F6C6F723A2063757272656E74436F6C6F723B0D0A7D0D0A2E742D4C6F67696E2D636F6E7461696E6572426F6479202E742D426F64792D616C657274207B0D0A202077696474683A2034363070783B0D0A7D0D0A2E742D426164';
wwv_flow_api.g_varchar2_table(63) := '67652D2D6261736963207B0D0A2020626F782D736861646F773A20302030203020302E3172656D207267626128302C20302C20302C20302E3032352920696E7365743B0D0A7D0D0A2E742D42616467652D2D6F72623A6265666F7265207B0D0A2020626F';
wwv_flow_api.g_varchar2_table(64) := '782D736861646F773A20302030203020302E3172656D207267626128302C20302C20302C20302E30352920696E7365743B0D0A7D0D0A2E742D42616467652D2D6F72622E69732D6E756C6C3A6265666F7265207B0D0A2020636F6C6F723A202337303730';
wwv_flow_api.g_varchar2_table(65) := '37303B0D0A7D0D0A2E742D42616467652D2D62617369632E69732D6E756C6C207B0D0A2020636F6C6F723A20233730373037303B0D0A7D0D0A2E742D42616467654C6973742C0D0A2E742D42616467654C6973743A6E6F74282E752D636F6C6F72732920';
wwv_flow_api.g_varchar2_table(66) := '61202E742D42616467654C6973742D6C6162656C207B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C7565207B0D0A2020626F782D736861';
wwv_flow_api.g_varchar2_table(67) := '646F773A203020302030203170782072676261283235342C203235342C203235342C20302E312920696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20233232323632393B0D0A7D0D0A2E742D42616467654C6973742D2D6369726375';
wwv_flow_api.g_varchar2_table(68) := '6C617220612E742D42616467654C6973742D777261703A686F766572202E742D42616467654C6973742D76616C7565207B0D0A2020626F782D736861646F773A20302030203020347078202330303736646620696E7365743B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(69) := '756E642D636F6C6F723A20233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D42616467654C6973742D2D6461736820612E742D42616467654C6973742D777261703A666F6375732C0D0A2E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(70) := '742D2D64617368202E742D42616467654C6973742D777261703A666F6375732D77697468696E2C0D0A2E742D42616467654C6973742D2D63697263756C617220612E742D42616467654C6973742D777261703A666F637573202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(71) := '742D76616C75652C0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330303736646620696E736574';
wwv_flow_api.g_varchar2_table(72) := '2C20302030203020327078202332323236323920696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D42616467654C6973742D2D64617368202E';
wwv_flow_api.g_varchar2_table(73) := '742D42616467654C6973742D777261703A666F6375732D77697468696E2C0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A686F766572207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(74) := '6C6F723A20233030373664662021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E742D42616467654C6973742D2D64617368202E742D42616467654C6973742D76616C756520613A66';
wwv_flow_api.g_varchar2_table(75) := '6F6375732C0D0A2E742D42616467654C6973742D2D6461736820612E742D42616467654C6973742D777261703A666F6375732D77697468696E202E742D42616467654C6973742D6C6162656C207B0D0A2020636F6C6F723A20236666666666663B0D0A7D';
wwv_flow_api.g_varchar2_table(76) := '0D0A2E742D42616467654C6973742D6974656D3A61667465722C0D0A2E742D42616467654C6973742D6974656D3A6265666F7265207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3035';
wwv_flow_api.g_varchar2_table(77) := '293B0D0A7D0D0A2E742D42616467654C6973742D2D6461736820612E742D42616467654C6973742D777261703A686F7665723A6265666F7265207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C';
wwv_flow_api.g_varchar2_table(78) := '20302E31293B0D0A7D0D0A2E742D42616467654C6973742E752D636F6C6F72732E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D777261703A6265666F7265207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(79) := '723A20233232323632393B0D0A7D0D0A2E742D42616467654C6973742E752D636F6C6F72732E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D6C6162656C207B0D0A2020636F6C6F723A20236665666566653B0D';
wwv_flow_api.g_varchar2_table(80) := '0A7D0D0A2E742D42616467654C6973742E752D636F6C6F7273202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E612D4261724368617274202E612D42617243686172742D6974656D';
wwv_flow_api.g_varchar2_table(81) := '207B0D0A2020626F782D736861646F773A2030202D302E3172656D20302072676261283235352C203235352C203235352C20302E30352920696E7365743B0D0A7D0D0A2E612D4261724368617274202E612D42617243686172742D6974656D3A686F7665';
wwv_flow_api.g_varchar2_table(82) := '72207B0D0A20206261636B67726F756E642D636F6C6F723A20233264333333373B0D0A7D0D0A2E742D426F6479202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(83) := '6C6F723A20236166616661663B0D0A7D0D0A2E742D426F64792D7469746C65202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A20236237623762373B0D';
wwv_flow_api.g_varchar2_table(84) := '0A7D0D0A2E742D426F64792D696E666F202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A20236237623762373B0D0A7D0D0A2E742D526567696F6E202E';
wwv_flow_api.g_varchar2_table(85) := '612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C75652C0D0A2E742D427574746F6E526567696F6E202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243';
wwv_flow_api.g_varchar2_table(86) := '686172742D76616C7565207B0D0A2020636F6C6F723A20236135613561353B0D0A7D0D0A2E612D4261724368617274202E612D42617243686172742D6974656D20696D67207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E61';
wwv_flow_api.g_varchar2_table(87) := '2D4261724368617274202E612D42617243686172742D626172207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303235293B0D0A7D0D0A2E612D42617243686172742D2D636C61737369';
wwv_flow_api.g_varchar2_table(88) := '63202E612D42617243686172742D6C6162656C2C0D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D6261724C696E6B2C0D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D7661';
wwv_flow_api.g_varchar2_table(89) := '6C7565207B0D0A2020626F782D736861646F773A2030202D302E3172656D20302072676261283235352C203235352C203235352C20302E30352920696E7365743B0D0A7D0D0A2E612D42617243686172742D2D636C6173736963202E612D426172436861';
wwv_flow_api.g_varchar2_table(90) := '72742D6261722C0D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D66696C6C6564207B0D0A2020626F726465722D7261646975733A203170783B0D0A7D0D0A2E612D42617243686172742D2D636C6173736963202E';
wwv_flow_api.g_varchar2_table(91) := '612D42617243686172742D6974656D3A686F766572202E612D42617243686172742D626172207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3035293B0D0A7D0D0A2E612D4261724368';
wwv_flow_api.g_varchar2_table(92) := '6172742D2D6D6F6465726E202E612D42617243686172742D6261722C0D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D66696C6C6564207B0D0A2020626F726465722D7261646975733A203170783B0D0A7D0D0A2E61';
wwv_flow_api.g_varchar2_table(93) := '2D42617243686172742D2D6D6F6465726E202E612D42617243686172742D6974656D3A686F766572202E612D42617243686172742D626172207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20';
wwv_flow_api.g_varchar2_table(94) := '302E3035293B0D0A7D0D0A2E612D42617243686172742D66696C6C6564207B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A7D0D0A2E617065785F776169745F6F7665726C6179207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(95) := '3A207267626128302C20302C20302C20302E35293B0D0A7D0D0A626F6479207B0D0A20206261636B67726F756E642D636F6C6F723A20233262333033353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E677269642D646562';
wwv_flow_api.g_varchar2_table(96) := '75672D6F6E202E636F6E7461696E6572207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A61207B0D0A2020636F6C6F723A20233431613566663B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(97) := '2E742D426F64792D616374696F6E73207B0D0A20206261636B67726F756E642D636F6C6F723A20233265333433393B0D0A2020626F726465722D6C6566743A2031707820736F6C69642072676261283235352C203235352C203235352C20302E30373529';
wwv_flow_api.g_varchar2_table(98) := '3B0D0A7D0D0A2E752D52544C202E742D426F64792D616374696F6E73207B0D0A2020626F726465722D6C6566743A20303B0D0A2020626F726465722D72696768743A2031707820736F6C69642072676261283235352C203235352C203235352C20302E30';
wwv_flow_api.g_varchar2_table(99) := '3735293B0D0A7D0D0A2E742D426F64792D7469746C65207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612835302C2035362C2036312C20302E39293B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F726465722D626F';
wwv_flow_api.g_varchar2_table(100) := '74746F6D3A2031707820736F6C696420233162316532313B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E742D50616765426F64792D2D6D61737465724465';
wwv_flow_api.g_varchar2_table(101) := '7461696C2023745F426F64795F636F6E74656E745F6F6666736574207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612835302C2035362C2036312C20302E39293B0D0A7D0D0A2E742D50616765426F64792D2D6D6173746572446574';
wwv_flow_api.g_varchar2_table(102) := '61696C202E742D426F64792D7469746C652E6861732D736861646F77207B0D0A2020626F782D736861646F773A2030203170782030207267626128302C20302C20302C20302E303735293B0D0A7D0D0A2E742D50616765426F64792D2D6D617374657244';
wwv_flow_api.g_varchar2_table(103) := '657461696C202E742D426F64792D7469746C652E6861732D736861646F773A6166746572207B0D0A20206261636B67726F756E642D696D6167653A206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E3035292C20726762';
wwv_flow_api.g_varchar2_table(104) := '6128302C20302C20302C203029293B0D0A7D0D0A2E742D50616765426F64792D2D6D617374657244657461696C202E617065782D7264732D636F6E7461696E6572207B0D0A2020626F782D736861646F773A2030202D3170782030207267626128323535';
wwv_flow_api.g_varchar2_table(105) := '2C203235352C203235352C20302E312920696E7365743B0D0A7D0D0A2E742D50616765426F64792D2D6D617374657244657461696C202E617065782D7264732D636F6E7461696E65722E69732D737475636B3A6166746572207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(106) := '6F756E642D696D6167653A206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E3035292C207267626128302C20302C20302C203029293B0D0A7D0D0A2E75692D7769646765742D636F6E74656E74207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(107) := '67726F756E642D636F6C6F723A20233232323632393B0D0A7D0D0A2E742D426F6479202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A20236566656665663B0D0A7D0D0A2E742D426F64792D7469746C65202E75692D776964';
wwv_flow_api.g_varchar2_table(108) := '6765742D636F6E74656E74207B0D0A2020636F6C6F723A20236637663766373B0D0A7D0D0A2E742D426F64792D696E666F202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A20236637663766373B0D0A7D0D0A2E742D526567';
wwv_flow_api.g_varchar2_table(109) := '696F6E202E75692D7769646765742D636F6E74656E742C0D0A2E742D427574746F6E526567696F6E202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A20236535653565353B0D0A7D0D0A2E742D426F64792D73696465207B0D';
wwv_flow_api.g_varchar2_table(110) := '0A20206261636B67726F756E642D636F6C6F723A20233336336434333B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A2020';
wwv_flow_api.g_varchar2_table(111) := '2E742D426F64792D73696465207B0D0A20202020626F782D736861646F773A20317078203020302072676261283235352C203235352C203235352C20302E31293B0D0A20207D0D0A20202E752D52544C202E742D426F64792D73696465207B0D0A202020';
wwv_flow_api.g_varchar2_table(112) := '20626F782D736861646F773A202D317078203020302072676261283235352C203235352C203235352C20302E31293B0D0A20207D0D0A7D0D0A2E617065782D7264732D636F6E7461696E6572207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(113) := '7472616E73706172656E743B0D0A7D0D0A2E742D426F64792D696E666F202E617065782D7264732D636F6E7461696E6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233332333833643B0D0A7D0D0A2E742D426F64792D696E666F202E';
wwv_flow_api.g_varchar2_table(114) := '617065782D7264732D636F6E7461696E65722E69732D737475636B207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612835302C2035362C2036312C20302E3935293B0D0A20206261636B64726F702D66696C7465723A20626C757228';
wwv_flow_api.g_varchar2_table(115) := '347078293B0D0A7D0D0A2E742D426F64792D696E666F207B0D0A20206261636B67726F756E642D636F6C6F723A20233332333833643B0D0A7D0D0A2E742D426F64792D7469746C652E6A732D6869646542726561646372756D6273207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(116) := '6B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3935293B0D0A7D0D0A2E742D426F64792D746F70427574746F6E207B0D0A2020626F726465722D7261646975733A20313030253B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(117) := '756E642D636F6C6F723A20233432346135313B0D0A2020636F6C6F723A20233539363336643B0D0A2020626F782D736861646F773A203020302030203170782072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E742D426F64';
wwv_flow_api.g_varchar2_table(118) := '792D746F70427574746F6E3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330303736646620696E7365742C20302031707820327078207267626128302C20302C20302C20302E3135293B0D0A7D0D0A2E742D426F';
wwv_flow_api.g_varchar2_table(119) := '64792D746F70427574746F6E3A686F7665722C0D0A2E742D426F64792D746F70427574746F6E3A666F637573207B0D0A2020636F6C6F723A20233030373664663B0D0A7D0D0A2E742D426F64792D746F70427574746F6E3A686F7665722C0D0A2E742D42';
wwv_flow_api.g_varchar2_table(120) := '6F64792D746F70427574746F6E3A616374697665207B0D0A2020626F782D736861646F773A20302031707820327078207267626128302C20302C20302C20302E31352920696E7365743B0D0A7D0D0A2E742D426F64792D746F70427574746F6E3A616374';
wwv_flow_api.g_varchar2_table(121) := '697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233464353735663B0D0A2020636F6C6F723A20233634373037623B0D0A7D0D0A2E742D4865616465722D6272616E64696E67207B0D0A20206865696768743A20343870783B0D0A7D0D';
wwv_flow_api.g_varchar2_table(122) := '0A2E742D4865616465722D6C6F676F2D6C696E6B20696D67207B0D0A20206D61782D6865696768743A20343070783B0D0A7D0D0A2E742D426F64792D636F6E74656E74207B0D0A20206D696E2D6865696768743A2063616C63283130307668202D202034';
wwv_flow_api.g_varchar2_table(123) := '387078293B0D0A7D0D0A2E617065782D736964652D6E6176202E742D426F64792D6E61762C0D0A2E617065782D736964652D6E6176202E742D426F64792D616374696F6E732C0D0A2E617065782D736964652D6E6176202E742D426F64792D7469746C65';
wwv_flow_api.g_varchar2_table(124) := '207B0D0A2020746F703A20343870783B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E6176202E742D42';
wwv_flow_api.g_varchar2_table(125) := '6F64792D7469746C65207B0D0A202020206C6566743A2032343070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0D0A2020202072696768743A2032343070783B0D0A20207D0D';
wwv_flow_api.g_varchar2_table(126) := '0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E6176202E742D426F64792D';
wwv_flow_api.g_varchar2_table(127) := '7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964';
wwv_flow_api.g_varchar2_table(128) := '652D6E6176202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032343070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E6176202E742D426F64792D636F6E74656E74207B0D0A2020';
wwv_flow_api.g_varchar2_table(129) := '20206D617267696E2D72696768743A2032343070783B0D0A20207D0D0A7D0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E6176202E742D426F64792D6D61696E207B0D0A20206D617267696E2D6C6566743A20303B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(130) := '2D52544C202E617065782D736964652D6E6176202E742D426F64792D6D61696E207B0D0A20206D617267696E2D72696768743A20303B0D0A7D0D0A2E617065782D746F702D6E6176202E742D426F64792D616374696F6E73207B0D0A2020746F703A2038';
wwv_flow_api.g_varchar2_table(131) := '3870783B0D0A7D0D0A2E617065782D746F702D6E6176202E742D426F64792D7469746C65207B0D0A2020746F703A20383870783B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20363430707829207B';
wwv_flow_api.g_varchar2_table(132) := '0D0A20202E617065782D746F702D6E61762E6A732D6D656E754E6176436F6C6C6170736564202E742D4865616465722D6E6176207B0D0A202020207472616E73666F726D3A207472616E736C61746559282D31303025293B0D0A20207D0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(133) := '2D426F64792D6E6176207B0D0A202077696474683A2032343070783B0D0A7D0D0A2E742D426F64792D616374696F6E73207B0D0A202077696474683A2032303070783B0D0A7D0D0A3A6E6F74282E752D52544C29202E742D426F64792D616374696F6E73';
wwv_flow_api.g_varchar2_table(134) := '202E742D427574746F6E2D2D686561646572207B0D0A20207472616E73666F726D3A207472616E736C6174653364282D343070782C20302C2030293B0D0A7D0D0A2E752D52544C202E742D426F64792D616374696F6E73202E742D427574746F6E2D2D68';
wwv_flow_api.g_varchar2_table(135) := '6561646572207B0D0A20207472616E73666F726D3A207472616E736C617465336428343070782C20302C2030293B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20202E74';
wwv_flow_api.g_varchar2_table(136) := '2D426F64792D73696465207B0D0A2020202077696474683A2032343070783B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29';
wwv_flow_api.g_varchar2_table(137) := '202E617065782D736964652D6E6176202E742D426F64792D73696465207B0D0A202020206C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E6176202E742D426F64792D73696465207B0D0A202020207269';
wwv_flow_api.g_varchar2_table(138) := '6768743A20343870783B0D0A20207D0D0A7D0D0A2E6E6F2D616E696D202E742D426F64792D6E61762C0D0A2E6E6F2D616E696D202E742D547265654E6176207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E74202169';
wwv_flow_api.g_varchar2_table(139) := '6D706F7274616E743B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E74';
wwv_flow_api.g_varchar2_table(140) := '2D426F64792D6D61696E207B0D0A20206D617267696E2D6C6566743A20343870783B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A20206D617267696E';
wwv_flow_api.g_varchar2_table(141) := '2D72696768743A20343870783B0D0A7D0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A20207472616E73666F726D3A207472616E736C61746533';
wwv_flow_api.g_varchar2_table(142) := '642831393270782C20302C2030293B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A20207472616E73666F726D3A207472616E736C6174653364282D31';
wwv_flow_api.g_varchar2_table(143) := '393270782C20302C2030293B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E61764578';
wwv_flow_api.g_varchar2_table(144) := '70616E646564202E742D426F64792D7469746C652C0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D736964652C0D0A20203A6E6F74282E752D52544C29202E61';
wwv_flow_api.g_varchar2_table(145) := '7065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D';
wwv_flow_api.g_varchar2_table(146) := '6E6176457870616E646564202E742D426F64792D7469746C652C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D736964652C0D0A20202E752D52544C202E617065782D736964';
wwv_flow_api.g_varchar2_table(147) := '652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D';
wwv_flow_api.g_varchar2_table(148) := '6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F6479';
wwv_flow_api.g_varchar2_table(149) := '2D6D61696E207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A202020';
wwv_flow_api.g_varchar2_table(150) := '207472616E73666F726D3A207472616E736C61746533642832343070782C20302C2030293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A20';
wwv_flow_api.g_varchar2_table(151) := '2020207472616E73666F726D3A207472616E736C6174653364282D32343070782C20302C2030293B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20202E6170';
wwv_flow_api.g_varchar2_table(152) := '65782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C652C0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D5061';
wwv_flow_api.g_varchar2_table(153) := '6765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E742C0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E';
wwv_flow_api.g_varchar2_table(154) := '207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D';
wwv_flow_api.g_varchar2_table(155) := '426F64792D7469746C65207B0D0A202020206C6566743A2032343070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D';
wwv_flow_api.g_varchar2_table(156) := '426F64792D7469746C65207B0D0A2020202072696768743A2032343070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C';
wwv_flow_api.g_varchar2_table(157) := '656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674';
wwv_flow_api.g_varchar2_table(158) := '202E742D426F64792D7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C65';
wwv_flow_api.g_varchar2_table(159) := '6674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2031393270783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64';
wwv_flow_api.g_varchar2_table(160) := '792D2D686964654C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2031393270783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E61764578';
wwv_flow_api.g_varchar2_table(161) := '70616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D';
wwv_flow_api.g_varchar2_table(162) := '6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A20343870783B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E';
wwv_flow_api.g_varchar2_table(163) := '6176457870616E646564202E742D426F64792D73696465207B0D0A202020207472616E73666F726D3A207472616E736C61746533642832343070782C20302C2030293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A73';
wwv_flow_api.g_varchar2_table(164) := '2D6E6176457870616E646564202E742D426F64792D73696465207B0D0A202020207472616E73666F726D3A207472616E736C6174653364282D32343070782C20302C2030293B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176';
wwv_flow_api.g_varchar2_table(165) := '457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E';
wwv_flow_api.g_varchar2_table(166) := '61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D73696465';
wwv_flow_api.g_varchar2_table(167) := '2D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E';
wwv_flow_api.g_varchar2_table(168) := '617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D';
wwv_flow_api.g_varchar2_table(169) := '736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A2020202072696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065';
wwv_flow_api.g_varchar2_table(170) := '782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032383870783B0D0A20207D0D0A20202E75';
wwv_flow_api.g_varchar2_table(171) := '2D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2032383870783B0D';
wwv_flow_api.g_varchar2_table(172) := '0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020207472616E73';
wwv_flow_api.g_varchar2_table(173) := '666F726D3A207472616E736C61746533642831393270782C20302C2030293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E74';
wwv_flow_api.g_varchar2_table(174) := '2D426F64792D636F6E74656E74207B0D0A202020207472616E73666F726D3A207472616E736C6174653364282D31393270782C20302C2030293B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E61';
wwv_flow_api.g_varchar2_table(175) := '76457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870';
wwv_flow_api.g_varchar2_table(176) := '616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176';
wwv_flow_api.g_varchar2_table(177) := '457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020207472616E73666F726D3A207472616E736C61746533642832343070782C20302C2030293B0D0A20207D0D0A20202E752D52';
wwv_flow_api.g_varchar2_table(178) := '544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020207472616E73666F726D3A207472616E736C6174653364282D32';
wwv_flow_api.g_varchar2_table(179) := '343070782C20302C2030293B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E74';
wwv_flow_api.g_varchar2_table(180) := '2D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E617645';
wwv_flow_api.g_varchar2_table(181) := '7870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E61';
wwv_flow_api.g_varchar2_table(182) := '76457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870';
wwv_flow_api.g_varchar2_table(183) := '616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020207472616E73666F726D3A206E6F6E652021696D706F7274616E743B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E6170';
wwv_flow_api.g_varchar2_table(184) := '65782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D6C6566743A2032343070783B0D0A20207D0D0A20202E752D';
wwv_flow_api.g_varchar2_table(185) := '52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D72696768743A2032343070783B0D0A2020';
wwv_flow_api.g_varchar2_table(186) := '7D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C';
wwv_flow_api.g_varchar2_table(187) := '6566743A2034383070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020';
wwv_flow_api.g_varchar2_table(188) := '206D617267696E2D72696768743A2034383070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64';
wwv_flow_api.g_varchar2_table(189) := '792D636F6E74656E742C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020207472616E73';
wwv_flow_api.g_varchar2_table(190) := '666F726D3A206E6F6E653B0D0A20207D0D0A7D0D0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E61762C0D0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D';
wwv_flow_api.g_varchar2_table(191) := '426F64792D6E6176202E742D547265654E6176207B0D0A202077696474683A20343870783B0D0A7D0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E';
wwv_flow_api.g_varchar2_table(192) := '742C0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F';
wwv_flow_api.g_varchar2_table(193) := '6C6C6170736564202E742D426F64792D73696465207B0D0A20206D617267696E2D6C6566743A20343870783B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E7465';
wwv_flow_api.g_varchar2_table(194) := '6E742C0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D';
wwv_flow_api.g_varchar2_table(195) := '426F64792D73696465207B0D0A20206D617267696E2D72696768743A20343870783B0D0A7D0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652E69732D';
wwv_flow_api.g_varchar2_table(196) := '737475636B207B0D0A20206C6566743A20303B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652E69732D737475636B207B0D0A202072696768743A20303B0D';
wwv_flow_api.g_varchar2_table(197) := '0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E6176207B0D0A202020';
wwv_flow_api.g_varchar2_table(198) := '207472616E73666F726D3A207472616E736C61746558282D34387078293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E6176207B0D0A202020207472616E';
wwv_flow_api.g_varchar2_table(199) := '73666F726D3A207472616E736C617465582834387078293B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0D0A20203A6E6F7428';
wwv_flow_api.g_varchar2_table(200) := '2E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D736964652C0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C617073656420';
wwv_flow_api.g_varchar2_table(201) := '2E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0D';
wwv_flow_api.g_varchar2_table(202) := '0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D736964652C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D42';
wwv_flow_api.g_varchar2_table(203) := '6F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20363430707829207B0D0A20203A6E6F74282E752D';
wwv_flow_api.g_varchar2_table(204) := '52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20303B0D';
wwv_flow_api.g_varchar2_table(205) := '0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E207B0D0A202020206D617267696E';
wwv_flow_api.g_varchar2_table(206) := '2D72696768743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E61';
wwv_flow_api.g_varchar2_table(207) := '76436F6C6C6170736564202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64';
wwv_flow_api.g_varchar2_table(208) := '792D7469746C65207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C65207B0D';
wwv_flow_api.g_varchar2_table(209) := '0A202020206C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C65207B0D0A2020202072696768743A20343870783B0D0A2020';
wwv_flow_api.g_varchar2_table(210) := '7D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566';
wwv_flow_api.g_varchar2_table(211) := '743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D';
wwv_flow_api.g_varchar2_table(212) := '72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B';
wwv_flow_api.g_varchar2_table(213) := '0D0A202020206D617267696E2D6C6566743A2032383870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F6479';
wwv_flow_api.g_varchar2_table(214) := '2D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2032383870783B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0D0A20203A6E6F74282E75';
wwv_flow_api.g_varchar2_table(215) := '2D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A202020206C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A';
wwv_flow_api.g_varchar2_table(216) := '732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A2020202072696768743A20343870783B0D0A20207D0D0A7D0D0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E2E6A732D6E';
wwv_flow_api.g_varchar2_table(217) := '6176436F6C6C6170736564202E742D426F64792D6E6176207B0D0A202077696474683A20303B0D0A20207669736962696C6974793A2068696464656E3B0D0A7D0D0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D6869';
wwv_flow_api.g_varchar2_table(218) := '6464656E2E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E6176202E612D54726565566965772D6261646765207B0D0A20207669736962696C6974793A2068696464656E2021696D706F7274616E743B0D0A7D0D0A2E617065782D736964';
wwv_flow_api.g_varchar2_table(219) := '652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D6E61762C0D0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D6E6176202E742D5472';
wwv_flow_api.g_varchar2_table(220) := '65654E6176207B0D0A202077696474683A2032343070783B0D0A7D0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D636F6E74656E742C0D0A3A';
wwv_flow_api.g_varchar2_table(221) := '6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D7469746C652C0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E61';
wwv_flow_api.g_varchar2_table(222) := '76436F6C6C61707365642D2D68696464656E202E742D426F64792D73696465207B0D0A20206D617267696E2D6C6566743A20303B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464';
wwv_flow_api.g_varchar2_table(223) := '656E202E742D426F64792D636F6E74656E742C0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D7469746C652C0D0A2E752D52544C202E617065782D73696465';
wwv_flow_api.g_varchar2_table(224) := '2D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D73696465207B0D0A20206D617267696E2D72696768743A20303B0D0A7D0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E';
wwv_flow_api.g_varchar2_table(225) := '6176436F6C6C61707365642D2D68696464656E202E742D426F64792D7469746C652E69732D737475636B207B0D0A20206C6566743A20303B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D';
wwv_flow_api.g_varchar2_table(226) := '68696464656E202E742D426F64792D7469746C652E69732D737475636B207B0D0A202072696768743A20303B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0D0A20202E617065';
wwv_flow_api.g_varchar2_table(227) := '782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D6E6176207B0D0A202020207472616E73666F726D3A207472616E736C617465582830293B0D0A20207D0D0A20202E752D52544C202E61706578';
wwv_flow_api.g_varchar2_table(228) := '2D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D6E6176207B0D0A202020207472616E73666F726D3A207472616E736C617465582830293B0D0A20207D0D0A20203A6E6F74282E752D52544C2920';
wwv_flow_api.g_varchar2_table(229) := '2E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D7469746C652C0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564';
wwv_flow_api.g_varchar2_table(230) := '2D2D68696464656E202E742D426F64792D736964652C0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D636F6E74656E74207B0D0A202020';
wwv_flow_api.g_varchar2_table(231) := '206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D7469746C652C0D0A20202E752D52544C202E617065';
wwv_flow_api.g_varchar2_table(232) := '782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D736964652C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E74';
wwv_flow_api.g_varchar2_table(233) := '2D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20363430707829207B0D0A20203A6E6F74282E';
wwv_flow_api.g_varchar2_table(234) := '752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E2E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E207B0D0A202020206D617267696E';
wwv_flow_api.g_varchar2_table(235) := '2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E2E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D';
wwv_flow_api.g_varchar2_table(236) := '6D61696E207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E61';
wwv_flow_api.g_varchar2_table(237) := '7065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D';
wwv_flow_api.g_varchar2_table(238) := '6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61';
wwv_flow_api.g_varchar2_table(239) := '762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365';
wwv_flow_api.g_varchar2_table(240) := '642D2D68696464656E202E742D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E';
wwv_flow_api.g_varchar2_table(241) := '2E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D6869';
wwv_flow_api.g_varchar2_table(242) := '6464656E2E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A2020202072696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F';
wwv_flow_api.g_varchar2_table(243) := '6C6C61707365642D2D68696464656E2E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032343070783B0D0A20207D0D0A20202E752D52544C202E61706578';
wwv_flow_api.g_varchar2_table(244) := '2D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E2E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2032343070783B0D0A';
wwv_flow_api.g_varchar2_table(245) := '20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D';
wwv_flow_api.g_varchar2_table(246) := '68696464656E202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D';
wwv_flow_api.g_varchar2_table(247) := '426F64792D73696465207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64';
wwv_flow_api.g_varchar2_table(248) := '792D73696465207B0D0A202020206C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D73696465207B0D0A20202020726967';
wwv_flow_api.g_varchar2_table(249) := '68743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E2E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465';
wwv_flow_api.g_varchar2_table(250) := '207B0D0A202020206C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E2E742D50616765426F64792D2D73686F774C656674202E742D426F64792D';
wwv_flow_api.g_varchar2_table(251) := '73696465207B0D0A2020202072696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E2E742D50616765426F64792D2D73686F774C65';
wwv_flow_api.g_varchar2_table(252) := '6674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032343070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E2E';
wwv_flow_api.g_varchar2_table(253) := '742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2032343070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E6176';
wwv_flow_api.g_varchar2_table(254) := '2E6A732D6E6176436F6C6C61707365642D2D68696464656E2E742D50616765426F64792D2D73686F774C6566742E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A20343830';
wwv_flow_api.g_varchar2_table(255) := '70783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E2E742D50616765426F64792D2D73686F774C6566742E6A732D6E6176457870616E646564202E742D426F64';
wwv_flow_api.g_varchar2_table(256) := '792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2034383070783B0D0A20207D0D0A7D0D0A2E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E207B0D0A20206D617267696E';
wwv_flow_api.g_varchar2_table(257) := '2D72696768743A20303B0D0A7D0D0A3A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E2C0D0A3A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D';
wwv_flow_api.g_varchar2_table(258) := '7269676874457870616E646564202E742D426F64792D6E6176207B0D0A20207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A7D0D0A2E752D52544C202E742D50616765426F64792E6A732D7269676874';
wwv_flow_api.g_varchar2_table(259) := '457870616E646564202E742D426F64792D6D61696E2C0D0A2E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6E6176207B0D0A20207472616E73666F726D3A207472616E736C617465336428';
wwv_flow_api.g_varchar2_table(260) := '32303070782C20302C2030293B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765';
wwv_flow_api.g_varchar2_table(261) := '426F64792D2D686964654C656674202E742D426F64792D6D61696E2C0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6E6176207B0D0A202020';
wwv_flow_api.g_varchar2_table(262) := '207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D6169';
wwv_flow_api.g_varchar2_table(263) := '6E207B0D0A202020206D617267696E2D72696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F';
wwv_flow_api.g_varchar2_table(264) := '64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964';
wwv_flow_api.g_varchar2_table(265) := '654C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964';
wwv_flow_api.g_varchar2_table(266) := '654C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F6479';
wwv_flow_api.g_varchar2_table(267) := '2D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D7368';
wwv_flow_api.g_varchar2_table(268) := '6F774C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C617073';
wwv_flow_api.g_varchar2_table(269) := '65642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E';
wwv_flow_api.g_varchar2_table(270) := '6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E';
wwv_flow_api.g_varchar2_table(271) := '742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206C6566743A20303B0D0A20207D0D0A';
wwv_flow_api.g_varchar2_table(272) := '20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020207269676874';
wwv_flow_api.g_varchar2_table(273) := '3A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E64';
wwv_flow_api.g_varchar2_table(274) := '65642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874';
wwv_flow_api.g_varchar2_table(275) := '457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A2032303070783B0D0A20207D0D0A20202E742D50616765426F64792E6A732D72696768744578';
wwv_flow_api.g_varchar2_table(276) := '70616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E2C0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F';
wwv_flow_api.g_varchar2_table(277) := '64792D6E6176207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C6566';
wwv_flow_api.g_varchar2_table(278) := '74202E742D426F64792D7469746C65207B0D0A2020202072696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C6566';
wwv_flow_api.g_varchar2_table(279) := '74202E742D426F64792D7469746C65207B0D0A202020206C6566743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365';
wwv_flow_api.g_varchar2_table(280) := '642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A';
wwv_flow_api.g_varchar2_table(281) := '732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A2020202072696768743A20343870783B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E64';
wwv_flow_api.g_varchar2_table(282) := '20286D61782D77696474683A20393932707829207B0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020207472616E73';
wwv_flow_api.g_varchar2_table(283) := '666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C652C0D0A20';
wwv_flow_api.g_varchar2_table(284) := '203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D736964652C0D0A20203A6E6F74282E752D52544C29202E742D506167';
wwv_flow_api.g_varchar2_table(285) := '65426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C';
wwv_flow_api.g_varchar2_table(286) := '2030293B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C652C0D0A20202E752D52544C202E742D5061';
wwv_flow_api.g_varchar2_table(287) := '6765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D736964652C0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D';
wwv_flow_api.g_varchar2_table(288) := '50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A20207D0D0A20202E742D50616765426F64792E6A';
wwv_flow_api.g_varchar2_table(289) := '732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A20343870782021696D706F7274616E743B0D0A20207D0D0A20202E752D5254';
wwv_flow_api.g_varchar2_table(290) := '4C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A20302021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(291) := '2020202072696768743A20343870782021696D706F7274616E743B0D0A20207D0D0A7D0D0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D6D61696E207B0D0A20206D617267696E2D72696768743A2030';
wwv_flow_api.g_varchar2_table(292) := '70783B0D0A7D0D0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D7469746C65207B0D0A202072696768743A203070783B0D0A7D0D0A3A6E6F74282E752D52544C29202E742D50616765426F64792E6A73';
wwv_flow_api.g_varchar2_table(293) := '2D7269676874436F6C6C6170736564202E742D426F64792D616374696F6E73207B0D0A20207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A7D0D0A2E752D52544C202E742D50616765426F64792E6A732D';
wwv_flow_api.g_varchar2_table(294) := '7269676874436F6C6C6170736564202E742D426F64792D616374696F6E73207B0D0A20207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E64';
wwv_flow_api.g_varchar2_table(295) := '20286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032343070';
wwv_flow_api.g_varchar2_table(296) := '783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2032343070783B0D0A20207D0D0A7D0D0A2E742D426F6479';
wwv_flow_api.g_varchar2_table(297) := '2D636F6E74656E74496E6E6572207B0D0A20206D617267696E3A2030206175746F3B0D0A20206D61782D77696474683A20313030253B0D0A7D0D0A23745F426F64795F736B6970546F436F6E74656E74207B0D0A2020636F6C6F723A2023303037366466';
wwv_flow_api.g_varchar2_table(298) := '3B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4D6567614D656E752D2D66756C6C57696474683A6E6F74282E6A732D6D656E752D63616C6C6F757429207B0D0A202070616464696E672D746F703A2038';
wwv_flow_api.g_varchar2_table(299) := '70783B0D0A7D0D0A2E742D4D6567614D656E752D2D6C61796F757432436F6C73202E742D4D6567614D656E752D6974656D2D2D746F702C0D0A2E742D4D6567614D656E752D2D6C61796F757433436F6C73202E742D4D6567614D656E752D6974656D2D2D';
wwv_flow_api.g_varchar2_table(300) := '746F702C0D0A2E742D4D6567614D656E752D2D6C61796F757434436F6C73202E742D4D6567614D656E752D6974656D2D2D746F702C0D0A2E742D4D6567614D656E752D2D6C61796F757435436F6C73202E742D4D6567614D656E752D6974656D2D2D746F';
wwv_flow_api.g_varchar2_table(301) := '70207B0D0A20206D61782D77696474683A2032343070783B0D0A7D0D0A2E742D42726561646372756D622D6974656D3A6166746572207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(302) := '42726561646372756D622D6974656D2C0D0A2E742D42726561646372756D622D6974656D2061207B0D0A2020636F6C6F723A20236436643664363B0D0A7D0D0A2E742D42726561646372756D622D6974656D20613A686F7665722C0D0A2E742D42726561';
wwv_flow_api.g_varchar2_table(303) := '646372756D622D6974656D20613A666F637573207B0D0A2020636F6C6F723A20233431613566663B0D0A2020746578742D6465636F726174696F6E3A20756E6465726C696E653B0D0A20206F75746C696E653A206E6F6E653B0D0A7D0D0A2E742D426F64';
wwv_flow_api.g_varchar2_table(304) := '792D7469746C652D736872696E6B202E742D42726561646372756D62526567696F6E2D2D75736542726561646372756D625469746C65202E742D42726561646372756D622D6974656D2E69732D6163746976652C0D0A2E742D426F64792D7469746C652D';
wwv_flow_api.g_varchar2_table(305) := '736872696E6B202E742D42726561646372756D62526567696F6E2D2D757365526567696F6E5469746C65202E742D42726561646372756D62526567696F6E2D7469746C6554657874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A406D';
wwv_flow_api.g_varchar2_table(306) := '65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20363430707829207B0D0A20202E742D42726561646372756D62526567696F6E2D2D757365526567696F6E5469746C65202E742D42726561646372756D62526567696F6E';
wwv_flow_api.g_varchar2_table(307) := '2D7469746C6554657874207B0D0A20202020636F6C6F723A20236666666666663B0D0A20207D0D0A7D0D0A2E742D42726561646372756D622D6974656D202E742D49636F6E3A686F766572207B0D0A2020636F6C6F723A20233030373664663B0D0A7D0D';
wwv_flow_api.g_varchar2_table(308) := '0A2E742D42726561646372756D62526567696F6E2D2D75736542726561646372756D625469746C65202E742D42726561646372756D622D6974656D2E69732D6163746976652C0D0A2E742D42726561646372756D62526567696F6E2D7469746C65546578';
wwv_flow_api.g_varchar2_table(309) := '74207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D7469746C65202E742D42726561646372756D622D6974656D3A6166746572207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E';
wwv_flow_api.g_varchar2_table(310) := '3735293B0D0A7D0D0A2E742D426F64792D7469746C65202E742D42726561646372756D622D6974656D2C0D0A2E742D426F64792D7469746C65202E742D42726561646372756D622D6974656D20612C0D0A2E742D426F64792D7469746C65202E742D4272';
wwv_flow_api.g_varchar2_table(311) := '6561646372756D62526567696F6E2D2D75736542726561646372756D625469746C65202E742D42726561646372756D622D6974656D2E69732D6163746976652C0D0A2E742D426F64792D7469746C65202E742D42726561646372756D62526567696F6E2D';
wwv_flow_api.g_varchar2_table(312) := '7469746C6554657874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2C0D0A2E612D427574746F6E2C0D0A2E75692D627574746F6E207B0D0A2020626F726465723A206E6F6E653B0D0A2020746578742D736861';
wwv_flow_api.g_varchar2_table(313) := '646F773A206E6F6E653B0D0A2020626F726465722D7261646975733A203270783B0D0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E327320656173652C20626F782D736861646F7720302E327320656173652C2063';
wwv_flow_api.g_varchar2_table(314) := '6F6C6F7220302E327320656173653B0D0A7D0D0A2E742D427574746F6E202E742D49636F6E2C0D0A2E612D427574746F6E202E742D49636F6E2C0D0A2E75692D627574746F6E202E742D49636F6E207B0D0A20207472616E736974696F6E3A20696E6865';
wwv_flow_api.g_varchar2_table(315) := '7269743B0D0A7D0D0A2E742D427574746F6E3A686F7665722C0D0A2E612D427574746F6E3A686F7665722C0D0A2E75692D627574746F6E3A686F7665722C0D0A2E742D427574746F6E3A666F6375732C0D0A2E612D427574746F6E3A666F6375732C0D0A';
wwv_flow_api.g_varchar2_table(316) := '2E75692D627574746F6E3A666F637573207B0D0A20207A2D696E6465783A203130303B0D0A20206F75746C696E653A206E6F6E652021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E3A666F6375733A6265666F72652C0D0A2E612D427574';
wwv_flow_api.g_varchar2_table(317) := '746F6E3A666F6375733A6265666F72652C0D0A2E75692D627574746F6E3A666F6375733A6265666F72652C0D0A2E742D427574746F6E2E69732D6163746976653A666F6375733A6265666F72652C0D0A2E612D427574746F6E2E69732D6163746976653A';
wwv_flow_api.g_varchar2_table(318) := '666F6375733A6265666F72652C0D0A2E75692D627574746F6E2E69732D6163746976653A666F6375733A6265666F7265207B0D0A2020626F782D736861646F773A20302030203020317078202330303736646620696E7365742021696D706F7274616E74';
wwv_flow_api.g_varchar2_table(319) := '3B0D0A20206F7061636974793A20313B0D0A7D0D0A2E742D427574746F6E3A666F6375733A6163746976653A6265666F72652C0D0A2E612D427574746F6E3A666F6375733A6163746976653A6265666F72652C0D0A2E75692D627574746F6E3A666F6375';
wwv_flow_api.g_varchar2_table(320) := '733A6163746976653A6265666F72652C0D0A2E742D427574746F6E2E69732D6163746976653A666F6375733A6163746976653A6265666F72652C0D0A2E612D427574746F6E2E69732D6163746976653A666F6375733A6163746976653A6265666F72652C';
wwv_flow_api.g_varchar2_table(321) := '0D0A2E75692D627574746F6E2E69732D6163746976653A666F6375733A6163746976653A6265666F7265207B0D0A20206F7061636974793A20303B0D0A7D0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D6C696E6B293A6E6F74282E';
wwv_flow_api.g_varchar2_table(322) := '742D427574746F6E2D2D686561646572293A6163746976652C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D6C696E6B293A6E6F74282E742D427574746F6E2D2D686561646572292E69732D616374697665207B0D0A2020626F782D';
wwv_flow_api.g_varchar2_table(323) := '736861646F773A203020302030203170782072676261283235352C203235352C203235352C20302E31352920696E7365742C20302032707820327078207267626128302C20302C20302C20302E31352920696E7365742021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(324) := '7D0D0A2E612D427574746F6E3A6265666F72652C0D0A2E742D427574746F6E3A6265666F72652C0D0A2E75692D627574746F6E3A6265666F72652C0D0A2E612D427574746F6E3A61667465722C0D0A2E742D427574746F6E3A61667465722C0D0A2E7569';
wwv_flow_api.g_varchar2_table(325) := '2D627574746F6E3A6166746572207B0D0A2020636F6E74656E743A2027273B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A2020746F703A20303B0D0A20206C6566743A20303B0D0A202077696474683A20313030253B0D0A2020686569';
wwv_flow_api.g_varchar2_table(326) := '6768743A20313030253B0D0A2020626F726465722D7261646975733A20696E68657269743B0D0A20206F7061636974793A20303B0D0A20207472616E736974696F6E3A20302E327320656173653B0D0A7D0D0A2E612D427574746F6E3A6265666F72652C';
wwv_flow_api.g_varchar2_table(327) := '0D0A2E742D427574746F6E3A6265666F72652C0D0A2E75692D627574746F6E3A6265666F7265207B0D0A20207A2D696E6465783A20313B0D0A7D0D0A2E612D427574746F6E3A61667465722C0D0A2E742D427574746F6E3A61667465722C0D0A2E75692D';
wwv_flow_api.g_varchar2_table(328) := '627574746F6E3A6166746572207B0D0A20207A2D696E6465783A202D313B0D0A2020626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E303735293B0D0A20207472616E73666F726D3A207472616E736C6174';
wwv_flow_api.g_varchar2_table(329) := '6559282D327078293B0D0A7D0D0A2E612D427574746F6E3A666F6375733A61667465722C0D0A2E742D427574746F6E3A666F6375733A61667465722C0D0A2E75692D627574746F6E3A666F6375733A61667465722C0D0A2E612D427574746F6E3A6E6F74';
wwv_flow_api.g_varchar2_table(330) := '282E742D427574746F6E2D2D6C696E6B293A686F7665723A61667465722C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D6C696E6B293A686F7665723A61667465722C0D0A2E75692D627574746F6E3A6E6F74282E742D427574746F';
wwv_flow_api.g_varchar2_table(331) := '6E2D2D6C696E6B293A686F7665723A6166746572207B0D0A20206F7061636974793A20313B0D0A20207472616E73666F726D3A207472616E736C617465592830293B0D0A7D0D0A2E612D427574746F6E3A666F6375733A6163746976653A61667465722C';
wwv_flow_api.g_varchar2_table(332) := '0D0A2E742D427574746F6E3A666F6375733A6163746976653A61667465722C0D0A2E75692D627574746F6E3A666F6375733A6163746976653A6166746572207B0D0A20206F7061636974793A20303B0D0A20207472616E73666F726D3A207472616E736C';
wwv_flow_api.g_varchar2_table(333) := '61746559282D327078293B0D0A7D0D0A2E612D427574746F6E3A666F6375733A61667465722C0D0A2E742D427574746F6E3A666F6375733A61667465722C0D0A2E75692D627574746F6E3A666F6375733A6166746572207B0D0A20207472616E73666F72';
wwv_flow_api.g_varchar2_table(334) := '6D3A207472616E736C617465592830293B0D0A2020626F782D736861646F773A203020302031707820317078207267626128302C203131382C203232332C20302E3235293B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D7261';
wwv_flow_api.g_varchar2_table(335) := '64696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E707574202B206C6162656C2C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C2C0D0A2E742D427574746F6E3A6E6F74';
wwv_flow_api.g_varchar2_table(336) := '282E742D427574746F6E2D2D73696D706C65292C0D0A2E75692D627574746F6E2C0D0A2E612D427574746F6E2C0D0A2E612D427574746F6E2E612D427574746F6E2D2D706F7075704C4F562C0D0A2E612D49472D627574746F6E2E612D49472D62757474';
wwv_flow_api.g_varchar2_table(337) := '6F6E2D2D636F6E74726F6C73207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233463346535303B0D0A2020626F782D736861646F773A203020302030203170782072676261283235352C2032';
wwv_flow_api.g_varchar2_table(338) := '35352C203235352C20302E3132352920696E7365743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E707574202B206C6162';
wwv_flow_api.g_varchar2_table(339) := '656C3A686F7665722C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C3A686F7665722C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65293A686F7665722C0D0A2E75692D627574';
wwv_flow_api.g_varchar2_table(340) := '746F6E3A686F7665722C0D0A2E612D427574746F6E3A686F7665722C0D0A2E612D427574746F6E2E612D427574746F6E2D2D706F7075704C4F563A686F7665722C0D0A2E612D49472D627574746F6E2E612D49472D627574746F6E2D2D636F6E74726F6C';
wwv_flow_api.g_varchar2_table(341) := '733A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233635363836613B0D0A2020626F782D736861646F773A203020302030203170782072676261283235352C203235352C203235352C20302E31352920696E7365743B0D0A7D';
wwv_flow_api.g_varchar2_table(342) := '0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E707574202B206C6162656C3A666F6375732C0D0A2E617065782D627574746F6E2D67';
wwv_flow_api.g_varchar2_table(343) := '726F757020696E707574202B206C6162656C3A666F6375732C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65293A666F6375732C0D0A2E75692D627574746F6E3A666F6375732C0D0A2E612D427574746F6E3A666F63';
wwv_flow_api.g_varchar2_table(344) := '75732C0D0A2E612D427574746F6E2E612D427574746F6E2D2D706F7075704C4F563A666F6375732C0D0A2E612D49472D627574746F6E2E612D49472D627574746F6E2D2D636F6E74726F6C733A666F637573207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(345) := '6F6C6F723A20233732373537373B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E707574202B206C6162656C2E69732D6163';
wwv_flow_api.g_varchar2_table(346) := '746976652C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C2E69732D6163746976652C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65292E69732D6163746976652C0D0A2E7569';
wwv_flow_api.g_varchar2_table(347) := '2D627574746F6E2E69732D6163746976652C0D0A2E612D427574746F6E2E69732D6163746976652C0D0A2E612D427574746F6E2E612D427574746F6E2D2D706F7075704C4F562E69732D6163746976652C0D0A2E612D49472D627574746F6E2E612D4947';
wwv_flow_api.g_varchar2_table(348) := '2D627574746F6E2D2D636F6E74726F6C732E69732D6163746976652C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E707574202B20';
wwv_flow_api.g_varchar2_table(349) := '6C6162656C3A6163746976652C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C3A6163746976652C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65293A6163746976652C0D0A2E';
wwv_flow_api.g_varchar2_table(350) := '75692D627574746F6E3A6163746976652C0D0A2E612D427574746F6E3A6163746976652C0D0A2E612D427574746F6E2E612D427574746F6E2D2D706F7075704C4F563A6163746976652C0D0A2E612D49472D627574746F6E2E612D49472D627574746F6E';
wwv_flow_api.g_varchar2_table(351) := '2D2D636F6E74726F6C733A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233334333533363B0D0A7D0D0A2E75692D627574746F6E3A686F766572207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D46';
wwv_flow_api.g_varchar2_table(352) := '6F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726964207B0D0A20206261636B67726F756E642D636F6C6F723A20233264326533303B0D0A2020626F726465722D7261646975';
wwv_flow_api.g_varchar2_table(353) := '733A203270783B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A616374697665202B206C6162656C2C0D0A2E742D';
wwv_flow_api.g_varchar2_table(354) := '466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A666F6375733A6E6F74283A636865636B656429202B206C6162656C2C0D0A2E61706578';
wwv_flow_api.g_varchar2_table(355) := '2D627574746F6E2D67726F757020696E7075743A616374697665202B206C6162656C2C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A666F6375733A6E6F74283A636865636B656429202B206C6162656C207B0D0A2020626F782D73';
wwv_flow_api.g_varchar2_table(356) := '6861646F773A20302030203020317078202330303736646620696E7365742C20302030203020327078202332383263333020696E7365742021696D706F7274616E743B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(357) := '723A20233030373664663B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B65643A666F637573202B20';
wwv_flow_api.g_varchar2_table(358) := '6C6162656C2C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B65643A666F637573202B206C6162656C207B0D0A2020626F782D736861646F773A20302030203020317078202330303736646620696E7365742C20302030';
wwv_flow_api.g_varchar2_table(359) := '203020327078202332383263333020696E7365742021696D706F7274616E743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D72632069';
wwv_flow_api.g_varchar2_table(360) := '6E7075743A636865636B6564202B206C6162656C2C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C207B0D0A2020626F726465722D636F6C6F723A20233030373664663B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(361) := '726F756E642D636F6C6F723A20233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E612D427574746F6E2D2D686F742C0D0A2E742D427574746F6E2D2D686F743A6E6F';
wwv_flow_api.g_varchar2_table(362) := '74282E742D427574746F6E2D2D73696D706C65292C0D0A626F6479202E75692D627574746F6E2E75692D627574746F6E2D2D686F742C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D617279207B';
wwv_flow_api.g_varchar2_table(363) := '0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E612D427574746F6E2D2D686F743A686F7665722C0D0A2E742D427574746F6E2D2D686F743A6E6F74282E742D42';
wwv_flow_api.g_varchar2_table(364) := '7574746F6E2D2D73696D706C65293A686F7665722C0D0A626F6479202E75692D627574746F6E2E75692D627574746F6E2D2D686F743A686F7665722C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D707269';
wwv_flow_api.g_varchar2_table(365) := '6D6172793A686F7665722C0D0A2E612D427574746F6E2D2D686F743A6E6F74283A616374697665293A666F6375732C0D0A2E742D427574746F6E2D2D686F743A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74283A616374697665293A';
wwv_flow_api.g_varchar2_table(366) := '666F6375732C0D0A626F6479202E75692D627574746F6E2E75692D627574746F6E2D2D686F743A6E6F74283A616374697665293A666F6375732C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D61';
wwv_flow_api.g_varchar2_table(367) := '72793A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20233030383366393B0D0A7D0D0A2E612D427574746F6E2D2D686F743A6163746976652C0D0A2E742D427574746F6E2D2D686F743A6E6F74';
wwv_flow_api.g_varchar2_table(368) := '282E742D427574746F6E2D2D73696D706C65293A6163746976652C0D0A626F6479202E75692D627574746F6E2E75692D627574746F6E2D2D686F743A6163746976652C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F72';
wwv_flow_api.g_varchar2_table(369) := '6974792D7072696D6172793A6163746976652C0D0A2E612D427574746F6E2D2D686F742E69732D6163746976652C0D0A2E742D427574746F6E2D2D686F743A6E6F74282E742D427574746F6E2D2D73696D706C65292E69732D6163746976652C0D0A626F';
wwv_flow_api.g_varchar2_table(370) := '6479202E75692D627574746F6E2E75692D627574746F6E2D2D686F742E69732D6163746976652C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E69732D616374697665207B0D0A202062';
wwv_flow_api.g_varchar2_table(371) := '61636B67726F756E642D636F6C6F723A20233030363963363B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D627574746F6E2D2D686F74207B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A2E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(372) := '7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E';
wwv_flow_api.g_varchar2_table(373) := '742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F';
wwv_flow_api.g_varchar2_table(374) := '6E2D2D686F74293A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236663646337633B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D';
wwv_flow_api.g_varchar2_table(375) := '706C65293A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6163746976652C0D0A2E74';
wwv_flow_api.g_varchar2_table(376) := '2D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A2023464243453441';
wwv_flow_api.g_varchar2_table(377) := '3B0D0A7D0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D42757474';
wwv_flow_api.g_varchar2_table(378) := '6F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D';
wwv_flow_api.g_varchar2_table(379) := '706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20233432626533313B0D0A7D0D0A2E742D427574746F6E2D2D737563636573733A6E';
wwv_flow_api.g_varchar2_table(380) := '6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(381) := '2D686F74293A6163746976652C0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(382) := '6E642D636F6C6F723A20233342414132433B0D0A7D0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(383) := '6666663B0D0A7D0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D64616E6765723A6E6F7428';
wwv_flow_api.g_varchar2_table(384) := '2E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236635356134653B0D0A7D0D0A2E742D427574';
wwv_flow_api.g_varchar2_table(385) := '746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F';
wwv_flow_api.g_varchar2_table(386) := '74282E742D427574746F6E2D2D686F74293A6163746976652C0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D';
wwv_flow_api.g_varchar2_table(387) := '0A20206261636B67726F756E642D636F6C6F723A20236634343333363B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A20';
wwv_flow_api.g_varchar2_table(388) := '20636F6C6F723A20233030313832643B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E';
wwv_flow_api.g_varchar2_table(389) := '2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A202363366534';
wwv_flow_api.g_varchar2_table(390) := '66663B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D4275';
wwv_flow_api.g_varchar2_table(391) := '74746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6163746976652C0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(392) := '686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236163643866663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C653A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74282E742D42757474';
wwv_flow_api.g_varchar2_table(393) := '6F6E2D2D64616E676572293A6E6F74282E742D427574746F6E2D2D7072696D617279293A6E6F74282E742D427574746F6E2D2D73756363657373293A6E6F74282E742D427574746F6E2D2D7761726E696E6729207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(394) := '636F6C6F723A20234646464646463B0D0A2020636F6C6F723A20233430343034303B0D0A2020626F782D736861646F773A203020302030203170782072676261283235352C203235352C203235352C20302E3132352920696E7365743B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(395) := '2D427574746F6E2D2D73696D706C653A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74282E742D427574746F6E2D2D64616E676572293A6E6F74282E742D427574746F6E2D2D7072696D617279293A6E6F74282E742D427574746F6E2D2D7375';
wwv_flow_api.g_varchar2_table(396) := '6363657373293A6E6F74282E742D427574746F6E2D2D7761726E696E67293A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C653A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74282E742D427574746F6E2D2D64616E676572293A';
wwv_flow_api.g_varchar2_table(397) := '6E6F74282E742D427574746F6E2D2D7072696D617279293A6E6F74282E742D427574746F6E2D2D73756363657373293A6E6F74282E742D427574746F6E2D2D7761726E696E67293A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C653A6E6F';
wwv_flow_api.g_varchar2_table(398) := '74282E742D427574746F6E2D2D686F74293A6E6F74282E742D427574746F6E2D2D64616E676572293A6E6F74282E742D427574746F6E2D2D7072696D617279293A6E6F74282E742D427574746F6E2D2D73756363657373293A6E6F74282E742D42757474';
wwv_flow_api.g_varchar2_table(399) := '6F6E2D2D7761726E696E67292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F74207B0D0A2020626F782D';
wwv_flow_api.g_varchar2_table(400) := '736861646F773A20302030203020317078202330303736646620696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20234646464646463B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F742C0D';
wwv_flow_api.g_varchar2_table(401) := '0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F74202E742D49636F6E207B0D0A2020636F6C6F723A20233030373664663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A686F';
wwv_flow_api.g_varchar2_table(402) := '7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F742E69732D616374697665207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(403) := '756E642D636F6C6F723A20233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E';
wwv_flow_api.g_varchar2_table(404) := '2D2D73696D706C652E742D427574746F6E2D2D686F743A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F742E69732D616374697665202E742D49636F6E207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(405) := '20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020626F782D736861646F773A2030203020302031707820236163';
wwv_flow_api.g_varchar2_table(406) := '6438666620696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20234646464646463B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74';
wwv_flow_api.g_varchar2_table(407) := '292C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F7429202E742D49636F6E207B0D0A2020636F6C6F723A20233264396366663B0D0A7D0D0A2E742D42757474';
wwv_flow_api.g_varchar2_table(408) := '6F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D';
wwv_flow_api.g_varchar2_table(409) := '427574746F6E2D2D686F74293A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(410) := '6E642D636F6C6F723A20236163643866663B0D0A2020636F6C6F723A20233030313832643B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74293A686F';
wwv_flow_api.g_varchar2_table(411) := '766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74293A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D';
wwv_flow_api.g_varchar2_table(412) := '706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20233030313832643B0D0A7D0D0A2E742D427574746F6E2D2D73696D70';
wwv_flow_api.g_varchar2_table(413) := '6C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020626F782D736861646F773A20302030203020317078202346424345344120696E7365743B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(414) := '6F723A20234646464646463B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F';
wwv_flow_api.g_varchar2_table(415) := '6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F7429202E742D49636F6E207B0D0A2020636F6C6F723A20236331393130343B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A';
wwv_flow_api.g_varchar2_table(416) := '6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74293A666F6375732C0D0A2E742D427574746F';
wwv_flow_api.g_varchar2_table(417) := '6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20234642434534413B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(418) := '233434333330323B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74293A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D70';
wwv_flow_api.g_varchar2_table(419) := '6C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74293A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D';
wwv_flow_api.g_varchar2_table(420) := '427574746F6E2D2D686F74292E69732D616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D4275';
wwv_flow_api.g_varchar2_table(421) := '74746F6E2D2D686F7429207B0D0A2020626F782D736861646F773A20302030203020317078202366343433333620696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20234646464646463B0D0A7D0D0A2E742D427574746F6E2D2D7369';
wwv_flow_api.g_varchar2_table(422) := '6D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F7429202E';
wwv_flow_api.g_varchar2_table(423) := '742D49636F6E207B0D0A2020636F6C6F723A20236634343333363B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D4275';
wwv_flow_api.g_varchar2_table(424) := '74746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74293A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D';
wwv_flow_api.g_varchar2_table(425) := '427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236634343333363B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D4275';
wwv_flow_api.g_varchar2_table(426) := '74746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74293A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D68';
wwv_flow_api.g_varchar2_table(427) := '6F74293A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665202E742D49636F6E207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(428) := '6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020626F782D736861646F773A20302030203020317078';
wwv_flow_api.g_varchar2_table(429) := '202333424141324320696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20234646464646463B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(430) := '2D686F74292C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F7429202E742D49636F6E207B0D0A2020636F6C6F723A20233362616132633B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(431) := '427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74';
wwv_flow_api.g_varchar2_table(432) := '282E742D427574746F6E2D2D686F74293A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(433) := '67726F756E642D636F6C6F723A20233342414132433B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74';
wwv_flow_api.g_varchar2_table(434) := '293A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74293A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(435) := '2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(436) := '6E6F5549207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55493A6E6F74283A686F766572293A6E6F74283A666F637573293A6E6F7428';
wwv_flow_api.g_varchar2_table(437) := '2E69732D61637469766529207B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55493A686F7665722C0D0A2E742D427574746F6E2D2D6E6F55493A666F6375732C0D0A2E742D427574746F6E2D2D6E6F';
wwv_flow_api.g_varchar2_table(438) := '55492E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55493A666F6375733A686F766572207B0D0A2020626F782D736861646F773A20302030203020';
wwv_flow_api.g_varchar2_table(439) := '3170782072676261283235352C203235352C203235352C20302E3132352920696E7365743B0D0A7D0D0A2E742D427574746F6E2D2D6C696E6B207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E742021696D706F7274';
wwv_flow_api.g_varchar2_table(440) := '616E743B0D0A2020626F782D736861646F773A206E6F6E652021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D6C696E6B3A686F766572207B0D0A2020746578742D6465636F726174696F6E3A20756E6465726C696E653B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(441) := '2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2C0D0A2E742D427574746F6E2D2D6C696E6B202E742D49636F6E207B0D0A2020636F6C6F723A20233431613566663B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E';
wwv_flow_api.g_varchar2_table(442) := '2D2D686F742C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F74202E742D49636F6E207B0D0A2020636F6C6F723A20233030373664663B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D707269';
wwv_flow_api.g_varchar2_table(443) := '6D6172792C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D7072696D6172792C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D617279202E742D49636F6E2C0D0A2E742D427574746F6E2D2D6C69';
wwv_flow_api.g_varchar2_table(444) := '6E6B2E742D427574746F6E2D2D7072696D617279202E742D49636F6E207B0D0A2020636F6C6F723A20233264396366662021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7761726E696E672C0D';
wwv_flow_api.g_varchar2_table(445) := '0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D7761726E696E672C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7761726E696E67202E742D49636F6E2C0D0A2E742D427574746F6E2D2D6C696E6B2E742D42';
wwv_flow_api.g_varchar2_table(446) := '7574746F6E2D2D7761726E696E67202E742D49636F6E207B0D0A2020636F6C6F723A20236331393130342021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D64616E6765722C0D0A2E742D427574';
wwv_flow_api.g_varchar2_table(447) := '746F6E2D2D6C696E6B2E742D427574746F6E2D2D64616E6765722C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D64616E676572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D6461';
wwv_flow_api.g_varchar2_table(448) := '6E676572202E742D49636F6E207B0D0A2020636F6C6F723A20236634343333362021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D737563636573732C0D0A2E742D427574746F6E2D2D6C696E6B';
wwv_flow_api.g_varchar2_table(449) := '2E742D427574746F6E2D2D737563636573732C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D73756363657373202E742D49636F6E2C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D73756363657373202E';
wwv_flow_api.g_varchar2_table(450) := '742D49636F6E207B0D0A2020636F6C6F723A20233362616132632021696D706F7274616E743B0D0A7D0D0A2E742D4865616465722D6272616E64696E67202E742D427574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73';
wwv_flow_api.g_varchar2_table(451) := '706172656E743B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D686561646572207B0D0A2020626F726465722D7261646975733A203270783B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2E74';
wwv_flow_api.g_varchar2_table(452) := '2D427574746F6E2D2D6865616465723A666F6375733A6265666F72652C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A6163746976653A666F6375733A6265666F7265207B0D0A2020626F782D736861646F773A203020302030';
wwv_flow_api.g_varchar2_table(453) := '20317078202332643963666620696E7365742021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A686F7665722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F63';
wwv_flow_api.g_varchar2_table(454) := '75732C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D68';
wwv_flow_api.g_varchar2_table(455) := '65616465723A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A6163746976652C0D';
wwv_flow_api.g_varchar2_table(456) := '0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375733A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E34293B0D0A7D0D0A2E742D427574';
wwv_flow_api.g_varchar2_table(457) := '746F6E2E742D427574746F6E2D2D6865616465722E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3235293B0D0A2020626F782D736861646F773A206E6F6E65';
wwv_flow_api.g_varchar2_table(458) := '3B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D686561646572547265653A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202332643963666620696E7365743B0D0A7D0D0A406D65646961206F6E6C79';
wwv_flow_api.g_varchar2_table(459) := '2073637265656E20616E6420286D61782D77696474683A20343830707829207B0D0A20202E742D427574746F6E2E742D427574746F6E2D2D68656164657254726565207B0D0A202020206261636B67726F756E642D636F6C6F723A207267626128323535';
wwv_flow_api.g_varchar2_table(460) := '2C203235352C203235352C20302E3235293B0D0A20207D0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465725269676874207B0D0A20206261636B67726F756E642D636F6C6F723A20233265333433393B0D0A2020626F726465';
wwv_flow_api.g_varchar2_table(461) := '723A2031707820736F6C696420233435346535353B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D68656164657252696768743A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233435346535353B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(462) := '2E742D427574746F6E2E742D427574746F6E2D2D68656164657252696768743A6163746976652C0D0A2E742D427574746F6E2E742D427574746F6E2D2D68656164657252696768742E69732D616374697665207B0D0A2020636F6C6F723A202366666666';
wwv_flow_api.g_varchar2_table(463) := '66663B0D0A7D0D0A2E742D427574746F6E2D2D6E6176426172202E742D427574746F6E2D6261646765207B0D0A2020626F726465722D7261646975733A20313670783B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C2032';
wwv_flow_api.g_varchar2_table(464) := '35352C203235352C20302E3335293B0D0A7D0D0A2E742D427574746F6E2D2D68656C70427574746F6E202E612D49636F6E207B0D0A20206F7061636974793A20302E353B0D0A7D0D0A2E742D4865616465722D6E6176426172202E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(465) := '2D6865616465722E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233030346539333B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6E6F5549202E66';
wwv_flow_api.g_varchar2_table(466) := '613A61667465722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6C696E6B202E66613A61667465722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C65202E66613A6166746572207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(467) := '636F6C6F723A20234646463B0D0A7D0D0A2E742D427574746F6E2D2D64616E676572202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A686F766572202E66613A6166746572207B0D';
wwv_flow_api.g_varchar2_table(468) := '0A20206261636B67726F756E642D636F6C6F723A20236634343333363B0D0A7D0D0A2E742D427574746F6E2D2D73756363657373202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D73756363657373';
wwv_flow_api.g_varchar2_table(469) := '3A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20233342414132433B0D0A7D0D0A2E742D427574746F6E2D2D7072696D617279202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C';
wwv_flow_api.g_varchar2_table(470) := '652E742D427574746F6E2D2D7072696D6172793A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236163643866663B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E67202E66613A6166746572';
wwv_flow_api.g_varchar2_table(471) := '2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20234642434534413B0D0A7D0D0A2E742D427574746F6E';
wwv_flow_api.g_varchar2_table(472) := '2D2D686F74202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A7D';
wwv_flow_api.g_varchar2_table(473) := '0D0A2E742D426F64792D616374696F6E73546F67676C65207B0D0A20206261636B67726F756E642D636F6C6F723A20233265333433393B0D0A2020626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E303735293B';
wwv_flow_api.g_varchar2_table(474) := '0D0A2020626F726465722D72696768742D636F6C6F723A207472616E73706172656E743B0D0A2020636F6C6F723A20696E697469616C3B0D0A7D0D0A2E752D52544C202E742D426F64792D616374696F6E73546F67676C65207B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(475) := '2D636F6C6F723A2072676261283235352C203235352C203235352C20302E303735293B0D0A2020626F726465722D6C6566742D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D616374696F6E73546F67676C653A616374';
wwv_flow_api.g_varchar2_table(476) := '697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233435346535353B0D0A7D0D0A2E742D426F64792D616374696F6E73546F67676C653A666F6375732C0D0A2E742D426F64792D616374696F6E73546F67676C653A616374697665207B';
wwv_flow_api.g_varchar2_table(477) := '0D0A2020626F726465722D636F6C6F723A20233030373664663B0D0A7D0D0A2E742D427574746F6E526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233232323632393B0D0A2020636F6C6F723A20236665666566653B0D0A20';
wwv_flow_api.g_varchar2_table(478) := '20626F726465722D7261646975733A203270783B0D0A2020626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E303735293B0D0A2020626F782D736861646F773A20302032707820327078207267626128302C2030';
wwv_flow_api.g_varchar2_table(479) := '2C20302C20302E3035293B0D0A7D0D0A2E742D427574746F6E526567696F6E2D2D6E6F5549207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(480) := '742D427574746F6E526567696F6E2D2D77697A6172642C0D0A2E742D427574746F6E526567696F6E2D2D6469616C6F67526567696F6E207B0D0A2020626F726465722D7261646975733A2030203020327078203270783B0D0A7D0D0A2E742D427574746F';
wwv_flow_api.g_varchar2_table(481) := '6E526567696F6E2D2D6469616C6F67526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F6479202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D';
wwv_flow_api.g_varchar2_table(482) := '427574746F6E526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20236566656665663B0D0A7D0D0A2E742D426F64792D7469746C65202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E';
wwv_flow_api.g_varchar2_table(483) := '2D7469746C65207B0D0A2020636F6C6F723A20236637663766373B0D0A7D0D0A2E742D426F64792D696E666F202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0D0A202063';
wwv_flow_api.g_varchar2_table(484) := '6F6C6F723A20236637663766373B0D0A7D0D0A2E742D526567696F6E202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C652C0D0A2E742D427574746F6E526567696F6E202E742D42';
wwv_flow_api.g_varchar2_table(485) := '7574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20236535653565353B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D427574746F6E526567696F';
wwv_flow_api.g_varchar2_table(486) := '6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F726465722D7261646975733A20303B0D0A7D0D0A2E742D4469616C6F672D666F6F746572202E742D427574746F6E526567696F6E207B0D0A20';
wwv_flow_api.g_varchar2_table(487) := '20626F726465722D746F702D636F6C6F723A2072676261283235352C203235352C203235352C20302E3035293B0D0A7D0D0A2E66632E75692D776964676574207B0D0A20206261636B67726F756E642D636F6C6F723A20233232323632393B0D0A202062';
wwv_flow_api.g_varchar2_table(488) := '6F726465722D7261646975733A203270783B0D0A7D0D0A2E66632D746F6F6C626172207B0D0A2020626F726465722D636F6C6F723A20233334336134303B0D0A20206261636B67726F756E642D636F6C6F723A20233232323632393B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(489) := '65722D7261646975733A2032707820327078203020303B0D0A7D0D0A2E66632D746F6F6C6261722068322C0D0A2E6663202E66632D62617369632D766965772074642E66632D6461792D6E756D6265722C0D0A2E6663202E66632D6461792D6E756D6265';
wwv_flow_api.g_varchar2_table(490) := '72207B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E66632D6461792D6865616465722E75692D7769646765742D6865616465722C0D0A2E66632D76696577202E75692D7769646765742D686561646572207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(491) := '756E642D636F6C6F723A20233234323832633B0D0A2020636F6C6F723A20236634663466343B0D0A2020626F726465722D636F6C6F723A20233330333533613B0D0A7D0D0A6469762E66632D6167656E64614C697374207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(492) := '6E642D636F6C6F723A20233232323632393B0D0A2020626F726465722D636F6C6F723A20233334336134303B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D646179486561646572207B0D0A';
wwv_flow_api.g_varchar2_table(493) := '20206261636B67726F756E642D636F6C6F723A20233362343234383B0D0A2020636F6C6F723A20236634663466343B0D0A2020626F726465722D636F6C6F723A20233236326232663B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D646179';
wwv_flow_api.g_varchar2_table(494) := '207B0D0A2020636F6C6F723A20236634663466343B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D64617465207B0D0A2020636F6C6F723A20236365636563653B0D0A7D0D0A2E6663202E66632D6167656E64614C697374202E66632D6576';
wwv_flow_api.g_varchar2_table(495) := '656E742D73746172742D74696D652C0D0A2E6663202E66632D6167656E64614C697374202E66632D6576656E742D616C6C2D646179207B0D0A2020636F6C6F723A20236438643864383B0D0A7D0D0A626F6479202E66632074642E66632D746F6461792C';
wwv_flow_api.g_varchar2_table(496) := '0D0A626F6479202E6663202E75692D7769646765742D636F6E74656E74207B0D0A2020626F726465722D636F6C6F723A20233339336634353B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A626F6479202E75692D7769646765742D636F6E';
wwv_flow_api.g_varchar2_table(497) := '74656E742E66632D746F6461792E75692D73746174652D686967686C69676874207B0D0A20206261636B67726F756E642D636F6C6F723A20233264333333373B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D6974656D207B0D0A2020626F';
wwv_flow_api.g_varchar2_table(498) := '726465722D636F6C6F723A20233236326232663B0D0A7D0D0A2E6663202E75692D627574746F6E3A6163746976652C0D0A2E6663202E75692D627574746F6E3A666F6375732C0D0A2E66632D766965773A6163746976652C0D0A2E66632D766965773A66';
wwv_flow_api.g_varchar2_table(499) := '6F637573207B0D0A20206F75746C696E653A2031707820736F6C696420233030373664663B0D0A7D0D0A2E66632D766965772D636F6E7461696E6572203E202E66632D766965773A6163746976652C0D0A2E66632D766965772D636F6E7461696E657220';
wwv_flow_api.g_varchar2_table(500) := '3E202E66632D766965773A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A7D0D0A2E742D43617264207B0D0A2020626F782D736861646F773A20302032707820347078202D327078207267626128302C20302C20302C20302E303735';
wwv_flow_api.g_varchar2_table(501) := '293B0D0A7D0D0A2E742D436172642D77726170207B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20233232323632393B0D0A2020626F726465722D636F6C6F723A207267626128323535';
wwv_flow_api.g_varchar2_table(502) := '2C203235352C203235352C20302E303735293B0D0A7D0D0A2E742D436172642D777261703A666F637573207B0D0A2020626F726465722D636F6C6F723A20233030373664663B0D0A7D0D0A2E742D436172642D69636F6E207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(503) := '233232323632393B0D0A7D0D0A2E742D436172642D64657363207B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E742D436172642D696E666F2C0D0A2E742D436172642D7375627469746C65207B0D0A2020636F6C6F723A202362666266';
wwv_flow_api.g_varchar2_table(504) := '62663B0D0A7D0D0A2E742D436172642D7469746C65207B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E742D436172642D636F6C6F7246696C6C2C0D0A2E742D436172642D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(505) := '723A20233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D6665617475726564202E742D436172642D626F6479207B0D0A2020626F726465722D746F702D636F6C6F723A2072676261283235352C20';
wwv_flow_api.g_varchar2_table(506) := '3235352C203235352C20302E303735293B0D0A7D0D0A2E742D43617264732D2D6261736963202E742D436172642D7469746C6557726170207B0D0A2020626F782D736861646F773A2030202D31707820302072676261283235352C203235352C20323535';
wwv_flow_api.g_varchar2_table(507) := '2C20302E30352920696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6D70616374202E742D436172642D7469746C6557726170207B0D0A2020626F782D736861646F773A2030202D31707820302072676261283235352C203235352C203235352C';
wwv_flow_api.g_varchar2_table(508) := '20302E30352920696E7365743B0D0A7D0D0A2E742D43617264732D2D6665617475726564202E742D436172642D626F6479207B0D0A2020626F726465722D746F702D636F6C6F723A2072676261283235352C203235352C203235352C20302E303735293B';
wwv_flow_api.g_varchar2_table(509) := '0D0A7D0D0A2E742D43617264732D2D626C6F636B202E742D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A2020746578742D736861646F773A20302031707820';
wwv_flow_api.g_varchar2_table(510) := '317078207267626128302C20302C20302C20302E31293B0D0A7D0D0A2E742D43617264732D2D616E696D526169736543617264202E742D436172643A686F766572207B0D0A2020626F782D736861646F773A2030203130707820347078202D3470782072';
wwv_flow_api.g_varchar2_table(511) := '67626128302C20302C20302C20302E3035293B0D0A7D0D0A2E742D43617264732D2D73616D706C6541707073466F6F746572207B0D0A20206D617267696E2D746F703A20333270783B0D0A7D0D0A2E742D43617264732D2D73616D706C6541707073466F';
wwv_flow_api.g_varchar2_table(512) := '6F746572202E742D43617264207B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D43617264732D2D73616D706C6541707073466F6F746572202E742D43617264732D6974656D207B0D0A2020646973706C61793A20626C6F636B';
wwv_flow_api.g_varchar2_table(513) := '3B0D0A2020666C65782D67726F773A20313B0D0A202077696474683A203235253B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0D0A20202E742D43617264732D2D73616D706C';
wwv_flow_api.g_varchar2_table(514) := '6541707073466F6F746572202E742D43617264732D6974656D207B0D0A2020202077696474683A203530253B0D0A20207D0D0A7D0D0A2E742D43617264732D2D73616D706C6541707073466F6F746572202E742D436172642D777261702C0D0A2E742D43';
wwv_flow_api.g_varchar2_table(515) := '617264732D2D73616D706C6541707073466F6F746572202E742D436172642D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E74';
wwv_flow_api.g_varchar2_table(516) := '3B0D0A7D0D0A2E742D43617264732D2D73616D706C6541707073466F6F746572202E742D436172642D69636F6E207B0D0A20207472616E736974696F6E3A20302E327320656173653B0D0A7D0D0A2E742D43617264732D2D73616D706C6541707073466F';
wwv_flow_api.g_varchar2_table(517) := '6F746572202E742D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233030303030303B0D0A2020626F782D736861646F773A203020302030203170782072676261283235352C203235352C203235352C20302E312920696E736574';
wwv_flow_api.g_varchar2_table(518) := '3B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6D6F6E74685469746C65207B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E742D436C617373696343616C656E6461722D646179436F6C756D6E207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(519) := '726F756E642D636F6C6F723A20233236326232663B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A2020626F726465722D636F6C6F723A20233264333333373B0D0A2020636F6C6F723A20236438643864383B0D0A7D0D0A2E742D436C';
wwv_flow_api.g_varchar2_table(520) := '617373696343616C656E6461722D646179207B0D0A2020626F726465722D636F6C6F723A20233264333333373B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6461792E69732D696E616374697665202E742D436C617373696343616C656E';
wwv_flow_api.g_varchar2_table(521) := '6461722D64617465207B0D0A20206F7061636974793A20302E353B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6461792E69732D7765656B656E642C0D0A2E742D436C617373696343616C656E6461722D6461792E69732D696E61637469';
wwv_flow_api.g_varchar2_table(522) := '7665207B0D0A20206261636B67726F756E642D636F6C6F723A20233234323832633B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6461792E69732D746F646179202E742D436C617373696343616C656E6461722D64617465207B0D0A2020';
wwv_flow_api.g_varchar2_table(523) := '6261636B67726F756E642D636F6C6F723A20233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D436C617373696343616C656E6461722D64617465207B0D0A2020636F6C6F723A20236266626662663B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(524) := '742D436C617373696343616C656E6461722D6576656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20233264333333373B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6576656E74207B0D0A2020636F6C6F723A20236665';
wwv_flow_api.g_varchar2_table(525) := '666566653B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6576656E742061207B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D436C617373';
wwv_flow_api.g_varchar2_table(526) := '696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D74696D65436F6C2C0D0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D74696D65436F6C';
wwv_flow_api.g_varchar2_table(527) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20233236326232663B0D0A7D0D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461794576656E74732C0D0A2E742D436C';
wwv_flow_api.g_varchar2_table(528) := '617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461794576656E7473207B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E742D436C617373696343616C656E6461722D2D7765656B6C';
wwv_flow_api.g_varchar2_table(529) := '79202E742D436C617373696343616C656E6461722D6461794576656E747320612C0D0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461794576656E74732061207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(530) := '6B67726F756E642D636F6C6F723A20233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461792E69732D';
wwv_flow_api.g_varchar2_table(531) := '746F6461792C0D0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461792E69732D746F646179207B0D0A20206261636B67726F756E642D636F6C6F723A20236466663066663B0D0A7D';
wwv_flow_api.g_varchar2_table(532) := '0D0A2E742D436C617373696343616C656E6461722D6C697374207B0D0A2020626F726465722D636F6C6F723A20233264333333373B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6C6973745469746C652C0D0A2E742D436C617373696343';
wwv_flow_api.g_varchar2_table(533) := '616C656E6461722D6C6973744576656E74207B0D0A2020626F726465722D636F6C6F723A20233264333333373B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6C6973745469746C65207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(534) := '3A20233236326232663B0D0A2020636F6C6F723A20236438643864383B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6C6973744576656E74207B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E742D436F6D6D656E74732D';
wwv_flow_api.g_varchar2_table(535) := '2D63686174202E742D436F6D6D656E74732D636F6D6D656E74207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3035293B0D0A2020636F6C6F723A20236666663B0D0A7D0D0A2E742D43';
wwv_flow_api.g_varchar2_table(536) := '6F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D636F6D6D656E743A6166746572207B0D0A2020626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C2030293B0D0A2020626F726465722D72696768742D63';
wwv_flow_api.g_varchar2_table(537) := '6F6C6F723A2072676261283235352C203235352C203235352C20302E3035293B0D0A7D0D0A2E752D52544C202E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D636F6D6D656E743A6166746572207B0D0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(538) := '72696768742D636F6C6F723A2072676261283235352C203235352C203235352C2030293B0D0A2020626F726465722D6C6566742D636F6C6F723A2072676261283235352C203235352C203235352C20302E3035293B0D0A7D0D0A2E742D436F6D6D656E74';
wwv_flow_api.g_varchar2_table(539) := '732D2D63686174202E742D436F6D6D656E74732D6974656D2E69732D616374697665202E742D436F6D6D656E74732D636F6D6D656E74207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E';
wwv_flow_api.g_varchar2_table(540) := '31293B0D0A2020636F6C6F723A20236666663B0D0A7D0D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D6974656D2E69732D616374697665202E742D436F6D6D656E74732D636F6D6D656E743A6166746572207B0D0A2020';
wwv_flow_api.g_varchar2_table(541) := '626F726465722D72696768742D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E752D52544C202E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D6974656D2E69732D6163746976';
wwv_flow_api.g_varchar2_table(542) := '65202E742D436F6D6D656E74732D636F6D6D656E743A6166746572207B0D0A2020626F726465722D72696768742D636F6C6F723A2072676261283235352C203235352C203235352C2030293B0D0A2020626F726465722D6C6566742D636F6C6F723A2072';
wwv_flow_api.g_varchar2_table(543) := '676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E742D436F6D6D656E74732D2D6261736963202E742D436F6D6D656E74732D6974656D2E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A202332';
wwv_flow_api.g_varchar2_table(544) := '35326132653B0D0A7D0D0A2E742D436F6D6D656E74732D6974656D2E69732D73797374656D4D657373616765207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283234322C203234322C203234322C20302E3035293B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(545) := '742D436F6D6D656E74732D696E666F207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3635293B0D0A7D0D0A2E742D436F6D6D656E74732D636F6D6D656E74207B0D0A2020636F6C6F723A20236666663B0D0A7D0D';
wwv_flow_api.g_varchar2_table(546) := '0A2E742D436F6D706C6574656E657373207B0D0A20206261636B67726F756E642D636F6C6F723A20233030303030303B0D0A2020626F782D736861646F773A203020302030203170782072676261283235352C203235352C203235352C20302E31292069';
wwv_flow_api.g_varchar2_table(547) := '6E7365743B0D0A7D0D0A612E742D436F6D706C6574656E6573733A686F766572202E742D436F6D706C6574656E6573732D6C6162656C57726170207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C20323535';
wwv_flow_api.g_varchar2_table(548) := '2C20302E3235293B0D0A7D0D0A612E742D436F6D706C6574656E6573733A686F766572202E742D436F6D706C6574656E6573732D6C6162656C207B0D0A20206261636B67726F756E642D636F6C6F723A20233030303030303B0D0A7D0D0A2E742D436F6D';
wwv_flow_api.g_varchar2_table(549) := '706C6574656E6573732D66696C6C207B0D0A2020626F782D736861646F773A203020302030203170782072676261283235352C203235352C203235352C20302E31352920696E7365743B0D0A7D0D0A2E742D436F6D706C6574656E6573732D6C6162656C';
wwv_flow_api.g_varchar2_table(550) := '207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0D0A7D0D0A2E742D436F6E66696750616E656C';
wwv_flow_api.g_varchar2_table(551) := '207B0D0A2020626F782D736861646F773A2030202D31707820302072676261283235352C203235352C203235352C20302E312920696E7365743B0D0A7D0D0A2E742D436F6E66696750616E656C2D61626F7574207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(552) := '636F6C6F723A20236666663765303B0D0A2020636F6C6F723A20233536353635363B0D0A2020626F782D736861646F773A2030202D31707820302072676261283235352C203235352C203235352C20302E312920696E7365743B0D0A7D0D0A2E742D436F';
wwv_flow_api.g_varchar2_table(553) := '6E66696750616E656C2D6D61696E207B0D0A2020626F782D736861646F773A202D317078203020302072676261283235352C203235352C203235352C20302E312920696E7365743B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420';
wwv_flow_api.g_varchar2_table(554) := '286D61782D77696474683A20363430707829207B0D0A20202E742D436F6E66696750616E656C2D6D61696E207B0D0A20202020626F782D736861646F773A2030202D31707820302072676261283235352C203235352C203235352C20302E312920696E73';
wwv_flow_api.g_varchar2_table(555) := '65743B0D0A20207D0D0A7D0D0A2E742D436F6E66696750616E656C2D69636F6E207B0D0A2020626F726465722D7261646975733A20313030253B0D0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(556) := '4646463B0D0A7D0D0A2E742D436F6E66696750616E656C2D69636F6E2E69732D656E61626C6564207B0D0A20206261636B67726F756E642D636F6C6F723A20233342414132433B0D0A7D0D0A2E742D436F6E66696750616E656C2D69636F6E2E69732D64';
wwv_flow_api.g_varchar2_table(557) := '697361626C6564207B0D0A20206261636B67726F756E642D636F6C6F723A20236634343333363B0D0A7D0D0A2E742D436F6E66696750616E656C2D73657474696E672C0D0A2E742D436F6E66696750616E656C2D737461747573207B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(558) := '723A20236232623262323B0D0A7D0D0A2E742D436F6E66696750616E656C2D737461747573207B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E742D436F6E66696750616E656C2D617474724C696E6B207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(559) := '6232623262323B0D0A2020626F782D736861646F773A2030202D31707820302072676261283235352C203235352C203235352C20302E30352920696E7365743B0D0A7D0D0A2E742D436F6E66696750616E656C2D617474724C696E6B3A686F766572207B';
wwv_flow_api.g_varchar2_table(560) := '0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3035293B0D0A2020626F782D736861646F773A20302031707820302072676261283235352C203235352C203235352C20302E3035293B0D0A';
wwv_flow_api.g_varchar2_table(561) := '7D0D0A2E742D436F6E66696750616E656C2D6174747256616C7565207B0D0A2020636F6C6F723A20233431613566663B0D0A7D0D0A2E742D436F6E74656E74426C6F636B2D2D736861646F774247202E742D436F6E74656E74426C6F636B2D626F647920';
wwv_flow_api.g_varchar2_table(562) := '7B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3035293B0D0A2020626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(563) := '436F6E74656E74426C6F636B2D2D6C696768744247202E742D436F6E74656E74426C6F636B2D626F6479207B0D0A2020626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E742D436F6E7465';
wwv_flow_api.g_varchar2_table(564) := '6E74526F772D6974656D207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A2072676261283235352C203235352C203235352C20302E303735293B0D0A7D0D0A2E742D436F6E74656E74526F772D69636F6E577261702C0D0A2E742D436F6E';
wwv_flow_api.g_varchar2_table(565) := '74656E74526F772D6465736372697074696F6E2C0D0A2E742D436F6E74656E74526F772D6D697363207B0D0A2020636F6C6F723A20236232623262323B0D0A7D0D0A2E742D4469616C6F67207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(566) := '3232323632393B0D0A7D0D0A2E742D4469616C6F67203A3A2D7765626B69742D7363726F6C6C6261722D7468756D62207B0D0A20206261636B67726F756E642D636F6C6F723A20233562363636663B0D0A7D0D0A2E742D4469616C6F67203A3A2D776562';
wwv_flow_api.g_varchar2_table(567) := '6B69742D7363726F6C6C6261722D7468756D623A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233637373337643B0D0A7D0D0A2E742D4469616C6F673A3A2D7765626B69742D7363726F6C6C6261722D747261636B207B0D0A';
wwv_flow_api.g_varchar2_table(568) := '20206261636B67726F756E642D636F6C6F723A20233232323632393B0D0A7D0D0A2E742D4469616C6F67526567696F6E2D627574746F6E73207B0D0A2020626F782D736861646F773A20696E73657420302031707820302072676261283235352C203235';
wwv_flow_api.g_varchar2_table(569) := '352C203235352C20302E3035293B0D0A7D0D0A2E612D46532D636F6E74726F6C202B202E612D46532D636F6E74726F6C207B0D0A2020626F726465722D746F702D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D';
wwv_flow_api.g_varchar2_table(570) := '0D0A2E612D46532D746F67676C65207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F726465722D7261646975733A';
wwv_flow_api.g_varchar2_table(571) := '203270783B0D0A7D0D0A2E612D46532D746F67676C653A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3235293B0D0A7D0D0A2E612D46532D746F67676C653A666F6375';
wwv_flow_api.g_varchar2_table(572) := '73207B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A2020626F782D736861646F773A203020317078203170782030207267626128302C203131382C203232332C20302E3835293B0D0A7D0D0A2E612D46532D636C6561';
wwv_flow_api.g_varchar2_table(573) := '72427574746F6E2C0D0A2E612D46532D746F67676C654F766572666C6F77207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020636F6C6F723A20233030373664663B0D0A7D0D0A2E612D46532D73656172';
wwv_flow_api.g_varchar2_table(574) := '6368207370616E2E617065782D6974656D2D69636F6E2C0D0A2E612D46532D66696C746572207370616E2E617065782D6974656D2D69636F6E207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3635293B0D0A7D0D';
wwv_flow_api.g_varchar2_table(575) := '0A2E612D46532D736561726368207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E742D466F6F746572207B0D0A2020626F726465722D746F703A20317078';
wwv_flow_api.g_varchar2_table(576) := '20736F6C69642072676261283235352C203235352C203235352C20302E3035293B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303235293B0D0A7D0D0A2E742D466F6F7465722D746F70';
wwv_flow_api.g_varchar2_table(577) := '427574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233232323632393B0D0A2020636F6C6F723A20236363636363633B0D0A2020626F782D736861646F773A203020302030203170782072676261283235352C203235352C203235';
wwv_flow_api.g_varchar2_table(578) := '352C20302E312920696E7365743B0D0A7D0D0A2E742D466F6F7465722D746F70427574746F6E3A686F766572207B0D0A2020626F782D736861646F773A203020302030203170782072676261283235352C203235352C203235352C20302E312920696E73';
wwv_flow_api.g_varchar2_table(579) := '65742C20302032707820347078207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E742D466F6F7465722D746F70427574746F6E3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330303736646620';
wwv_flow_api.g_varchar2_table(580) := '696E7365743B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E65723A6265666F7265207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E612D4952522D7365617263682D6669656C642C0D0A2E612D4947202E612D546F6F';
wwv_flow_api.g_varchar2_table(581) := '6C6261722D696E70757454657874207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233238326333303B0D0A2020626F726465722D636F6C6F723A20233365343634633B0D0A7D0D0A2E612D49';
wwv_flow_api.g_varchar2_table(582) := '47202E612D546F6F6C6261722D696E70757454657874207B0D0A2020626F782D736861646F773A20302030203020317078202333653436346320696E7365743B0D0A7D0D0A2E617065782D6974656D2D74657874617265612C0D0A2E617065782D697465';
wwv_flow_api.g_varchar2_table(583) := '6D2D746578742C0D0A2E617065782D6974656D2D73656C6563742C0D0A2E617065782D6974656D2D6D756C74692C0D0A73656C6563742E6C6973746D616E61676572207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(584) := '642D636F6C6F723A20233238326333303B0D0A2020626F726465722D636F6C6F723A20233365343634633B0D0A7D0D0A2E617065782D6974656D2D74657874617265612E617065782D706167652D6974656D2D6572726F722C0D0A2E617065782D697465';
wwv_flow_api.g_varchar2_table(585) := '6D2D746578742E617065782D706167652D6974656D2D6572726F722C0D0A2E617065782D6974656D2D73656C6563742E617065782D706167652D6974656D2D6572726F722C0D0A2E617065782D6974656D2D6D756C74692E617065782D706167652D6974';
wwv_flow_api.g_varchar2_table(586) := '656D2D6572726F722C0D0A73656C6563742E6C6973746D616E616765722E617065782D706167652D6974656D2D6572726F72207B0D0A2020626F726465722D636F6C6F723A20236637373036363B0D0A7D0D0A2E617065782D6974656D2D746578746172';
wwv_flow_api.g_varchar2_table(587) := '65612E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E617065782D6974656D2D746578742E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E61706578';
wwv_flow_api.g_varchar2_table(588) := '2D6974656D2D73656C6563742E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E617065782D6974656D2D6D756C74692E617065782D706167652D6974656D2D6572726F723A72657175697265643A7661';
wwv_flow_api.g_varchar2_table(589) := '6C69642C0D0A73656C6563742E6C6973746D616E616765722E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C6964207B0D0A2020626F726465722D636F6C6F723A20233365343634633B0D0A7D0D0A2E742D466F726D';
wwv_flow_api.g_varchar2_table(590) := '2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E617065782D6974656D2D777261707065722D2D74657874617265612E6A732D73686F772D6C6162656C202E742D466F726D2D6C6162656C3A6265666F72652C0D0A2E742D46';
wwv_flow_api.g_varchar2_table(591) := '6F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E617065782D6974656D2D777261707065722D2D74657874617265612E69732D616374697665202E742D466F726D2D6C6162656C3A6265666F7265207B0D0A20206261';
wwv_flow_api.g_varchar2_table(592) := '636B67726F756E642D636F6C6F723A20233238326333303B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E617065782D6974656D2D777261707065722D2D74657874617265613A666F637573';
wwv_flow_api.g_varchar2_table(593) := '2D77697468696E202E742D466F726D2D6C6162656C3A6265666F7265207B0D0A20206261636B67726F756E642D636F6C6F723A20233131313331342021696D706F7274616E743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D';
wwv_flow_api.g_varchar2_table(594) := '666C6F6174696E674C6162656C2E617065782D6974656D2D777261707065722D2D74657874617265613A686F766572202E742D466F726D2D6C6162656C3A6265666F7265207B0D0A20206261636B67726F756E642D636F6C6F723A20233163316632323B';
wwv_flow_api.g_varchar2_table(595) := '0D0A7D0D0A2E617065782D6974656D2D746578742C0D0A2E617065782D6974656D2D73656C6563742C0D0A2E617065782D6974656D2D7465787461726561207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E617065782D6974';
wwv_flow_api.g_varchar2_table(596) := '656D2D6D756C7469202E617065782D6974656D2D746578742E617065782D6974656D2D706F7075702D6C6F76207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F726465722D636F6C6F723A207472';
wwv_flow_api.g_varchar2_table(597) := '616E73706172656E743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C202E742D466F726D2D696E707574436F6E7461696E6572202E617065782D6974656D2D646973706C61792D6F6E6C7920';
wwv_flow_api.g_varchar2_table(598) := '7B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233163316632323B0D0A2020626F726465722D636F6C6F723A20233365343634633B0D0A2020626F726465722D7374796C653A20646173686564';
wwv_flow_api.g_varchar2_table(599) := '3B0D0A7D0D0A2E617065782D6974656D2D66696C652D64726F707A6F6E652D6C6162656C207B0D0A20206261636B67726F756E642D636F6C6F723A20233163316632323B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C2030';
wwv_flow_api.g_varchar2_table(600) := '2E37293B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E752D52544C202E617065782D6974656D2D66696C652D64726F707A6F6E652D6C6162656C207B0D0A2020626F726465722D7261646975733A203020';
wwv_flow_api.g_varchar2_table(601) := '3270782032707820303B0D0A7D0D0A2E617065782D6974656D2D66696C652D64726F707A6F6E652D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233238326333303B0D0A2020626F726465722D7261646975733A203020327078';
wwv_flow_api.g_varchar2_table(602) := '2032707820303B0D0A7D0D0A2E752D52544C202E617065782D6974656D2D66696C652D64726F707A6F6E652D69636F6E207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E617065782D6974656D2D66696C';
wwv_flow_api.g_varchar2_table(603) := '653A686F766572202B202E617065782D6974656D2D66696C652D64726F707A6F6E65202E617065782D6974656D2D66696C652D64726F707A6F6E652D6C6162656C207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E617065782D697465';
wwv_flow_api.g_varchar2_table(604) := '6D2D66696C653A686F766572202B202E617065782D6974656D2D66696C652D64726F707A6F6E65202E617065782D6974656D2D66696C652D64726F707A6F6E652D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A2023313131333134';
wwv_flow_api.g_varchar2_table(605) := '3B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E617065782D6974656D2D66696C653A666F637573202B202E617065782D6974656D2D66696C652D64726F707A6F6E65202E617065782D6974656D2D66696C652D64726F707A6F6E652D6C';
wwv_flow_api.g_varchar2_table(606) := '6162656C207B0D0A2020626F726465722D636F6C6F723A20233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E617065782D6974656D2D66696C653A666F637573202B202E617065782D6974656D2D66696C652D64726F70';
wwv_flow_api.g_varchar2_table(607) := '7A6F6E65202E617065782D6974656D2D66696C652D64726F707A6F6E652D69636F6E207B0D0A2020626F726465722D636F6C6F723A20233030373664663B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(608) := '723A20236666666666663B0D0A7D0D0A2E617065782D6974656D2D74657874617265613A666F6375732C0D0A2E617065782D6974656D2D746578743A666F6375732C0D0A2E617065782D6974656D2D73656C6563743A666F6375732C0D0A2E617065782D';
wwv_flow_api.g_varchar2_table(609) := '6974656D2D6D756C74693A666F6375732C0D0A73656C6563742E6C6973746D616E616765723A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20233131313331342021696D706F7274616E743B0D0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(610) := '6F723A20233030373664662021696D706F7274616E743B0D0A7D0D0A2E617065782D6974656D2D746578742E612D506F7075704C4F562D7365617263683A666F637573202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D6974';
wwv_flow_api.g_varchar2_table(611) := '656D2D746578742E612D506F7075704C4F562D7365617263682E69732D666F6375736564202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D6974656D2D746578742E617065782D6974656D2D706F7075702D6C6F763A666F63';
wwv_flow_api.g_varchar2_table(612) := '7573202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D6974656D2D746578742E617065782D6974656D2D706F7075702D6C6F762E69732D666F6375736564202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E61';
wwv_flow_api.g_varchar2_table(613) := '7065782D6974656D2D6D756C74693A666F637573202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D6974656D2D6D756C74692E69732D666F6375736564202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E6170';
wwv_flow_api.g_varchar2_table(614) := '65782D6974656D2D746578742E612D506F7075704C4F562D7365617263683A666F637573202B202E617065782D6974656D2D69636F6E202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D6974656D2D746578742E612D506F70';
wwv_flow_api.g_varchar2_table(615) := '75704C4F562D7365617263682E69732D666F6375736564202B202E617065782D6974656D2D69636F6E202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D6974656D2D746578742E617065782D6974656D2D706F7075702D6C6F';
wwv_flow_api.g_varchar2_table(616) := '763A666F637573202B202E617065782D6974656D2D69636F6E202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D6974656D2D746578742E617065782D6974656D2D706F7075702D6C6F762E69732D666F6375736564202B202E';
wwv_flow_api.g_varchar2_table(617) := '612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D6974656D2D6D756C74693A666F637573202B202E617065782D6974656D2D69636F6E202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D6974656D2D6D756C';
wwv_flow_api.g_varchar2_table(618) := '74692E69732D666F6375736564202B202E617065782D6974656D2D69636F6E202B202E612D427574746F6E2D2D706F7075704C4F56207B0D0A2020626F782D736861646F773A20302030203020317078202330303736646620696E7365743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(619) := '2E617065782D6974656D2D74657874617265613A686F7665722C0D0A2E617065782D6974656D2D746578743A686F7665722C0D0A2E617065782D6974656D2D73656C6563743A686F7665722C0D0A2E617065782D6974656D2D6D756C74693A686F766572';
wwv_flow_api.g_varchar2_table(620) := '2C0D0A73656C6563742E6C6973746D616E616765723A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233163316632323B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D7765626B69';
wwv_flow_api.g_varchar2_table(621) := '742D696E7075742D706C616365686F6C646572207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3632293B0D0A20206F7061636974793A20313B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E6572';
wwv_flow_api.g_varchar2_table(622) := '20696E7075743A3A2D6D6F7A2D706C616365686F6C646572207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3632293B0D0A20206F7061636974793A20313B0D0A7D0D0A2E742D466F726D2D696E707574436F6E74';
wwv_flow_api.g_varchar2_table(623) := '61696E657220696E7075743A2D6D732D696E7075742D706C616365686F6C646572207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3632293B0D0A20206F7061636974793A20313B0D0A7D0D0A2E742D466F726D20';
wwv_flow_api.g_varchar2_table(624) := '696E7075742E66696C65207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C79207B0D0A2020626F726465722D636F6C6F723A207472616E';
wwv_flow_api.g_varchar2_table(625) := '73706172656E743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D466F726D2D73656C6563742C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F';
wwv_flow_api.g_varchar2_table(626) := '207B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20233365343634633B0D0A7D0D0A2E742D466F726D2D6669656C642D2D726561644F6E6C79207B0D0A20206261636B67726F756E642D636F6C6F723A2074';
wwv_flow_api.g_varchar2_table(627) := '72616E73706172656E743B0D0A7D0D0A2E742D466F726D2D726164696F4C6162656C2C0D0A2E742D466F726D2D696E707574436F6E7461696E6572202E726164696F5F67726F7570206C6162656C2C0D0A2E742D466F726D2D636865636B626F784C6162';
wwv_flow_api.g_varchar2_table(628) := '656C2C0D0A2E742D466F726D2D696E707574436F6E7461696E6572202E636865636B626F785F67726F7570206C6162656C2C0D0A2E742D466F726D2D6C6162656C2C0D0A2E752D466F726D2D6C6162656C207B0D0A2020636F6C6F723A20236665666566';
wwv_flow_api.g_varchar2_table(629) := '653B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C202E742D466F726D2D6C6162656C207B0D0A2020636F6C6F723A20236362636263623B0D0A7D0D0A2E742D466F726D2D6572726F72207B0D';
wwv_flow_api.g_varchar2_table(630) := '0A2020636F6C6F723A20236634343333363B0D0A7D0D0A2E742D466F726D2D706F737454657874207B0D0A2020636F6C6F723A20233766376637663B0D0A7D0D0A2E742D466F726D2D2D73656172636820696E7075742E742D466F726D2D736561726368';
wwv_flow_api.g_varchar2_table(631) := '4669656C64207B0D0A20206261636B67726F756E642D636F6C6F723A20233238326333303B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E612D427574746F6E2E612D427574746F6E2D2D63616C656E6461722C0D0A2E612D427574746F';
wwv_flow_api.g_varchar2_table(632) := '6E2E612D427574746F6E2D2D706F7075704C4F562C0D0A2E612D427574746F6E2E612D427574746F6E2D2D636F6C6F725069636B6572207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E752D52544C202E';
wwv_flow_api.g_varchar2_table(633) := '612D427574746F6E2E612D427574746F6E2D2D63616C656E6461722C0D0A2E752D52544C202E612D427574746F6E2E612D427574746F6E2D2D706F7075704C4F562C0D0A2E752D52544C202E612D427574746F6E2E612D427574746F6E2D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(634) := '5069636B6572207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E686173446174657069636B65722C0D0A2E742D466F726D2D696E70';
wwv_flow_api.g_varchar2_table(635) := '7574436F6E7461696E657220696E7075742E706F7075705F6C6F76207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E752D52544C202E742D466F726D2D696E707574436F6E7461696E657220696E707574';
wwv_flow_api.g_varchar2_table(636) := '2E686173446174657069636B65722C0D0A2E752D52544C202E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F76207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(637) := '2E75692D646174657069636B6572207B0D0A2020626F726465722D636F6C6F723A20233365343634633B0D0A7D0D0A626F6479202E75692D646174657069636B65722E75692D646174657069636B65722D696E6C696E65207B0D0A20206F75746C696E65';
wwv_flow_api.g_varchar2_table(638) := '3A206E6F6E653B0D0A2020626F782D736861646F773A206E6F6E652021696D706F7274616E743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A2E742D466F726D2D666965';
wwv_flow_api.g_varchar2_table(639) := '6C64436F6E7461696E65722D2D666C6F6174696E674C6162656C202E75692D646174657069636B65722D696E6C696E65207B0D0A2020626F782D736861646F773A206E6F6E652021696D706F7274616E743B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(640) := '6F723A207472616E73706172656E743B0D0A202070616464696E673A20303B0D0A2020626F726465723A206E6F6E653B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C202E75692D6461746570';
wwv_flow_api.g_varchar2_table(641) := '69636B65722D696E6C696E65202E75692D7769646765742D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A2E617065782D6974656D2D67726F75702D2D';
wwv_flow_api.g_varchar2_table(642) := '726320696E707574207B0D0A20200D0A7D0D0A2E617065782D6974656D2D67726F75702D2D726320696E707574202B206C6162656C3A6265666F7265207B0D0A2020626F782D736861646F773A20696E7365742072676261283235352C203235352C2032';
wwv_flow_api.g_varchar2_table(643) := '35352C20302E313529203020302030203170783B0D0A20206261636B67726F756E642D636F6C6F723A20233238326333303B0D0A7D0D0A2E617065782D6974656D2D67726F75702D2D726320696E707574202B206C6162656C3A6166746572207B0D0A20';
wwv_flow_api.g_varchar2_table(644) := '20636F6C6F723A20236666666666663B0D0A7D0D0A2E617065782D6974656D2D67726F75702D2D726320696E7075743A686F766572202B206C6162656C3A6265666F7265207B0D0A2020626F782D736861646F773A20696E736574207267626128323535';
wwv_flow_api.g_varchar2_table(645) := '2C203235352C203235352C20302E323529203020302030203170783B0D0A7D0D0A2E617065782D6974656D2D67726F75702D2D726320696E7075743A666F637573202B206C6162656C3A6265666F7265207B0D0A2020626F782D736861646F773A20696E';
wwv_flow_api.g_varchar2_table(646) := '7365742023303037366466203020302030203170782C20696E7365742023666666666666203020302030203270783B0D0A7D0D0A2E636865636B626F785F67726F757020696E7075742C0D0A2E726164696F5F67726F757020696E707574207B0D0A2020';
wwv_flow_api.g_varchar2_table(647) := '0D0A7D0D0A2E636865636B626F785F67726F757020696E7075743A666F6375733A636865636B6564202B206C6162656C3A6265666F72652C0D0A2E726164696F5F67726F757020696E7075743A666F6375733A636865636B6564202B206C6162656C3A62';
wwv_flow_api.g_varchar2_table(648) := '65666F7265207B0D0A2020626F782D736861646F773A20696E7365742023303037366466203020302030203170782C20696E7365742023666666666666203020302030203270783B0D0A7D0D0A2E636865636B626F785F67726F757020696E7075743A63';
wwv_flow_api.g_varchar2_table(649) := '6865636B6564202B206C6162656C3A6265666F72652C0D0A2E726164696F5F67726F757020696E7075743A636865636B6564202B206C6162656C3A6265666F7265207B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A20';
wwv_flow_api.g_varchar2_table(650) := '20626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E636865636B626F785F67726F757020696E7075743A636865636B6564202B206C6162656C3A686F7665723A6265666F72652C0D0A2E726164696F5F67726F757020696E7075743A636865636B';
wwv_flow_api.g_varchar2_table(651) := '6564202B206C6162656C3A686F7665723A6265666F7265207B0D0A20206261636B67726F756E642D636F6C6F723A20233030363963363B0D0A7D0D0A2E726164696F5F67726F757020696E707574202B206C6162656C3A6166746572207B0D0A20206261';
wwv_flow_api.g_varchar2_table(652) := '636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E636865636B626F785F67726F757020696E707574207B0D0A20200D0A7D';
wwv_flow_api.g_varchar2_table(653) := '0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E636865636B626F785F67726F757020696E707574202B206C6162656C3A6265666F7265207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(654) := '723A20233136313931623B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E636865636B626F785F67726F';
wwv_flow_api.g_varchar2_table(655) := '757020696E7075743A666F637573202B206C6162656C3A6265666F7265207B0D0A2020626F726465722D636F6C6F723A20233030373664663B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F';
wwv_flow_api.g_varchar2_table(656) := '7570202E636865636B626F785F67726F757020696E7075743A666F6375733A636865636B6564202B206C6162656C3A6265666F7265207B0D0A2020626F726465722D636F6C6F723A20233238326333303B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(657) := '723A20233238326333303B0D0A2020626F782D736861646F773A20302030203020317078202330303736646620696E7365743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E6368';
wwv_flow_api.g_varchar2_table(658) := '65636B626F785F67726F757020696E7075743A666F6375733A636865636B6564202B206C6162656C3A6166746572207B0D0A2020636F6C6F723A20233030373664663B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D72616469';
wwv_flow_api.g_varchar2_table(659) := '6F427574746F6E47726F7570202E636865636B626F785F67726F757020696E7075743A636865636B6564202B206C6162656C3A6265666F7265207B0D0A2020626F726465722D636F6C6F723A20233238326333303B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(660) := '636F6C6F723A20233238326333303B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E636865636B626F785F67726F757020696E7075743A636865636B6564202B206C6162656C3A61';
wwv_flow_api.g_varchar2_table(661) := '66746572207B0D0A2020636F6C6F723A20233030373664663B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D70726554657874426C6F636B202E742D466F726D2D6974656D546578742D2D7072652C0D0A2E742D466F726D2D66';
wwv_flow_api.g_varchar2_table(662) := '69656C64436F6E7461696E65722D2D706F737454657874426C6F636B202E742D466F726D2D6974656D546578742D2D706F7374207B0D0A20206261636B67726F756E642D636F6C6F723A20233238326333303B0D0A2020626F782D736861646F773A2030';
wwv_flow_api.g_varchar2_table(663) := '2030203020302E3172656D202333653436346320696E7365743B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D70726554657874426C6F636B202E742D466F726D2D69';
wwv_flow_api.g_varchar2_table(664) := '74656D546578742D2D707265207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E752D52544C202E742D466F726D2D6669656C64436F6E7461696E65722D2D70726554657874426C6F636B202E742D466F72';
wwv_flow_api.g_varchar2_table(665) := '6D2D6974656D546578742D2D707265207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D706F737454657874426C6F636B202E742D466F726D2D69';
wwv_flow_api.g_varchar2_table(666) := '74656D546578742D2D706F7374207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E752D52544C202E742D466F726D2D6669656C64436F6E7461696E65722D2D706F737454657874426C6F636B202E742D46';
wwv_flow_api.g_varchar2_table(667) := '6F726D2D6974656D546578742D2D706F7374207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E617065782D6974656D2D6861732D69636F6E3A666F637573202B202E617065782D6974656D2D69636F6E2C';
wwv_flow_api.g_varchar2_table(668) := '0D0A2E617065782D6974656D2D6D756C74692E69732D666F6375736564202B202E617065782D6974656D2D69636F6E207B0D0A2020636F6C6F723A20233030373664663B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F';
wwv_flow_api.g_varchar2_table(669) := '6174696E674C6162656C202E617065782D6974656D2D69636F6E207B0D0A2020636F6C6F723A20236535653565353B0D0A2020626F782D736861646F773A202D302E3172656D20302030202333653436346320696E7365743B0D0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(670) := '7261646975733A2032707820302030203270783B0D0A7D0D0A2E752D52544C202E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C202E617065782D6974656D2D69636F6E207B0D0A2020626F782D736861646F';
wwv_flow_api.g_varchar2_table(671) := '773A20302E3172656D20302030202333653436346320696E7365743B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C616265';
wwv_flow_api.g_varchar2_table(672) := '6C2E69732D72657175697265643A6265666F7265207B0D0A2020626F726465722D746F702D6C6566742D7261646975733A203270783B0D0A7D0D0A2E752D52544C202E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C61';
wwv_flow_api.g_varchar2_table(673) := '62656C2E69732D72657175697265643A6265666F7265207B0D0A2020626F726465722D746F702D6C6566742D7261646975733A20303B0D0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0D0A7D0D0A2E742D466F726D2D';
wwv_flow_api.g_varchar2_table(674) := '6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C202E617065782D6974656D2D6861732D69636F6E3A666F637573202B202E617065782D6974656D2D69636F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D';
wwv_flow_api.g_varchar2_table(675) := '666C6F6174696E674C6162656C202E617065782D6974656D2D6D756C74692E69732D666F6375736564202B202E617065782D6974656D2D69636F6E207B0D0A2020626F782D736861646F773A206E6F6E653B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(676) := '6F723A20233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D466F726D2D68656C70427574746F6E3A666F637573202E612D49636F6E207B0D0A2020636F6C6F723A20233030373664663B0D0A7D0D0A2E742D466F72';
wwv_flow_api.g_varchar2_table(677) := '6D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E742D466F726D2D6974656D57726170706572203E202E617065782D6974656D2D67726F7570203E202E617065782D6974656D2D6F7074696F6E3A66697273742D';
wwv_flow_api.g_varchar2_table(678) := '6F662D74797065206C6162656C207B0D0A2020626F726465722D7261646975733A2032707820327078203020303B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E742D466F726D2D';
wwv_flow_api.g_varchar2_table(679) := '6974656D57726170706572203E202E617065782D6974656D2D67726F7570203E202E617065782D6974656D2D6F7074696F6E3A6C6173742D6F662D74797065206C6162656C207B0D0A2020626F726465722D7261646975733A2030203020327078203270';
wwv_flow_api.g_varchar2_table(680) := '783B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726964202E617065782D6974656D2D677269642D726F773A6F6E6C792D6368696C64202E61706578';
wwv_flow_api.g_varchar2_table(681) := '2D6974656D2D6F7074696F6E3A66697273742D6F662D74797065206C6162656C207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F42';
wwv_flow_api.g_varchar2_table(682) := '7574746F6E47726F7570202E617065782D6974656D2D67726964202E617065782D6974656D2D677269642D726F773A6F6E6C792D6368696C64202E617065782D6974656D2D6F7074696F6E3A6C6173742D6F662D74797065206C6162656C207B0D0A2020';
wwv_flow_api.g_varchar2_table(683) := '626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E752D52544C202E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726964202E617065';
wwv_flow_api.g_varchar2_table(684) := '782D6974656D2D677269642D726F773A6F6E6C792D6368696C64202E617065782D6974656D2D6F7074696F6E3A66697273742D6F662D74797065206C6162656C207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D';
wwv_flow_api.g_varchar2_table(685) := '0D0A2E752D52544C202E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726964202E617065782D6974656D2D677269642D726F773A6F6E6C792D6368696C64202E6170';
wwv_flow_api.g_varchar2_table(686) := '65782D6974656D2D6F7074696F6E3A6C6173742D6F662D74797065206C6162656C207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E612D5377697463682D746F67676C65207B0D0A2020626F782D736861';
wwv_flow_api.g_varchar2_table(687) := '646F773A20696E7365742072676261283235352C203235352C203235352C20302E303529203020302030203170783B0D0A20206261636B67726F756E642D636F6C6F723A20233733373337333B0D0A7D0D0A2E612D5377697463682D746F67676C653A62';
wwv_flow_api.g_varchar2_table(688) := '65666F7265207B0D0A20206261636B67726F756E642D636F6C6F723A20233030303B0D0A7D0D0A2E612D5377697463683A686F766572202E612D5377697463682D746F67676C65207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128';
wwv_flow_api.g_varchar2_table(689) := '3235352C203235352C203235352C20302E3735293B0D0A7D0D0A2E612D53776974636820696E7075745B747970653D636865636B626F785D3A666F637573202B202E612D5377697463682D746F67676C65207B0D0A2020626F782D736861646F773A2069';
wwv_flow_api.g_varchar2_table(690) := '6E7365742023303037366466203020302030203170782C20696E7365742023303030203020302030203270783B0D0A7D0D0A2E612D53776974636820696E7075745B747970653D636865636B626F785D3A636865636B6564202B202E612D537769746368';
wwv_flow_api.g_varchar2_table(691) := '2D746F67676C65207B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A7D0D0A2E612D5377697463683A686F76657220696E7075745B747970653D636865636B626F785D3A636865636B6564202B202E612D537769746368';
wwv_flow_api.g_varchar2_table(692) := '2D746F67676C65207B0D0A20206261636B67726F756E642D636F6C6F723A20233030363963363B0D0A7D0D0A2E612D53776974636820696E7075745B747970653D636865636B626F785D3A696E64657465726D696E617465202B202E612D537769746368';
wwv_flow_api.g_varchar2_table(693) := '2D746F67676C653A6265666F7265207B0D0A2020626F782D736861646F773A20696E7365742023303030203020302030203170783B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E35293B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(694) := '742D4865616465722D6272616E64696E67207B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A7D0D0A2E742D4865616465722D6C6F676F2C0D0A2E742D486561646572202E742D427574746F6E2D2D6865616465722E69';
wwv_flow_api.g_varchar2_table(695) := '732D6163746976652C0D0A2E742D486561646572202E742D427574746F6E2D2D686561646572207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4865616465722D6C6F676F3A686F7665722C0D0A2E742D486561646572202E742D';
wwv_flow_api.g_varchar2_table(696) := '427574746F6E2D2D6865616465722E69732D6163746976653A686F7665722C0D0A2E742D486561646572202E742D427574746F6E2D2D6865616465723A686F766572207B0D0A2020746578742D6465636F726174696F6E3A206E6F6E653B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(697) := '742D4865616465722D6C6F676F2D6C696E6B207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D4865616465722D6C6F676F2D6C696E6B3A666F6375732C0D0A2E742D4865616465722D6C6F676F2D6C696E6B3A6163746976653A66';
wwv_flow_api.g_varchar2_table(698) := '6F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D736861646F773A20302030203020317078202332643963666620696E7365743B0D0A7D0D0A2E742D4865726F526567696F6E2D69636F6E207B0D0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(699) := '7261646975733A203470783B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4865726F526567696F6E2D7469746C65207B0D0A2020636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(700) := '66666666663B0D0A7D0D0A2E742D4865726F526567696F6E2D636F6C2D2D636F6E74656E74207B0D0A2020636F6C6F723A20236263626362633B0D0A7D0D0A2E742D426F64792D7469746C65202E742D4865726F526567696F6E2D7469746C652C0D0A2E';
wwv_flow_api.g_varchar2_table(701) := '742D426F64792D7469746C65202E742D4865726F526567696F6E2D636F6C2D2D636F6E74656E74207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E612D4947207B0D0A2020626F726465722D636F6C6F723A20233332333633393B0D0A';
wwv_flow_api.g_varchar2_table(702) := '20206261636B67726F756E642D636F6C6F723A20233030303B0D0A7D0D0A2E612D52562D746F6F6C626172207B0D0A2020626F726465722D636F6C6F723A20233265326532653B0D0A7D0D0A2E612D47562D6864722C0D0A2E612D49472D686561646572';
wwv_flow_api.g_varchar2_table(703) := '207B0D0A2020626F726465722D636F6C6F723A20233332333633393B0D0A20206261636B67726F756E642D636F6C6F723A20233139316331653B0D0A7D0D0A2E612D47562D772D66726F7A656E202E612D47562D7461626C652C0D0A2E612D47562D772D';
wwv_flow_api.g_varchar2_table(704) := '686472202E612D47562D7461626C65207B0D0A2020626F726465722D636F6C6F723A20233166316631662021696D706F7274616E743B0D0A7D0D0A2E612D47562D626479207B0D0A20206261636B67726F756E642D636F6C6F723A20233232323632393B';
wwv_flow_api.g_varchar2_table(705) := '0D0A7D0D0A2E612D47562D6865616465722C0D0A2E612D47562D68656164657247726F75702C0D0A2E612D546F6F6C6261722D67726F7570207B0D0A2020626F726465722D636F6C6F723A20233332333633393B0D0A7D0D0A2E612D47562D7461626C65';
wwv_flow_api.g_varchar2_table(706) := '202E612D47562D63656C6C207B0D0A2020626F726465722D636F6C6F723A20233332333633393B0D0A7D0D0A2E612D47562D7461626C652074722E69732D73656C6563746564202E612D47562D63656C6C207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(707) := '6C6F723A20233030306331363B0D0A7D0D0A2E612D47562D7461626C652074722E69732D64656C657465642E69732D73656C6563746564202E612D47562D63656C6C2E6861732D627574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(708) := '207267626128302C2031322C2032322C20302E35293B0D0A7D0D0A2E612D4952522D706167696E6174696F6E577261702D2D626F74746F6D207B0D0A2020626F726465722D746F702D636F6C6F723A20233332333633393B0D0A7D0D0A2E612D49472D67';
wwv_flow_api.g_varchar2_table(709) := '72696456696577202E612D47562D666F6F746572207B0D0A2020626F726465722D636F6C6F723A20233332333633393B0D0A7D0D0A2E612D47562D666F6F746572207B0D0A2020626F726465722D636F6C6F723A20233332333633393B0D0A2020626163';
wwv_flow_api.g_varchar2_table(710) := '6B67726F756E642D636F6C6F723A20233235323932643B0D0A7D0D0A2E612D47562D7061676552616E6765207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3635293B0D0A7D0D0A2E612D47562D70616765427574';
wwv_flow_api.g_varchar2_table(711) := '746F6E207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3635293B0D0A7D0D0A2E612D47562D70616765427574746F6E3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235';
wwv_flow_api.g_varchar2_table(712) := '352C203235352C203235352C20302E303735293B0D0A7D0D0A2E612D47562D7061676553656C6563746F722D6974656D2E69732D73656C6563746564202E612D47562D70616765427574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(713) := '2072676261283235352C203235352C203235352C20302E3135293B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3935293B0D0A7D0D0A2E612D47562D7461626C652074682E612D47562D636F6E74726F6C42726561';
wwv_flow_api.g_varchar2_table(714) := '6B486561646572207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3035293B0D0A2020626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B';
wwv_flow_api.g_varchar2_table(715) := '0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0D0A7D0D0A2E612D47562D2D656469744D6F6465202E612D47562D726F772E69732D726561646F6E6C79202E612D47562D63656C6C2C0D0A2E612D47562D2D';
wwv_flow_api.g_varchar2_table(716) := '656469744D6F6465202E612D47562D63656C6C2E69732D726561646F6E6C79207B0D0A20206261636B67726F756E642D636F6C6F723A20233036303630363B0D0A2020636F6C6F723A20233866386638663B0D0A7D0D0A2E612D49472D7265636F726456';
wwv_flow_api.g_varchar2_table(717) := '696577202E752D466F726D2D6669656C64436F6E7461696E6572202E742D427574746F6E2E742D427574746F6E2D2D68656C70427574746F6E207B0D0A2020626F782D736861646F773A206E6F6E652021696D706F7274616E743B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(718) := '726F756E642D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A2E612D49472D7265636F726456696577202E752D466F726D2D6669656C64436F6E7461696E6572202E742D427574746F6E2E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(719) := '2D68656C70427574746F6E3A6265666F72652C0D0A2E612D49472D7265636F726456696577202E752D466F726D2D6669656C64436F6E7461696E6572202E742D427574746F6E2E742D427574746F6E2D2D68656C70427574746F6E3A6166746572207B0D';
wwv_flow_api.g_varchar2_table(720) := '0A2020636F6E74656E743A206E6F6E653B0D0A7D0D0A2E612D49472D7265636F726456696577202E752D466F726D2D6669656C64436F6E7461696E6572202E742D427574746F6E2E742D427574746F6E2D2D68656C70427574746F6E3A686F766572202E';
wwv_flow_api.g_varchar2_table(721) := '612D49636F6E207B0D0A20206F7061636974793A20313B0D0A7D0D0A2E612D49472D7265636F726456696577202E752D466F726D2D6669656C64436F6E7461696E6572202E742D427574746F6E2E742D427574746F6E2D2D68656C70427574746F6E3A66';
wwv_flow_api.g_varchar2_table(722) := '6F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330303736646620696E7365742021696D706F7274616E743B0D0A7D0D0A2E612D49472D6865616465722C0D0A2E612D49474469616C6F672D6865616465722C0D0A2E61';
wwv_flow_api.g_varchar2_table(723) := '2D49474469616C6F672D666F6F7465722C0D0A2E612D49474469616C6F672D73696465207B0D0A2020626F726465722D636F6C6F723A20233166316631663B0D0A20206261636B67726F756E642D636F6C6F723A20233036303630363B0D0A7D0D0A2E61';
wwv_flow_api.g_varchar2_table(724) := '2D47562D636F6C756D6E436F6E74726F6C73202E612D427574746F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233463346535303B0D0A2020626F782D736861646F773A203020302030';
wwv_flow_api.g_varchar2_table(725) := '203170782072676261283235352C203235352C203235352C20302E3132352920696E7365743B0D0A7D0D0A2E612D47562D636F6C756D6E436F6E74726F6C73202E612D427574746F6E2E69732D616374697665207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(726) := '636F6C6F723A20233334333533363B0D0A2020626F782D736861646F773A203020302030203170782072676261283235352C203235352C203235352C20302E3032352920696E7365743B0D0A7D0D0A2E612D47562D666C6F6174696E674974656D2E6973';
wwv_flow_api.g_varchar2_table(727) := '2D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3935293B0D0A7D0D0A2E612D47562D636F6C756D6E48616E646C652C0D0A2E612D47562D63656C6C4D6F766548616E646C6520';
wwv_flow_api.g_varchar2_table(728) := '7B0D0A20206F7061636974793A20302E353B0D0A20206261636B67726F756E642D696D6167653A2075726C28646174613A696D6167652F7376672B786D6C3B6261736536342C50484E325A79423462577875637A30696148523063446F764C3364336479';
wwv_flow_api.g_varchar2_table(729) := '35334D793576636D63764D6A41774D43397A646D6369494864705A48526F505349304969426F5A576C6E61485139496A516949485A705A58644362336739496A41674D43413049445169506A78775958526F49475A706247773949694D324E6A59694947';
wwv_flow_api.g_varchar2_table(730) := '5139496B30774944426F4D6E59796143307965694976506A777663335A6E50673D3D293B0D0A7D0D0A2E612D47562D636F6C756D6E48616E646C653A686F7665722C0D0A2E612D47562D63656C6C4D6F766548616E646C653A686F766572207B0D0A2020';
wwv_flow_api.g_varchar2_table(731) := '6F7061636974793A20302E37353B0D0A7D0D0A2E612D495252207B0D0A2020626F726465722D7261646975733A203270783B0D0A2020626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A2020626163';
wwv_flow_api.g_varchar2_table(732) := '6B67726F756E642D636F6C6F723A20233232323632393B0D0A7D0D0A2E612D495252202E612D4952522D706167696E6174696F6E2D6C6162656C207B0D0A2020636F6C6F723A20236232623262323B0D0A7D0D0A2E612D4952522D7265706F727453756D';
wwv_flow_api.g_varchar2_table(733) := '6D6172792D76616C75652C0D0A2E612D49472D7265706F727453756D6D6172792D76616C7565207B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E612D4952522D636F6E74726F6C73436F6E7461696E6572207B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(734) := '2D746F702D636F6C6F723A20233262333033353B0D0A20206261636B67726F756E642D636F6C6F723A20233236326232663B0D0A7D0D0A2E612D4952522D66756C6C56696577207B0D0A20206261636B67726F756E642D636F6C6F723A20233232323632';
wwv_flow_api.g_varchar2_table(735) := '393B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D636F6E74726F6C73207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E612D4952522D746F6F6C626172207B';
wwv_flow_api.g_varchar2_table(736) := '0D0A20206261636B67726F756E643A20233139316331653B0D0A2020626F726465722D636F6C6F723A20233330333533613B0D0A7D0D0A2E612D5265706F72742D70657263656E7443686172742D66696C6C207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(737) := '6F6C6F723A20233030373664663B0D0A7D0D0A2E612D5265706F72742D70657263656E744368617274207B0D0A20206261636B67726F756E642D636F6C6F723A20236466663066663B0D0A7D0D0A2E612D4952522D627574746F6E2D2D636F6C53656172';
wwv_flow_api.g_varchar2_table(738) := '6368207B0D0A2020626F726465722D746F702D72696768742D7261646975733A20302021696D706F7274616E743B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20302021696D706F7274616E743B0D0A7D0D0A2E752D52';
wwv_flow_api.g_varchar2_table(739) := '544C202E612D4952522D627574746F6E2D2D636F6C536561726368207B0D0A2020626F726465722D746F702D72696768742D7261646975733A203270782021696D706F7274616E743B0D0A2020626F726465722D626F74746F6D2D72696768742D726164';
wwv_flow_api.g_varchar2_table(740) := '6975733A203270782021696D706F7274616E743B0D0A2020626F726465722D746F702D6C6566742D7261646975733A20302021696D706F7274616E743B0D0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20302021696D706F72';
wwv_flow_api.g_varchar2_table(741) := '74616E743B0D0A7D0D0A2E612D4952522D69636F6E566965775461626C652C0D0A2E612D4952522D6368617274566965772C0D0A2E612D4952522D7069766F74566965772C0D0A2E612D4952522D67726F75704279566965772C0D0A2E612D4952522D64';
wwv_flow_api.g_varchar2_table(742) := '657461696C56696577207B0D0A2020626F726465722D746F702D636F6C6F723A20233262333033353B0D0A7D0D0A2E612D4952522D746F6F6C6261722D2D73696E676C65526F77207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A202333';
wwv_flow_api.g_varchar2_table(743) := '30333533613B0D0A7D0D0A2E612D4952522D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233236326232663B0D0A2020626F726465722D746F703A2031707820736F6C696420233339336634353B0D0A2020626F782D7368';
wwv_flow_api.g_varchar2_table(744) := '61646F773A20696E7365742031707820302030203020233339336634353B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3935293B0D0A7D0D0A2E612D4952522D6865616465723A686F766572207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(745) := '6B67726F756E642D636F6C6F723A20233264333333373B0D0A7D0D0A2E612D4952522D6865616465722E69732D616374697665207B0D0A2020626F782D736861646F773A20302031707820317078207267626128302C20302C20302C20302E3035292069';
wwv_flow_api.g_varchar2_table(746) := '6E7365743B0D0A7D0D0A2E612D4952522D6865616465722E69732D6163746976652061207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E612D4952522D6865616465722E69732D616374697665202E612D4952522D686561646572536F';
wwv_flow_api.g_varchar2_table(747) := '7274207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E612D4952522D6865616465722E69732D6163746976652C0D0A2E612D47562D6865616465722E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(748) := '233230323032303B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E612D4952522D6865616465722D2D67726F7570207B0D0A20206261636B67726F756E642D636F6C6F723A20233262333033353B0D0A7D0D0A2E742D4952522D726567696F6E20';
wwv_flow_api.g_varchar2_table(749) := '7B0D0A2020626F782D736861646F773A20302031707820327078207267626128302C20302C20302C20302E3035292C20302032707820347078202D327078207267626128302C20302C20302C20302E303735293B0D0A7D0D0A2E612D4952522D7461626C';
wwv_flow_api.g_varchar2_table(750) := '65436F6E7461696E6572202E6A732D737469636B795461626C654865616465722E69732D737475636B207B0D0A2020626F782D736861646F773A2030203170782072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A406D656469';
wwv_flow_api.g_varchar2_table(751) := '61206F6E6C792073637265656E20616E6420286D61782D77696474683A20373638707829207B0D0A20202E612D4952522D627574746F6E733A6265666F7265207B0D0A202020206261636B67726F756E642D636F6C6F723A2072676261283235352C2032';
wwv_flow_api.g_varchar2_table(752) := '35352C203235352C20302E3035293B0D0A20207D0D0A7D0D0A2E612D4952522D7461626C65207472207464207B0D0A20206261636B67726F756E642D636F6C6F723A20233232323632393B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(753) := '612D4952522D7461626C65207B0D0A2020626F726465722D636F6C6C617073653A2073657061726174653B0D0A7D0D0A2E612D4952522D7461626C652074723A686F766572207464207B0D0A20206261636B67726F756E642D636F6C6F723A2023323832';
wwv_flow_api.g_varchar2_table(754) := '6333303B0D0A7D0D0A2E742D4952522D726567696F6E2D2D6E6F426F7264657273202E612D495252207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E612D4952522D7461626C65207464207B0D0A2020626F726465722D6C65';
wwv_flow_api.g_varchar2_table(755) := '66743A2031707820736F6C696420233264333133343B0D0A2020626F726465722D746F703A2031707820736F6C696420233264333133343B0D0A7D0D0A2E612D4952522D7461626C652074722074643A6C6173742D6368696C64207B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(756) := '65722D72696768742D636F6C6F723A20233136313931623B0D0A7D0D0A2E612D4952522D6865616465724C696E6B3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330303736646620696E7365743B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(757) := '612D4952522D7365617263682D6669656C643A666F637573207B0D0A2020626F726465722D636F6C6F723A20233030373664663B0D0A2020626F782D736861646F773A202D31707820302030202330303736646620696E7365742C203170782030203020';
wwv_flow_api.g_varchar2_table(758) := '2330303736646620696E7365743B0D0A7D0D0A2E612D4952522D73696E676C65526F772D6E616D652C0D0A2E612D4952522D73696E676C65526F772D76616C7565207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A20233330333533613B';
wwv_flow_api.g_varchar2_table(759) := '0D0A2020636F6C6F723A20236532653565373B0D0A7D0D0A2E612D4952522D73696E676C65526F772D76616C7565207B0D0A20206261636B67726F756E642D636F6C6F723A20233232323632393B0D0A7D0D0A2E612D4952522D73696E676C65526F772D';
wwv_flow_api.g_varchar2_table(760) := '726F773A686F766572202E612D4952522D73696E676C65526F772D76616C7565207B0D0A20206261636B67726F756E642D636F6C6F723A20233239326433323B0D0A7D0D0A2E612D4952522D73696E676C65526F772D6E616D65207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(761) := '67726F756E642D636F6C6F723A20233239326433323B0D0A7D0D0A2E612D4952522D73696E676C65526F772D726F773A686F766572202E612D4952522D73696E676C65526F772D6E616D65207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(762) := '3330333533613B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D706167696E6174696F6E3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A7D0D0A2E612D4952522D';
wwv_flow_api.g_varchar2_table(763) := '7265706F727453756D6D6172792D6C6162656C2C0D0A2E612D4952522D636F6E74726F6C734C6162656C2C0D0A2E612D49472D7265706F727453756D6D6172792D6C6162656C2C0D0A2E612D49472D636F6E74726F6C734C6162656C207B0D0A20206261';
wwv_flow_api.g_varchar2_table(764) := '636B67726F756E642D636F6C6F723A20233232323632392021696D706F7274616E743B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20373639707829207B0D0A20202E69732D6D6178696D697A6564';
wwv_flow_api.g_varchar2_table(765) := '2E742D4952522D726567696F6E202E742D6668742D7468656164202E612D4952522D686561646572207B0D0A20202020626F726465722D626F74746F6D3A2031707820736F6C696420233339336634353B0D0A20207D0D0A7D0D0A2E75692D7769646765';
wwv_flow_api.g_varchar2_table(766) := '742D636F6E74656E74202E612D4952522D69636F6E4C6973742D6C696E6B207B0D0A2020636F6C6F723A20236665666566653B0D0A20206261636B67726F756E642D636F6C6F723A20233232323632393B0D0A7D0D0A2E612D4952522D69636F6E4C6973';
wwv_flow_api.g_varchar2_table(767) := '742D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233239326433323B0D0A7D0D0A2E612D4952522D627574746F6E3A666F6375732C0D0A2E612D4952522D627574746F6E3A666F637573207B0D0A2020626F782D';
wwv_flow_api.g_varchar2_table(768) := '736861646F773A20696E68657269743B0D0A7D0D0A2E612D4952522D736F7274576964676574207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612833322C2033322C2033322C20302E3935293B0D0A20202D7765626B69742D626163';
wwv_flow_api.g_varchar2_table(769) := '6B64726F702D66696C7465723A20626C757228347078293B0D0A2020636F6C6F723A20234646463B0D0A2020626F726465722D77696474683A20303B0D0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A203270783B0D0A202062';
wwv_flow_api.g_varchar2_table(770) := '6F726465722D626F74746F6D2D72696768742D7261646975733A203270783B0D0A2020626F782D736861646F773A2030203870782031367078207267626128302C20302C20302C20302E3235292C203020302030203170782072676261283235352C2032';
wwv_flow_api.g_varchar2_table(771) := '35352C203235352C20302E31293B0D0A7D0D0A2E612D4952522D736F7274576964676574203A3A2D7765626B69742D7363726F6C6C626172207B0D0A202077696474683A203870783B0D0A20206865696768743A203870783B0D0A7D0D0A2E612D495252';
wwv_flow_api.g_varchar2_table(772) := '2D736F7274576964676574203A3A2D7765626B69742D7363726F6C6C6261722D7468756D62207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E35293B0D0A7D0D0A2E612D4952522D736F727457696467';
wwv_flow_api.g_varchar2_table(773) := '6574203A3A2D7765626B69742D7363726F6C6C6261722D747261636B207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A7D0D0A2E612D4952522D736F72745769646765742D68656C7020';
wwv_flow_api.g_varchar2_table(774) := '7B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E612D4952522D736F72745769646765742D616374696F6E73207B0D0A202070616464696E673A203870783B0D0A2020626F726465722D7261646975';
wwv_flow_api.g_varchar2_table(775) := '733A203270783B0D0A202077696474683A206175746F3B0D0A2020626F726465722D626F74746F6D2D77696474683A20303B0D0A7D0D0A2E612D4952522D736F72745769646765742D616374696F6E732D6974656D207B0D0A2020626F726465722D7269';
wwv_flow_api.g_varchar2_table(776) := '6768742D77696474683A20303B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(777) := '3A20234646463B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(778) := '3A2072676261283235352C203235352C203235352C20302E32293B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A666F637573207B0D0A2020626F782D736861646F773A2030203020302031';
wwv_flow_api.g_varchar2_table(779) := '7078202330303736646620696E7365743B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E2E69732D6163746976652C0D0A2E612D4952522D627574746F6E2E612D4952522D736F727457696467';
wwv_flow_api.g_varchar2_table(780) := '65742D627574746F6E3A6163746976653A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E35293B0D0A7D0D0A2E612D4952522D736F72745769646765742D736561726368';
wwv_flow_api.g_varchar2_table(781) := '4C6162656C207B0D0A20206865696768743A20343070783B0D0A202070616464696E673A2031327078203870783B0D0A7D0D0A2E612D4952522D736F72745769646765742D7365617263684C6162656C3A6265666F7265207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(782) := '234646463B0D0A7D0D0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765742D7365617263684669656C645B747970653D2274657874225D207B0D0A2020617070656172616E63653A206E6F6E';
wwv_flow_api.g_varchar2_table(783) := '653B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20206865696768743A20343070783B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E612D4952522D736F72745769646765742D73';
wwv_flow_api.g_varchar2_table(784) := '6561726368203E202E612D4952522D736F72745769646765742D7365617263684669656C645B747970653D2274657874225D3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330303736646620696E7365743B0D0A';
wwv_flow_api.g_varchar2_table(785) := '7D0D0A2E612D4952522D736F72745769646765742D726F7773207B0D0A2020626F726465722D746F702D77696474683A20303B0D0A7D0D0A2E612D4952522D736F72745769646765742D726F77207B0D0A2020636F6C6F723A20234646463B0D0A202062';
wwv_flow_api.g_varchar2_table(786) := '6F782D736861646F773A206E6F6E653B0D0A7D0D0A2E612D4952522D736F72745769646765742D726F773A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A7D0D0A2E612D';
wwv_flow_api.g_varchar2_table(787) := '4952522D736F72745769646765742D726F773A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330303736646620696E7365743B0D0A7D0D0A2E612D4947202E612D4952522D736F72745769646765743A6265666F72';
wwv_flow_api.g_varchar2_table(788) := '65207B0D0A2020636F6C6F723A20726762612833322C2033322C2033322C20302E3935293B0D0A7D0D0A2E612D495252202E686F75722D6772617068207370616E2E686F75722E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(789) := '3A20233166316631662021696D706F7274616E743B0D0A7D0D0A2E612D495252202E686F75722D6772617068207370616E2E686F7572207B0D0A20206261636B67726F756E642D636F6C6F723A20233138343431322021696D706F7274616E743B0D0A7D';
wwv_flow_api.g_varchar2_table(790) := '0D0A2E6F6A2D6476742D63617465676F727931207B0D0A2020636F6C6F723A20233330394644423B0D0A7D0D0A2E6F6A2D6476742D63617465676F727932207B0D0A2020636F6C6F723A20233343414638353B0D0A7D0D0A2E6F6A2D6476742D63617465';
wwv_flow_api.g_varchar2_table(791) := '676F727933207B0D0A2020636F6C6F723A20234642434534413B0D0A7D0D0A2E6F6A2D6476742D63617465676F727934207B0D0A2020636F6C6F723A20234539354235343B0D0A7D0D0A2E6F6A2D6476742D63617465676F727935207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(792) := '6F723A20233835344539423B0D0A7D0D0A2E6F6A2D6476742D63617465676F727936207B0D0A2020636F6C6F723A20233245424642433B0D0A7D0D0A2E6F6A2D6476742D63617465676F727937207B0D0A2020636F6C6F723A20234544383133453B0D0A';
wwv_flow_api.g_varchar2_table(793) := '7D0D0A2E6F6A2D6476742D63617465676F727938207B0D0A2020636F6C6F723A20234538354438383B0D0A7D0D0A2E6F6A2D6476742D63617465676F727939207B0D0A2020636F6C6F723A20233133423643463B0D0A7D0D0A2E6F6A2D6476742D636174';
wwv_flow_api.g_varchar2_table(794) := '65676F72793130207B0D0A2020636F6C6F723A20233831424235463B0D0A7D0D0A2E6F6A2D6476742D63617465676F72793131207B0D0A2020636F6C6F723A20234341353839443B0D0A7D0D0A2E6F6A2D6476742D63617465676F72793132207B0D0A20';
wwv_flow_api.g_varchar2_table(795) := '20636F6C6F723A20234444444535333B0D0A7D0D0A2E6F6A2D6C6567656E642C0D0A2E6F6A2D6C6567656E642D7469746C652C0D0A2E6F6A2D63686172742D7069652D63656E7465722D6C6162656C2C0D0A2E6F6A2D63686172742D78617869732D7469';
wwv_flow_api.g_varchar2_table(796) := '746C652C0D0A2E6F6A2D63686172742D79617869732D7469746C652C0D0A2E6F6A2D63686172742D7932617869732D7469746C652C0D0A2E6F6A2D63686172742D78617869732D7469636B2D6C6162656C2C0D0A2E6F6A2D63686172742D79617869732D';
wwv_flow_api.g_varchar2_table(797) := '7469636B2D6C6162656C2C0D0A2E6F6A2D63686172742D7932617869732D7469636B2D6C6162656C2C0D0A2E6F6A2D63686172742D646174612D6C6162656C2C0D0A2E6F6A2D6476742D6E6F2D646174612D6D657373616765207B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(798) := '3A20236666666666663B0D0A7D0D0A2E742D4C696E6B734C6973742D6974656D2C0D0A2E742D4C696E6B734C6973742D6C696E6B207B0D0A2020626F726465722D636F6C6F723A20233339336634353B0D0A7D0D0A2E742D4C696E6B734C6973742D6963';
wwv_flow_api.g_varchar2_table(799) := '6F6E207B0D0A2020636F6C6F723A20233434346335333B0D0A7D0D0A2E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233264333333373B0D0A7D0D0A2E742D4C696E6B734C697374';
wwv_flow_api.g_varchar2_table(800) := '2D6C696E6B3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330303736646620696E7365743B0D0A7D0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6974656D2D2D73';
wwv_flow_api.g_varchar2_table(801) := '6570617261746F72207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A2072676261283235352C203235352C203235352C20302E3035293B0D0A7D0D0A2E742D4C696E6B734C6973742D2D73686F774172726F77202E742D4C696E6B734C69';
wwv_flow_api.g_varchar2_table(802) := '73742D6C696E6B3A6265666F7265207B0D0A2020636F6C6F723A20233434346335333B0D0A7D0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6261646765207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(803) := '6F6C6F723A20233262333033353B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D62';
wwv_flow_api.g_varchar2_table(804) := '61646765207B0D0A20206261636B67726F756E642D636F6C6F723A20233334336134303B0D0A7D0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564203E202E742D';
wwv_flow_api.g_varchar2_table(805) := '4C696E6B734C6973742D6C696E6B202E742D4C696E6B734C6973742D6261646765207B0D0A20206261636B67726F756E642D636F6C6F723A20233562363636663B0D0A7D0D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C';
wwv_flow_api.g_varchar2_table(806) := '696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A686F7665723A6265666F7265207B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E35293B0D0A7D0D0A2E742D4C696E6B';
wwv_flow_api.g_varchar2_table(807) := '734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(808) := '2D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D69636F6E207B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A';
wwv_flow_api.g_varchar2_table(809) := '7D0D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20234643464346433B0D0A20206261636B67726F756E643A206C696E6561722D6772616469656E742872676261';
wwv_flow_api.g_varchar2_table(810) := '28302C20302C20302C20302E303135292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E30313529293B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(811) := '2D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A686F7665723A6265666F7265207B0D0A2020636F6C6F723A20233030373664663B0D0A7D0D0A2E742D4C696E6B734C6973742D697465';
wwv_flow_api.g_varchar2_table(812) := '6D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A6265666F7265207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3235293B0D0A7D0D0A2E742D4C696E6B734C6973742D2D73686F77';
wwv_flow_api.g_varchar2_table(813) := '4261646765202E742D4C696E6B734C6973742D6261646765207B0D0A2020626F726465722D7261646975733A203470783B0D0A7D0D0A2E742D4C696E6B734C6973742D2D69636F6E4F6E6C79202E742D4C696E6B734C6973742D69636F6E207B0D0A2020';
wwv_flow_api.g_varchar2_table(814) := '626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C6162656C207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4C696E6B734C';
wwv_flow_api.g_varchar2_table(815) := '6973742D2D616374696F6E73202E742D4C696E6B734C6973742D69636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F7665';
wwv_flow_api.g_varchar2_table(816) := '72202E742D4C696E6B734C6973742D69636F6E2C0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6C6162656C2C0D0A2E742D4C696E6B734C6973';
wwv_flow_api.g_varchar2_table(817) := '742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6261646765207B0D0A2020636F6C6F723A20236564656666313B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D4C69';
wwv_flow_api.g_varchar2_table(818) := '6E6B734C6973742D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233361343134373B0D0A7D0D0A2E612D4C697374566965772D6974656D207B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C69';
wwv_flow_api.g_varchar2_table(819) := '642072676261283235352C203235352C203235352C20302E3035293B0D0A7D0D0A2E612D4C697374566965772D6974656D202E75692D62746E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E612D4C697374566965772D6974656D20';
wwv_flow_api.g_varchar2_table(820) := '2E75692D62746E3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3035293B0D0A7D0D0A2E612D4C697374566965772D6974656D202E6661207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(821) := '20233434346335333B0D0A7D0D0A2E612D4C697374566965772D6974656D202E75692D6C692D636F756E74207B0D0A2020636F6C6F723A20236336636364303B0D0A20206261636B67726F756E642D636F6C6F723A20233339336634353B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(822) := '742D50616765426F64792D2D6C6F67696E207B0D0A20206261636B67726F756E642D636F6C6F723A20233166316631663B0D0A7D0D0A2E742D4C6F67696E506167652D2D6267312C0D0A2E742D4C6F67696E506167652D2D6267322C0D0A2E742D4C6F67';
wwv_flow_api.g_varchar2_table(823) := '696E506167652D2D626733207B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A7D0D0A2E6170702D69636F6E207B0D0A20206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(824) := '67726F756E642D73697A653A20636F7665723B0D0A20206261636B67726F756E642D706F736974696F6E3A203530253B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A7D0D0A2E742D4C6F67696E2D69636F6E56616C69';
wwv_flow_api.g_varchar2_table(825) := '646174696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233342414132433B0D0A2020636F6C6F723A20233030303B0D0A7D0D0A2E742D4C6F67696E2D726567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207267';
wwv_flow_api.g_varchar2_table(826) := '626128302C20302C20302C20302E3635293B0D0A2020626F782D736861646F773A2030203870782032347078202D347078207267626128302C20302C20302C20302E32292C203020302030203170782072676261283235352C203235352C203235352C20';
wwv_flow_api.g_varchar2_table(827) := '302E31293B0D0A7D0D0A2E742D4C6F67696E506167652D2D73706C6974202E742D4C6F67696E2D636F6E7461696E6572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3635293B0D0A2020626F782D';
wwv_flow_api.g_varchar2_table(828) := '736861646F773A203020302032347078202D347078207267626128302C20302C20302C20302E32292C203020302030203170782072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E612D4D44456469746F72202E612D546F6F';
wwv_flow_api.g_varchar2_table(829) := '6C626172207B0D0A2020626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E303735293B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303235293B';
wwv_flow_api.g_varchar2_table(830) := '0D0A2020626F726465722D746F702D6C6566742D7261646975733A20302E3272656D3B0D0A2020626F726465722D746F702D72696768742D7261646975733A20302E3272656D3B0D0A7D0D0A2E612D4D44456469746F72202E612D546F6F6C626172202E';
wwv_flow_api.g_varchar2_table(831) := '612D427574746F6E3A6E6F74283A686F766572293A6E6F74283A616374697665293A6E6F74283A666F637573293A6E6F74282E69732D61637469766529207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20';
wwv_flow_api.g_varchar2_table(832) := '20626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E612D4D44456469746F722D7072657669657750616E656C2C0D0A2E612D4D44456469746F722074657874617265612E617065782D6974656D2D74657874617265612C0D0A2E612D4D44456469';
wwv_flow_api.g_varchar2_table(833) := '746F72202E436F64654D6972726F72207B0D0A2020626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E303735293B0D0A20206261636B67726F756E642D636F6C6F723A20233030303B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(834) := '236666666666663B0D0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20302E3272656D3B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20302E3272656D3B0D0A7D0D0A2E612D4D44456469746F';
wwv_flow_api.g_varchar2_table(835) := '722D7072657669657750616E656C3A666F6375732C0D0A2E612D4D44456469746F722074657874617265612E617065782D6974656D2D74657874617265613A666F6375732C0D0A2E612D4D44456469746F72202E436F64654D6972726F723A666F637573';
wwv_flow_api.g_varchar2_table(836) := '2C0D0A2E612D4D44456469746F722D7072657669657750616E656C2E436F64654D6972726F722D666F63757365642C0D0A2E612D4D44456469746F722074657874617265612E617065782D6974656D2D74657874617265612E436F64654D6972726F722D';
wwv_flow_api.g_varchar2_table(837) := '666F63757365642C0D0A2E612D4D44456469746F72202E436F64654D6972726F722E436F64654D6972726F722D666F6375736564207B0D0A2020626F726465722D636F6C6F723A20233030373664663B0D0A7D0D0A2E436F64654D6972726F722D637572';
wwv_flow_api.g_varchar2_table(838) := '736F72207B0D0A2020626F726465722D6C6566742D636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E69732D6D61726B646F776E69666965642068312C0D0A2E69732D6D61726B646F776E69666965642068322C0D0A2E69';
wwv_flow_api.g_varchar2_table(839) := '732D6D61726B646F776E69666965642068332C0D0A2E69732D6D61726B646F776E69666965642068342C0D0A2E69732D6D61726B646F776E69666965642068352C0D0A2E69732D6D61726B646F776E6966696564206836207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(840) := '696E68657269743B0D0A7D0D0A2E69732D6D61726B646F776E6966696564206872207B0D0A20206261636B67726F756E643A206E6F6E653B0D0A2020626F726465722D746F702D636F6C6F723A2072676261283235352C203235352C203235352C20302E';
wwv_flow_api.g_varchar2_table(841) := '32293B0D0A7D0D0A2E69732D6D61726B646F776E696669656420626C6F636B71756F7465207B0D0A2020626F726465722D6C6566742D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E69732D6D61726B64';
wwv_flow_api.g_varchar2_table(842) := '6F776E696669656420636F6465207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3235293B0D0A2020626F782D736861646F773A20696E7365742072676261283235352C203235352C20';
wwv_flow_api.g_varchar2_table(843) := '3235352C20302E303529203020302030203170783B0D0A7D0D0A2E69732D6D61726B646F776E696669656420707265207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3235293B0D0A20';
wwv_flow_api.g_varchar2_table(844) := '20626F782D736861646F773A20696E7365742072676261283235352C203235352C203235352C20302E303529203020302030203170783B0D0A7D0D0A2E69732D6D61726B646F776E69666965642070726520636F6465207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(845) := '6E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E69732D6D61726B646F776E6966696564207461626C65207B0D0A20206261636B67726F756E642D636F6C6F723A20236666663B';
wwv_flow_api.g_varchar2_table(846) := '0D0A2020626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A2020626F782D736861646F773A20302032707820347078202D327078207267626128302C20302C20302C20302E303735293B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(847) := '2E69732D6D61726B646F776E6966696564207461626C65207468207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303135293B0D0A7D0D0A2E69732D6D61726B646F776E696669656420';
wwv_flow_api.g_varchar2_table(848) := '7461626C652074682C0D0A2E69732D6D61726B646F776E6966696564207461626C65207464207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A2072676261283235352C203235352C203235352C20302E3035293B0D0A7D0D0A2E69732D6D';
wwv_flow_api.g_varchar2_table(849) := '61726B646F776E6966696564207461626C652074723A686F766572207464207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E30313235293B0D0A7D0D0A2E69732D6D61726B646F776E69';
wwv_flow_api.g_varchar2_table(850) := '66696564207461626C652074723A686F766572207468207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3235293B0D0A7D0D0A2E742D4D656469614C697374207B0D0A2020626F726465';
wwv_flow_api.g_varchar2_table(851) := '722D636F6C6F723A20233364343534623B0D0A20206261636B67726F756E642D636F6C6F723A20233232323632393B0D0A7D0D0A2E742D4D656469614C6973742D6974656D207B0D0A2020626F726465722D636F6C6F723A20233364343534623B0D0A7D';
wwv_flow_api.g_varchar2_table(852) := '0D0A2E742D4D656469614C6973742D6974656D2E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3035293B0D0A7D0D0A2E742D4D656469614C6973742D2D686F';
wwv_flow_api.g_varchar2_table(853) := '72697A6F6E74616C202E742D4D656469614C6973742D6974656D207B0D0A2020626F726465722D72696768743A2031707820736F6C696420233364343534623B0D0A7D0D0A612E742D4D656469614C6973742D6974656D57726170207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(854) := '6F723A20233431613566663B0D0A7D0D0A612E742D4D656469614C6973742D6974656D577261703A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233236326232663B0D0A2020636F6C6F723A20233431613566663B0D0A7D0D';
wwv_flow_api.g_varchar2_table(855) := '0A612E742D4D656469614C6973742D6974656D577261703A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330303736646620696E7365743B0D0A7D0D0A2E742D4D656469614C6973742D6974656D57726170207B0D';
wwv_flow_api.g_varchar2_table(856) := '0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E742D4D656469614C6973742D6261646765207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3035293B0D0A7D0D0A2E742D4D';
wwv_flow_api.g_varchar2_table(857) := '656469614C6973742D62616467652C0D0A2E742D4D656469614C6973742D64657363207B0D0A2020636F6C6F723A20236232623262323B0D0A7D0D0A2E742D4D656469614C6973742D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(858) := '20233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4D656469614C6973742D2D636F6C73207B0D0A2020626F782D736861646F773A202D317078202D31707820302030202333643435346220696E7365743B0D0A7D';
wwv_flow_api.g_varchar2_table(859) := '0D0A2E742D4D656469614C6973742D2D636F6C73202E742D4D656469614C6973742D6974656D3A6265666F72652C0D0A2E742D4D656469614C6973742D2D636F6C73202E742D4D656469614C6973742D6974656D3A6166746572207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(860) := '67726F756E642D636F6C6F723A20233339336634353B0D0A7D0D0A2E612D4D656E752E742D4D6567614D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E612D4D656E752E742D4D6567614D656E75202E612D4D656E752D69';
wwv_flow_api.g_varchar2_table(861) := '74656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D4D6567614D656E752D6974656D426F64792E69732D66';
wwv_flow_api.g_varchar2_table(862) := '6F6375736564202E742D4D6567614D656E752D6C6162656C2C0D0A2E742D4D6567614D656E752D6974656D426F64793A686F766572202E742D4D6567614D656E752D6C6162656C207B0D0A2020636F6C6F723A20233431613566663B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(863) := '4D6567614D656E752D6261646765207B0D0A20206261636B67726F756E642D636F6C6F723A20233239326433323B0D0A2020636F6C6F723A20236438643864383B0D0A7D0D0A2E742D4D6567614D656E752D2D6C61796F7574537461636B6564202E742D';
wwv_flow_api.g_varchar2_table(864) := '4D6567614D656E752D6974656D2D2D746F70202B202E742D4D6567614D656E752D6974656D2D2D746F70207B0D0A2020626F726465722D746F702D636F6C6F723A2072676261283235352C203235352C203235352C20302E3035293B0D0A7D0D0A2E612D';
wwv_flow_api.g_varchar2_table(865) := '4D656E752D636F6E74656E74207B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20233232323632393B0D0A2020626F726465722D77696474683A20303B0D0A2020626F782D736861646F';
wwv_flow_api.g_varchar2_table(866) := '773A2030203870782031367078207267626128302C20302C20302C20302E3235292C203020302030203170782072676261283235352C203235352C203235352C20302E31293B0D0A202070616464696E673A2038707820303B0D0A7D0D0A2E612D4D656E';
wwv_flow_api.g_varchar2_table(867) := '752D636F6E74656E74202E612D4D656E752D7363726F6C6C42746E2D2D646F776E2C0D0A2E612D4D656E752D636F6E74656E74202E612D4D656E752D7363726F6C6C42746E2D2D7570207B0D0A20206261636B67726F756E642D636F6C6F723A20233239';
wwv_flow_api.g_varchar2_table(868) := '326433323B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E612D4D656E75207B0D0A20206D696E2D77696474683A2031363070783B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D207B0D0A20206C696E652D6865696768';
wwv_flow_api.g_varchar2_table(869) := '743A20333670783B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C2C0D0A2E612D4D656E75202E612D4D656E75';
wwv_flow_api.g_varchar2_table(870) := '2D6974656D203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C207B0D0A20206F7061636974793A20302E38353B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E';
wwv_flow_api.g_varchar2_table(871) := '612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A7D0D0A2E612D4D656E75202E612D4D65';
wwv_flow_api.g_varchar2_table(872) := '6E752D6974656D2E69732D64697361626C65642E69732D666F6375736564207B0D0A2020636F6C6F723A2072676261283235342C203235342C203235342C20302E35293B0D0A20206261636B67726F756E642D636F6C6F723A20233232323632393B0D0A';
wwv_flow_api.g_varchar2_table(873) := '7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0D0A20206F7061636974793A20302E353B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(874) := '2E612D4D656E75202E612D4D656E752D6974656D202E612D4D656E752D7375624D656E75436F6C207B0D0A20206865696768743A20333670783B0D0A202070616464696E673A203130707820347078203130707820303B0D0A7D0D0A2E612D4D656E7520';
wwv_flow_api.g_varchar2_table(875) := '2E612D4D656E752D6974656D202E612D4D656E752D737461747573436F6C207B0D0A202070616464696E673A2031307078203870783B0D0A7D0D0A2E612D4D656E752D68536570617261746F72207B0D0A2020626F726465722D636F6C6F723A20726762';
wwv_flow_api.g_varchar2_table(876) := '61283235342C203235342C203235342C20302E31293B0D0A20206D617267696E2D746F703A203470783B0D0A202070616464696E672D746F703A203270783B0D0A202070616464696E672D626F74746F6D3A203270783B0D0A7D0D0A2E752D63616C6C6F';
wwv_flow_api.g_varchar2_table(877) := '75743A6265666F7265207B0D0A20206261636B67726F756E642D636F6C6F723A20233232323632393B0D0A2020626F782D736861646F773A203020302030203170782072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E612D';
wwv_flow_api.g_varchar2_table(878) := '4D656E754261722D6C6162656C207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A2020666F6E742D73697A653A20312E3472656D3B0D0A20206C696E652D6865696768743A20312E3672656D3B0D0A202070616464696E673A20';
wwv_flow_api.g_varchar2_table(879) := '313270783B0D0A2020746578742D6465636F726174696F6E3A206E6F6E653B0D0A2020666C65782D67726F773A20313B0D0A7D0D0A2E612D4D656E754261722D6C6162656C3A686F766572207B0D0A20206261636B67726F756E642D636C69703A207061';
wwv_flow_api.g_varchar2_table(880) := '6464696E672D626F783B0D0A2020746578742D6465636F726174696F6E3A206E6F6E653B0D0A7D0D0A2E612D4D656E754261722D6C6162656C202B202E612D4D656E752D7375624D656E75436F6C207B0D0A2020666C65782D736872696E6B3A20303B0D';
wwv_flow_api.g_varchar2_table(881) := '0A2020616C69676E2D73656C663A2063656E7465723B0D0A20206C696E652D6865696768743A20313B0D0A7D0D0A2E612D4D656E754261722D6974656D207B0D0A2020646973706C61793A20666C65783B0D0A2020666C6F61743A206C6566743B0D0A20';
wwv_flow_api.g_varchar2_table(882) := '2070616464696E673A20303B0D0A2020626F726465722D77696474683A2030203170783B0D0A2020626F782D736861646F773A206E6F6E653B0D0A20206D617267696E2D6C6566743A20303B0D0A20206261636B67726F756E642D636C69703A20636F6E';
wwv_flow_api.g_varchar2_table(883) := '74656E742D626F783B0D0A7D0D0A2E752D52544C202E612D4D656E754261722D6974656D207B0D0A2020666C6F61743A2072696768743B0D0A7D0D0A2E612D4D656E754261722D6974656D2E69732D657870616E646564207B0D0A20206F75746C696E65';
wwv_flow_api.g_varchar2_table(884) := '3A206E6F6E653B0D0A7D0D0A2E612D4D656E754261722D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E612D4D656E754261722D6974656D3A66697273742D6368696C';
wwv_flow_api.g_varchar2_table(885) := '64207B0D0A2020626F726465722D6C6566742D77696474683A20303B0D0A7D0D0A2E752D52544C202E612D4D656E754261722D6974656D3A66697273742D6368696C64207B0D0A2020626F726465722D72696768742D77696474683A20303B0D0A202062';
wwv_flow_api.g_varchar2_table(886) := '6F726465722D6C6566742D77696474683A203170783B0D0A7D0D0A2E612D4D656E754261722D6974656D2E69732D666F6375736564207B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E612D4D656E754261722D6974656D2E612D4D';
wwv_flow_api.g_varchar2_table(887) := '656E752D2D63757272656E74202E612D4D656E754261722D6C6162656C207B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A2E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C2C0D0A2E612D';
wwv_flow_api.g_varchar2_table(888) := '4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C207B0D0A2020626F726465722D77696474683A20303B0D0A202070616464696E673A20302031327078203020303B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(889) := '2D52544C202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C2C0D0A2E752D52544C202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F';
wwv_flow_api.g_varchar2_table(890) := '6C207B0D0A202070616464696E672D72696768743A20303B0D0A202070616464696E672D6C6566743A20313270783B0D0A2020626F726465722D72696768743A20302021696D706F7274616E743B0D0A7D0D0A2E612D4D656E754261722D6974656D203E';
wwv_flow_api.g_varchar2_table(891) := '202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020626F726465722D7261646975733A2031322E35253B0D0A7D0D0A2E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49';
wwv_flow_api.g_varchar2_table(892) := '636F6E3A6265666F7265207B0D0A2020636F6E74656E743A20275C65306332273B0D0A7D0D0A2E612D4D656E754261722D6974656D203E20627574746F6E202B202E612D4D656E752D7375624D656E75436F6C207B0D0A20206D617267696E2D6C656674';
wwv_flow_api.g_varchar2_table(893) := '3A202D3670783B0D0A7D0D0A2E752D52544C202E612D4D656E754261722D6974656D203E20627574746F6E202B202E612D4D656E752D7375624D656E75436F6C207B0D0A20206D617267696E2D6C6566743A20303B0D0A20206D617267696E2D72696768';
wwv_flow_api.g_varchar2_table(894) := '743A202D3670783B0D0A7D0D0A2E742D4865616465722D6E61762D6C697374207B0D0A20206261636B67726F756E642D636F6C6F723A20233333336434363B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6C6162656C207B';
wwv_flow_api.g_varchar2_table(895) := '0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4865616465722D6E6176202E742D4D656E752D6261646765207B0D0A202070616464696E673A2030203670783B0D0A2020666F6E742D73697A653A20313170783B0D0A20206C696E65';
wwv_flow_api.g_varchar2_table(896) := '2D6865696768743A20696E68657269743B0D0A2020666F6E742D7765696768743A203530303B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A2020646973706C61793A20';
wwv_flow_api.g_varchar2_table(897) := '696E6C696E652D626C6F636B3B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A20206D617267696E2D6C6566743A203470783B0D0A2020626F726465722D7261646975733A20313670783B0D0A7D0D0A2E752D52544C202E742D486561';
wwv_flow_api.g_varchar2_table(898) := '6465722D6E6176202E742D4D656E752D6261646765207B0D0A20206D617267696E2D6C6566743A20303B0D0A20206D617267696E2D72696768743A203470783B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D207B';
wwv_flow_api.g_varchar2_table(899) := '0D0A2020626F726465722D636F6C6F723A20233433346335333B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D2E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A202332343262';
wwv_flow_api.g_varchar2_table(900) := '33313B0D0A2020626F782D736861646F773A20302030203020317078202330303736646620696E7365743B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D2E69732D666F6375736564202E612D4D656E754261722D';
wwv_flow_api.g_varchar2_table(901) := '6C6162656C207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0D0A2E742D4865616465722D6E6176202E612D4D656E75';
wwv_flow_api.g_varchar2_table(902) := '4261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F63757365642C0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0D0A2E742D4865616465722D6E6176202E612D4D';
wwv_flow_api.g_varchar2_table(903) := '656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20233165323332383B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E75426172';
wwv_flow_api.g_varchar2_table(904) := '2D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E754261722D6C6162656C2C0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E61';
wwv_flow_api.g_varchar2_table(905) := '2D4D656E754261722D6C6162656C2C0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D2E69732D657870616E646564202E612D4D656E754261722D6C6162656C2C0D0A2E742D4865616465722D6E6176202E612D4D656E7542';
wwv_flow_api.g_varchar2_table(906) := '61722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E7542';
wwv_flow_api.g_varchar2_table(907) := '61722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E38293B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E75';
wwv_flow_api.g_varchar2_table(908) := '4261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E2C0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D2E69732D666F6375736564';
wwv_flow_api.g_varchar2_table(909) := '203E20627574746F6E202B202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A7D0D0A2E742D48656164';
wwv_flow_api.g_varchar2_table(910) := '65722D6E6176202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D2E69732D65';
wwv_flow_api.g_varchar2_table(911) := '7870616E646564203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A2020626F726465722D636F6C6F723A20233030373664663B';
wwv_flow_api.g_varchar2_table(912) := '0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4D656E75426172207B0D0A20206261636B67726F756E642D636F6C6F723A20233463346535303B0D0A7D0D0A2E742D4D656E75426172202E612D4D656E754261722D6C6162656C207B';
wwv_flow_api.g_varchar2_table(913) := '0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4D656E75426172202E612D4D656E754261722D6974656D207B0D0A2020626F726465722D636F6C6F723A20233565363036323B0D0A7D0D0A2E742D4D656E75426172202E612D4D656E';
wwv_flow_api.g_varchar2_table(914) := '754261722D6974656D2E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20233534353635383B0D0A7D0D0A2E742D4D656E75426172202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C';
wwv_flow_api.g_varchar2_table(915) := '0D0A2E742D4D656E75426172202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F63757365642C0D0A2E742D4D656E75426172202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0D0A2E';
wwv_flow_api.g_varchar2_table(916) := '742D4D656E75426172202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A7D0D0A2E742D4D656E75426172';
wwv_flow_api.g_varchar2_table(917) := '202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E754261722D6C6162656C2C0D0A2E742D4D656E75426172202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F';
wwv_flow_api.g_varchar2_table(918) := '6375736564202E612D4D656E754261722D6C6162656C2C0D0A2E742D4D656E75426172202E612D4D656E754261722D6974656D2E69732D657870616E646564202E612D4D656E754261722D6C6162656C2C0D0A2E742D4D656E75426172202E612D4D656E';
wwv_flow_api.g_varchar2_table(919) := '754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4D656E75426172202E612D4D656E754261';
wwv_flow_api.g_varchar2_table(920) := '722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E38293B0D0A7D0D0A2E742D4D656E75426172202E612D4D656E754261722D';
wwv_flow_api.g_varchar2_table(921) := '6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E2C0D0A2E742D4D656E75426172202E612D4D656E754261722D6974656D2E69732D666F6375736564203E2062757474';
wwv_flow_api.g_varchar2_table(922) := '6F6E202B202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A7D0D0A2E742D4D656E75426172202E612D';
wwv_flow_api.g_varchar2_table(923) := '4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0D0A2E742D4D656E75426172202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D';
wwv_flow_api.g_varchar2_table(924) := '4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A202330';
wwv_flow_api.g_varchar2_table(925) := '30373664663B0D0A7D0D0A2E742D4E617654616273207B0D0A20206261636B67726F756E642D636F6C6F723A20233333336434363B0D0A7D0D0A2E742D4E6176546162733A3A2D7765626B69742D7363726F6C6C6261722D7468756D62207B0D0A202062';
wwv_flow_api.g_varchar2_table(926) := '61636B67726F756E642D636F6C6F723A20233234326233313B0D0A2020626F782D736861646F773A20696E7365742031707820302030203020233333336434363B0D0A7D0D0A2E742D4E6176546162733A3A2D7765626B69742D7363726F6C6C6261722D';
wwv_flow_api.g_varchar2_table(927) := '7468756D623A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233365346135343B0D0A7D0D0A2E742D4E6176546162733A3A2D7765626B69742D7363726F6C6C6261722D747261636B207B0D0A20206261636B67726F756E643A';
wwv_flow_api.g_varchar2_table(928) := '20233333336434363B0D0A7D0D0A2E742D4E6176546162733A3A2D7765626B69742D7363726F6C6C6261722D747261636B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233534363437323B0D0A7D0D0A2E742D4E61765461';
wwv_flow_api.g_varchar2_table(929) := '62732D6974656D207B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20233365346135343B0D0A7D0D0A2E742D4E6176546162732D6974656D3A686F7665722C0D0A2E742D4E6176546162732D6974656D2E69';
wwv_flow_api.g_varchar2_table(930) := '732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233165323332383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4E6176546162732D6261646765207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(931) := '6F723A20236666666666663B0D0A2020636F6C6F723A20233165323332383B0D0A7D0D0A2E742D506F7075704C4F562D6C696E6B7320613A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233431613566663B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(932) := '6F723A20236666666666663B0D0A7D0D0A2E742D506F7075704C4F562D726573756C74735365742074723A686F766572207464207B0D0A20206261636B67726F756E642D636F6C6F723A20234543463246422021696D706F7274616E743B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(933) := '742D506F7075704C4F562D726573756C74735365742074723A6E74682D6368696C6428326E29207464207B0D0A20206261636B67726F756E642D636F6C6F723A20234641464146413B0D0A7D0D0A2E742D506F7075704C4F562D726573756C7473536574';
wwv_flow_api.g_varchar2_table(934) := '2D6C696E6B2C0D0A2E75692D7769646765742D636F6E74656E7420612E742D506F7075704C4F562D726573756C74735365742D6C696E6B207B0D0A2020636F6C6F723A20233431613566663B0D0A7D0D0A2E742D506167652D2D706F7075704C4F56207B';
wwv_flow_api.g_varchar2_table(935) := '0D0A20206261636B67726F756E642D636F6C6F723A20234646463B0D0A7D0D0A2E742D506F7075704C4F562D616374696F6E73207B0D0A20206261636B67726F756E642D636F6C6F723A20233262333033353B0D0A2020626F782D736861646F773A2030';
wwv_flow_api.g_varchar2_table(936) := '202D31707820302072676261283235352C203235352C203235352C20302E31352920696E7365743B0D0A7D0D0A2E742D426F6479202E742D506F7075704C4F562D6C696E6B732061207B0D0A2020636F6C6F723A20236566656665663B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(937) := '2D426F64792D7469746C65202E742D506F7075704C4F562D6C696E6B732061207B0D0A2020636F6C6F723A20236637663766373B0D0A7D0D0A2E742D426F64792D696E666F202E742D506F7075704C4F562D6C696E6B732061207B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(938) := '3A20236637663766373B0D0A7D0D0A2E742D526567696F6E202E742D506F7075704C4F562D6C696E6B7320612C0D0A2E742D427574746F6E526567696F6E202E742D506F7075704C4F562D6C696E6B732061207B0D0A2020636F6C6F723A202365356535';
wwv_flow_api.g_varchar2_table(939) := '65353B0D0A7D0D0A2E742D506F7075704C4F562D6C696E6B7320613A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233734626566663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F6479202E742D';
wwv_flow_api.g_varchar2_table(940) := '506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A20236166616661663B0D0A7D0D0A2E742D426F64792D7469746C65202E742D506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A20236237623762';
wwv_flow_api.g_varchar2_table(941) := '373B0D0A7D0D0A2E742D426F64792D696E666F202E742D506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A20236237623762373B0D0A7D0D0A2E742D526567696F6E202E742D506F7075704C4F562D706167696E6174696F6E';
wwv_flow_api.g_varchar2_table(942) := '2C0D0A2E742D427574746F6E526567696F6E202E742D506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A20236135613561353B0D0A7D0D0A2E612D506F7075704C4F562D736561726368426172207B0D0A202070616464696E';
wwv_flow_api.g_varchar2_table(943) := '673A203870783B0D0A7D0D0A2E612D506F7075704C4F562D726573756C7473202E612D49636F6E4C6973742D6974656D207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E612D506F7075704C4F562D726573756C7473202E612D49636F';
wwv_flow_api.g_varchar2_table(944) := '6E4C6973742D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A203020302030203170782023303036396336';
wwv_flow_api.g_varchar2_table(945) := '20696E7365743B0D0A7D0D0A2E612D506F7075704C4F562D726573756C7473202E612D49636F6E4C6973742D6974656D3A686F7665722061207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E612D506F7075704C4F562D726573756C74';
wwv_flow_api.g_varchar2_table(946) := '73202E612D47562D6C6F61644D6F7265207B0D0A2020626F726465722D746F702D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A7D0D0A2E612D47562D6C6F61644D6F7265427574746F6E207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(947) := '6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233463346535303B0D0A2020626F782D736861646F773A203020302030203170782072676261283235352C203235352C203235352C20302E3132352920696E736574';
wwv_flow_api.g_varchar2_table(948) := '3B0D0A7D0D0A2E612D47562D6C6F61644D6F7265427574746F6E3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233635363836613B0D0A2020626F782D736861646F773A203020302030203170782072676261283235352C20';
wwv_flow_api.g_varchar2_table(949) := '3235352C203235352C20302E31352920696E7365743B0D0A7D0D0A2E612D47562D6C6F61644D6F7265427574746F6E3A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20233732373537373B0D0A7D0D0A2E612D47562D6C6F6164';
wwv_flow_api.g_varchar2_table(950) := '4D6F7265427574746F6E3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233334333533363B0D0A7D0D0A2E612D47562D6C6F61644D6F7265427574746F6E3A6163746976653A666F637573207B0D0A2020626F782D736861';
wwv_flow_api.g_varchar2_table(951) := '646F773A20302030203020317078202330303736646620696E7365742C20302030203170782030207267626128352C203131342C203230362C20302E3235293B0D0A7D0D0A2E617065782D6974656D2D67726F75702D2D706F7075702D6C6F76202E6170';
wwv_flow_api.g_varchar2_table(952) := '65782D6974656D2D6D756C74692D6974656D203E207370616E207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3035293B0D0A7D0D0A2E617065782D6974656D2D67726F75702D2D706F';
wwv_flow_api.g_varchar2_table(953) := '7075702D6C6F76202E617065782D6974656D2D6D756C74692D6974656D2E69732D616374697665203E207370616E207B0D0A2020626F782D736861646F773A20302030203020317078202330303736646620696E7365743B0D0A7D0D0A2E617065782D69';
wwv_flow_api.g_varchar2_table(954) := '74656D2D67726F75702D2D706F7075702D6C6F76202E617065782D6974656D2D6D756C74692D72656D6F7665207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E617065782D6974656D2D67726F75';
wwv_flow_api.g_varchar2_table(955) := '702D2D706F7075702D6C6F76202E617065782D6974656D2D6D756C74692D72656D6F76653A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3035293B0D0A7D0D0A2E6170';
wwv_flow_api.g_varchar2_table(956) := '65782D6974656D2D746578742E612D506F7075704C4F562D7365617263682C0D0A2E617065782D6974656D2D746578742E617065782D6974656D2D706F7075702D6C6F762C0D0A2E617065782D6974656D2D6D756C7469207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(957) := '236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233238326333303B0D0A2020626F726465722D636F6C6F723A20233365343634633B0D0A7D0D0A2E617065782D6974656D2D746578742E612D506F7075704C4F562D73656172';
wwv_flow_api.g_varchar2_table(958) := '63683A666F6375732C0D0A2E617065782D6974656D2D746578742E617065782D6974656D2D706F7075702D6C6F763A666F6375732C0D0A2E617065782D6974656D2D6D756C74693A666F6375732C0D0A2E617065782D6974656D2D746578742E612D506F';
wwv_flow_api.g_varchar2_table(959) := '7075704C4F562D7365617263682E69732D666F63757365642C0D0A2E617065782D6974656D2D746578742E617065782D6974656D2D706F7075702D6C6F762E69732D666F63757365642C0D0A2E617065782D6974656D2D6D756C74692E69732D666F6375';
wwv_flow_api.g_varchar2_table(960) := '736564207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233131313331342021696D706F7274616E743B0D0A2020626F726465722D636F6C6F723A20233030373664662021696D706F7274616E';
wwv_flow_api.g_varchar2_table(961) := '743B0D0A7D0D0A2E617065782D6974656D2D746578742E612D506F7075704C4F562D7365617263683A666F637573202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D6974656D2D746578742E617065782D6974656D2D706F70';
wwv_flow_api.g_varchar2_table(962) := '75702D6C6F763A666F637573202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D6974656D2D6D756C74693A666F637573202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D6974656D2D746578742E';
wwv_flow_api.g_varchar2_table(963) := '612D506F7075704C4F562D7365617263682E69732D666F6375736564202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D6974656D2D746578742E617065782D6974656D2D706F7075702D6C6F762E69732D666F637573656420';
wwv_flow_api.g_varchar2_table(964) := '2B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D6974656D2D6D756C74692E69732D666F6375736564202B202E612D427574746F6E2D2D706F7075704C4F56207B0D0A2020626F782D736861646F773A20302030203020317078';
wwv_flow_api.g_varchar2_table(965) := '202330303736646620696E7365743B0D0A7D0D0A2E75692D6469616C6F67202E75692D6469616C6F672D636F6E74656E742E612D506F7075704C4F562D6469616C6F67207B0D0A20206261636B67726F756E642D636F6C6F723A20233030303B0D0A7D0D';
wwv_flow_api.g_varchar2_table(966) := '0A2E612D506F7075704C4F562D646F5365617263683A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330303736646620696E7365743B0D0A7D0D0A2E612D506F7075704C4F562D7365617263684261722C0D0A2E61';
wwv_flow_api.g_varchar2_table(967) := '2D506F7075704C4F562D636C656172207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E612D506F7075704C4F562D636C656172427574746F6E207B0D0A20';
wwv_flow_api.g_varchar2_table(968) := '206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E612D506F7075704C4F562D636C656172427574746F6E3A686F766572207B0D0A2020636F6C6F723A20233030';
wwv_flow_api.g_varchar2_table(969) := '303B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A7D0D0A2E612D506F7075704C4F562D636C656172427574746F6E3A666F637573207B0D0A2020626F782D736861646F773A2030203020302031707820233030373664';
wwv_flow_api.g_varchar2_table(970) := '6620696E7365743B0D0A7D0D0A2E742D526567696F6E207B0D0A2020626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E742D526567696F6E2C0D0A2E742D436F6E74656E74426C6F636B2D';
wwv_flow_api.g_varchar2_table(971) := '2D6C696768744247202E742D436F6E74656E74426C6F636B2D626F6479207B0D0A20206261636B67726F756E642D636F6C6F723A20233232323632393B0D0A7D0D0A2E742D426F6479202E6669656C64646174612062207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(972) := '6566656665663B0D0A7D0D0A2E742D426F64792D7469746C65202E6669656C64646174612062207B0D0A2020636F6C6F723A20236637663766373B0D0A7D0D0A2E742D426F64792D696E666F202E6669656C64646174612062207B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(973) := '3A20236637663766373B0D0A7D0D0A2E742D526567696F6E202E6669656C646461746120622C0D0A2E742D427574746F6E526567696F6E202E6669656C64646174612062207B0D0A2020636F6C6F723A20236535653565353B0D0A7D0D0A2E742D526567';
wwv_flow_api.g_varchar2_table(974) := '696F6E2D686561646572207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A2072676261283235352C203235352C203235352C20302E303735293B0D0A20206261636B67726F756E642D636F6C6F723A20233139316331653B0D0A2020636F';
wwv_flow_api.g_varchar2_table(975) := '6C6F723A20236634663466343B0D0A7D0D0A2E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(976) := '34663466343B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E643A207472616E73706172656E743B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(977) := '526567696F6E2D2D737461636B6564207B0D0A2020626F726465722D7261646975733A20302021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0D0A20206261';
wwv_flow_api.g_varchar2_table(978) := '636B67726F756E642D636F6C6F723A20233232323632393B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F';
wwv_flow_api.g_varchar2_table(979) := '55492C0D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E742D526567696F6E2D2D61636365';
wwv_flow_api.g_varchar2_table(980) := '6E7431203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233330394644423B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431203E202E';
wwv_flow_api.g_varchar2_table(981) := '742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7431203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(982) := '236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74312E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20233330394644423B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(983) := '2D526567696F6E2D2D616363656E7432203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233133423643463B0D0A2020636F6C6F723A20236534663966643B0D0A7D0D0A2E742D526567696F6E';
wwv_flow_api.g_varchar2_table(984) := '2D2D616363656E7432203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7432203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B';
wwv_flow_api.g_varchar2_table(985) := '207B0D0A2020636F6C6F723A20236534663966643B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74322E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A202331';
wwv_flow_api.g_varchar2_table(986) := '33423643463B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7433203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233245424642433B0D0A2020636F6C6F723A20236630666366623B0D';
wwv_flow_api.g_varchar2_table(987) := '0A7D0D0A2E742D526567696F6E2D2D616363656E7433203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7433203E202E742D526567696F6E2D686561646572202E74';
wwv_flow_api.g_varchar2_table(988) := '2D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236630666366623B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74332E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B';
wwv_flow_api.g_varchar2_table(989) := '0D0A2020636F6C6F723A20233245424642433B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233343414638353B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(990) := '6F723A20236630666166363B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567';
wwv_flow_api.g_varchar2_table(991) := '696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236630666166363B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74342E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D5265';
wwv_flow_api.g_varchar2_table(992) := '67696F6E2D686561646572207B0D0A2020636F6C6F723A20233343414638353B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A202338';
wwv_flow_api.g_varchar2_table(993) := '31424235463B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363';
wwv_flow_api.g_varchar2_table(994) := '656E7435203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74352E742D526567696F6E2D2D74657874436F';
wwv_flow_api.g_varchar2_table(995) := '6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20233831424235463B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7436203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(996) := '756E642D636F6C6F723A20234444444535333B0D0A2020636F6C6F723A20233261326130383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7436203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E';
wwv_flow_api.g_varchar2_table(997) := '742D526567696F6E2D2D616363656E7436203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233261326130383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74362E742D52';
wwv_flow_api.g_varchar2_table(998) := '6567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20234444444535333B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7437203E202E742D526567696F6E2D686561646572';
wwv_flow_api.g_varchar2_table(999) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20234642434534413B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7437203E202E742D526567696F6E2D686561646572202E742D427574';
wwv_flow_api.g_varchar2_table(1000) := '746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7437203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D526567696F6E';
wwv_flow_api.g_varchar2_table(1001) := '2D2D616363656E74372E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20234642434534413B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7438203E202E742D';
wwv_flow_api.g_varchar2_table(1002) := '526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20234544383133453B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7438203E202E742D526567696F6E2D';
wwv_flow_api.g_varchar2_table(1003) := '686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7438203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D';
wwv_flow_api.g_varchar2_table(1004) := '0A7D0D0A2E742D526567696F6E2D2D616363656E74382E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20234544383133453B0D0A7D0D0A2E742D526567696F6E2D2D';
wwv_flow_api.g_varchar2_table(1005) := '616363656E7439203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20234539354235343B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7439';
wwv_flow_api.g_varchar2_table(1006) := '203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7439203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1007) := '6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74392E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20234539354235343B0D0A7D';
wwv_flow_api.g_varchar2_table(1008) := '0D0A2E742D526567696F6E2D2D616363656E743130203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20234538354438383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D52';
wwv_flow_api.g_varchar2_table(1009) := '6567696F6E2D2D616363656E743130203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E743130203E202E742D526567696F6E2D686561646572202E742D427574746F';
wwv_flow_api.g_varchar2_table(1010) := '6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431302E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A202063';
wwv_flow_api.g_varchar2_table(1011) := '6F6C6F723A20234538354438383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743131203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20234341353839443B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1012) := '236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743131203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E743131203E202E742D526567696F';
wwv_flow_api.g_varchar2_table(1013) := '6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431312E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567';
wwv_flow_api.g_varchar2_table(1014) := '696F6E2D686561646572207B0D0A2020636F6C6F723A20234341353839443B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743132203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A202338';
wwv_flow_api.g_varchar2_table(1015) := '35344539423B0D0A2020636F6C6F723A20236636663066383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743132203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D6163';
wwv_flow_api.g_varchar2_table(1016) := '63656E743132203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236636663066383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431322E742D526567696F6E2D2D746578';
wwv_flow_api.g_varchar2_table(1017) := '74436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20233835344539423B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743133203E202E742D526567696F6E2D686561646572207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(1018) := '6B67726F756E642D636F6C6F723A20233541363841443B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743133203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55';
wwv_flow_api.g_varchar2_table(1019) := '492C0D0A2E742D526567696F6E2D2D616363656E743133203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E';
wwv_flow_api.g_varchar2_table(1020) := '7431332E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20233541363841443B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743134203E202E742D526567696F';
wwv_flow_api.g_varchar2_table(1021) := '6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20234146424143353B0D0A2020636F6C6F723A20233331336134343B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743134203E202E742D526567696F6E2D68656164';
wwv_flow_api.g_varchar2_table(1022) := '6572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E743134203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233331336134343B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1023) := '0A2E742D526567696F6E2D2D616363656E7431342E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20234146424143353B0D0A7D0D0A2E742D526567696F6E2D2D6163';
wwv_flow_api.g_varchar2_table(1024) := '63656E743135203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233645383539383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743135';
wwv_flow_api.g_varchar2_table(1025) := '203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E743135203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(1026) := '6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431352E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20233645383539383B0D';
wwv_flow_api.g_varchar2_table(1027) := '0A7D0D0A2E742D526567696F6E2D626F6479207B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E742D526567696F6E2D2D6869646553686F772E69732D636F6C6C6170736564207B0D0A2020626F726465722D626F74746F6D2D636F6C6F';
wwv_flow_api.g_varchar2_table(1028) := '723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D616374696F6E';
wwv_flow_api.g_varchar2_table(1029) := '73202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D73696465202E742D526567696F6E207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(1030) := '6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D526567696F6E2C0D0A2E742D526567696F6E2D686561646572207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D526567696F6E2D2D6E6F4247207B0D0A20';
wwv_flow_api.g_varchar2_table(1031) := '206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D';
wwv_flow_api.g_varchar2_table(1032) := '0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D627574746F6E207B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E34';
wwv_flow_api.g_varchar2_table(1033) := '293B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E312920696E7365743B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D';
wwv_flow_api.g_varchar2_table(1034) := '546162732D627574746F6E3A686F766572207B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E312920696E7365742C20302031707820317078207267626128302C20302C20302C20302E303529';
wwv_flow_api.g_varchar2_table(1035) := '3B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E35293B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D627574746F6E3A6163746976652C0D0A2E742D526567696F6E';
wwv_flow_api.g_varchar2_table(1036) := '2D2D6361726F7573656C202E612D546162732D627574746F6E3A6163746976653A666F637573207B0D0A20206F7061636974793A20313B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E312920';
wwv_flow_api.g_varchar2_table(1037) := '696E7365742C20302031707820317078207267626128302C20302C20302C20302E30352920696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A7D0D0A2E742D526567696F6E2D';
wwv_flow_api.g_varchar2_table(1038) := '2D6361726F7573656C202E612D546162732D6E6578742D726567696F6E207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D7072657669';
wwv_flow_api.g_varchar2_table(1039) := '6F75732D726567696F6E207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4E61764974656D2E612D54616273';
wwv_flow_api.g_varchar2_table(1040) := '2D73656C6563746564202E612D526567696F6E2D6361726F7573656C4C696E6B207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E34293B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C20';
wwv_flow_api.g_varchar2_table(1041) := '2E612D526567696F6E2D6361726F7573656C4E61764974656D2E612D546162732D73656C6563746564202E612D526567696F6E2D6361726F7573656C4C696E6B3A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664';
wwv_flow_api.g_varchar2_table(1042) := '663B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4C696E6B207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A2020626F72';
wwv_flow_api.g_varchar2_table(1043) := '6465722D7261646975733A20313030253B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E312920696E7365743B0D0A7D0D0A2E742D5265706F72742D63656C6C2C0D0A2E742D5265706F72742D';
wwv_flow_api.g_varchar2_table(1044) := '636F6C48656164207B0D0A2020626F726465723A2031707820736F6C696420233339336634353B0D0A7D0D0A2E742D5265706F72742D7265706F7274207472202E742D5265706F72742D63656C6C3A6C6173742D6368696C642C0D0A2E742D5265706F72';
wwv_flow_api.g_varchar2_table(1045) := '742D7265706F7274207472202E742D5265706F72742D636F6C486561643A6C6173742D6368696C64207B0D0A2020626F726465722D72696768743A2031707820736F6C696420233339336634353B0D0A7D0D0A2E752D52544C202E742D5265706F72742D';
wwv_flow_api.g_varchar2_table(1046) := '7265706F7274207472202E742D5265706F72742D63656C6C3A6C6173742D6368696C642C0D0A2E752D52544C202E742D5265706F72742D7265706F7274207472202E742D5265706F72742D636F6C486561643A6C6173742D6368696C64207B0D0A202062';
wwv_flow_api.g_varchar2_table(1047) := '6F726465722D6C6566743A2031707820736F6C696420233339336634353B0D0A7D0D0A2E742D5265706F72742D7265706F72742074723A6C6173742D6368696C64202E742D5265706F72742D63656C6C207B0D0A2020626F726465722D626F74746F6D3A';
wwv_flow_api.g_varchar2_table(1048) := '2031707820736F6C696420233339336634353B0D0A7D0D0A2E742D5265706F7274202E69732D737475636B202E742D5265706F72742D636F6C48656164207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612833342C2033382C203431';
wwv_flow_api.g_varchar2_table(1049) := '2C20302E3935293B0D0A20202D7765626B69742D6261636B64726F702D66696C7465723A20626C757228347078293B0D0A7D0D0A2E742D526567696F6E2D2D6E6F50616464696E67202E742D5265706F72742D2D686F72697A6F6E74616C426F72646572';
wwv_flow_api.g_varchar2_table(1050) := '73202E69732D737475636B202E742D5265706F72742D636F6C486561642C0D0A2E742D5265706F72742D2D696E6C696E65202E69732D737475636B202E742D5265706F72742D636F6C48656164207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1051) := '207267626128302C20302C20302C20302E3935293B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A2072676261283235352C203235352C203235352C20302E3035293B0D0A7D0D0A2E742D5265706F72742D2D726F77486967686C69676874';
wwv_flow_api.g_varchar2_table(1052) := '202E742D5265706F72742D7265706F72742074723A686F766572202E742D5265706F72742D63656C6C2C0D0A2E742D5265706F72742D2D726F77486967686C69676874202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F64';
wwv_flow_api.g_varchar2_table(1053) := '64293A686F766572202E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20233236326232662021696D706F7274616E743B0D0A7D0D0A2E742D5265706F72742D2D737461746963526F77436F6C6F7273202E74';
wwv_flow_api.g_varchar2_table(1054) := '2D5265706F72742D7265706F72742074723A6E74682D6368696C64286F646429202E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D5265706F72742D2D61';
wwv_flow_api.g_varchar2_table(1055) := '6C74526F777344656661756C74202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F646429202E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C20323535';
wwv_flow_api.g_varchar2_table(1056) := '2C203235352C20302E3035293B0D0A7D0D0A2E742D5265706F72742D706167696E6174696F6E5465787420622C0D0A2E742D5265706F72742D706167696E6174696F6E5465787420613A686F766572207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1057) := '723A20233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D5265706F72742D6C696E6B73207B0D0A2020626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E303735293B0D0A20';
wwv_flow_api.g_varchar2_table(1058) := '206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303235293B0D0A7D0D0A2E742D536561726368526573756C74732D64657363207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(1059) := '2D536561726368526573756C74732D64617465207B0D0A2020636F6C6F723A20236263626362633B0D0A7D0D0A2E742D536561726368526573756C74732D6D697363207B0D0A2020636F6C6F723A20236263626362633B0D0A7D0D0A2E742D526567696F';
wwv_flow_api.g_varchar2_table(1060) := '6E202E742D536561726368526573756C74732D64657363207B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E742D526567696F6E202E742D536561726368526573756C74732D64617465207B0D0A2020636F6C6F723A2023623262326232';
wwv_flow_api.g_varchar2_table(1061) := '3B0D0A7D0D0A2E742D526567696F6E202E742D536561726368526573756C74732D6D697363207B0D0A2020636F6C6F723A20236232623262323B0D0A7D0D0A2E612D53746172526174696E672D7374617273207B0D0A2020636F6C6F723A207267626128';
wwv_flow_api.g_varchar2_table(1062) := '3235352C203235352C203235352C20302E3135293B0D0A7D0D0A2E612D53746172526174696E672D73746172732E69732D666F6375736564207B0D0A2020626F782D736861646F773A203020302030203170782063757272656E74436F6C6F7220696E73';
wwv_flow_api.g_varchar2_table(1063) := '65743B0D0A7D0D0A2E612D53746172526174696E672D73746172732E69732D666F6375736564202E612D53746172526174696E672D73746172732D6667202E612D53746172526174696E672D73746172207B0D0A2020746578742D736861646F773A2030';
wwv_flow_api.g_varchar2_table(1064) := '2030203270782063757272656E74436F6C6F723B0D0A7D0D0A2E612D47562D63656C6C2E69732D616374697665202E612D53746172526174696E672D73746172732E69732D666F6375736564207B0D0A2020626F782D736861646F773A206E6F6E653B0D';
wwv_flow_api.g_varchar2_table(1065) := '0A7D0D0A2E612D53746172526174696E672D73746172732D6667207B0D0A2020636F6C6F723A20233030373664663B0D0A7D0D0A2E612D53746172526174696E672D76616C7565207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E612D';
wwv_flow_api.g_varchar2_table(1066) := '53746172526174696E672D636C6561723A666F637573207B0D0A2020626F782D736861646F773A20696E7365742023303037366466203020302030203170783B0D0A7D0D0A2E612D53746172526174696E672D2D64697361626C6564202E612D53746172';
wwv_flow_api.g_varchar2_table(1067) := '526174696E672D73746172732D6667207B0D0A2020636F6C6F723A20696E697469616C3B0D0A7D0D0A2E742D5374617475734C6973742D626C6F636B486561646572207B0D0A2020636F6C6F723A20236665666566653B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1068) := '642D636F6C6F723A20233139316331653B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A2072676261283235352C203235352C203235352C20302E3035293B0D0A2020626F726465722D746F702D636F6C6F723A2072676261283235352C20';
wwv_flow_api.g_varchar2_table(1069) := '3235352C203235352C20302E3035293B0D0A7D0D0A2E742D5374617475734C6973742D68656164657254657874416C742C0D0A2E742D5374617475734C6973742D617474722C0D0A2E742D5374617475734C6973742D7465787444657363207B0D0A2020';
wwv_flow_api.g_varchar2_table(1070) := '636F6C6F723A20236232623262323B0D0A7D0D0A2E742D5374617475734C6973742D6974656D5469746C65207B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E742D5374617475734C6973742D2D6461746573202E742D5374617475734C';
wwv_flow_api.g_varchar2_table(1071) := '6973742D6D61726B6572207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E35293B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A2023303030303030';
wwv_flow_api.g_varchar2_table(1072) := '3B0D0A2020626F782D736861646F773A203020302030203170782072676261283235352C203235352C203235352C20302E312920696E7365743B0D0A7D0D0A2E742D5374617475734C6973742D2D6461746573202E742D5374617475734C6973742D6D61';
wwv_flow_api.g_varchar2_table(1073) := '726B65723A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A2020626F726465722D7261646975733A2032707820327078203020303B0D0A7D0D0A2E742D5374';
wwv_flow_api.g_varchar2_table(1074) := '617475734C6973742D2D6461746573202E742D5374617475734C6973742D6974656D2E69732D6E756C6C202E742D5374617475734C6973742D6D61726B6572207B0D0A2020626F782D736861646F773A203020302030203170782072676261283235352C';
wwv_flow_api.g_varchar2_table(1075) := '203235352C203235352C20302E30352920696E7365743B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6D61726B6572207B0D0A2020626F726465722D7261646975733A20323470783B0D0A20';
wwv_flow_api.g_varchar2_table(1076) := '206261636B67726F756E642D636F6C6F723A20236666663B0D0A2020636F6C6F723A20233430343034303B0D0A2020626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A7D0D0A2E742D5374617475';
wwv_flow_api.g_varchar2_table(1077) := '734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D636F6D706C657465202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0D0A';
wwv_flow_api.g_varchar2_table(1078) := '7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D64616E676572202E742D5374617475734C6973742D6D61726B65722C0D0A2E742D5374617475734C6973742D2D62756C6C657473';
wwv_flow_api.g_varchar2_table(1079) := '202E742D5374617475734C6973742D6974656D2E69732D6572726F72202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0D0A7D0D0A2E742D5374617475734C6973742D';
wwv_flow_api.g_varchar2_table(1080) := '2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6F70656E202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0D0A7D0D0A2E742D53746174';
wwv_flow_api.g_varchar2_table(1081) := '75734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D7761726E696E67202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0D0A';
wwv_flow_api.g_varchar2_table(1082) := '7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6E756C6C202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20726762';
wwv_flow_api.g_varchar2_table(1083) := '61283235352C203235352C203235352C20302E3935293B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A2020626F782D736861646F773A203020302030203170782072676261283235352C203235352C203235352C20';
wwv_flow_api.g_varchar2_table(1084) := '302E30352920696E7365743B0D0A7D0D0A2E742D5374617475734C6973742D6974656D49636F6E207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E34293B0D0A2020626F782D736861646F773A2030203020302072';
wwv_flow_api.g_varchar2_table(1085) := '676261283235352C203235352C203235352C20302E322920696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20233030303030303B0D0A7D0D0A2E612D5461626C652E752D5265706F72742074642C0D0A2E612D5461626C652E752D52';
wwv_flow_api.g_varchar2_table(1086) := '65706F7274207468207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E612D5461626C652E752D5265706F72742E7461626C652D7374726F6B652074642C0D0A2E612D5461626C652E752D5265706F72742E74';
wwv_flow_api.g_varchar2_table(1087) := '61626C652D7374726F6B65207468207B0D0A2020626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E612D5461626C652E752D5265706F72742074723A6E74682D6368696C64286576656E29';
wwv_flow_api.g_varchar2_table(1088) := '2074642C0D0A2E612D5461626C652E752D5265706F72742074723A6E74682D6368696C64286576656E292074685B73636F70653D22726F77225D207B0D0A20206261636B67726F756E642D636F6C6F723A20233030303B0D0A7D0D0A2E612D5461626C65';
wwv_flow_api.g_varchar2_table(1089) := '2E752D5265706F72742E7461626C652D7374726970652074723A6E74682D6368696C64286576656E292074642C0D0A2E612D5461626C652E752D5265706F72742E7461626C652D7374726970652074723A6E74682D6368696C64286576656E292074685B';
wwv_flow_api.g_varchar2_table(1090) := '73636F70653D22726F77225D207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303235293B0D0A7D0D0A406D6564696120286D61782D77696474683A20353630707829207B0D0A20202E';
wwv_flow_api.g_varchar2_table(1091) := '612D5461626C652D2D7265666C6F772E75692D726573706F6E736976652074642C0D0A20202E612D5461626C652D2D7265666C6F772E75692D726573706F6E73697665207468207B0D0A20202020626F726465722D626F74746F6D2D636F6C6F723A2072';
wwv_flow_api.g_varchar2_table(1092) := '676261283235352C203235352C203235352C20302E3035293B0D0A20207D0D0A7D0D0A2E752D5265706F7274202E752D5265706F72742D6865616465722C0D0A2E752D5265706F7274207468207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1093) := '72676261283235352C203235352C203235352C20302E303235293B0D0A2020636F6C6F723A20236666663B0D0A7D0D0A2E752D5265706F72742074685B73636F70653D22726F7767726F7570225D207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(1094) := '3A2072676261283235352C203235352C203235352C20302E3035293B0D0A7D0D0A2E752D5265706F72742074685B73636F70653D22726F77225D207B0D0A20206261636B67726F756E642D636F6C6F723A20233030303B0D0A7D0D0A2E752D5265706F72';
wwv_flow_api.g_varchar2_table(1095) := '74207464207B0D0A2020636F6C6F723A20236666663B0D0A20206261636B67726F756E642D636F6C6F723A20233030303B0D0A7D0D0A2E752D5265706F72742074723A6E74682D6368696C64286576656E292074642C0D0A2E752D5265706F7274207472';
wwv_flow_api.g_varchar2_table(1096) := '3A6E74682D6368696C64286576656E292074685B73636F70653D22726F77225D207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303235293B0D0A7D0D0A2E752D5265706F7274207464';
wwv_flow_api.g_varchar2_table(1097) := '2C0D0A2E752D5265706F7274207468207B0D0A2020626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E752D5265706F72742D2D73746174696342472074723A6E74682D6368696C64286576';
wwv_flow_api.g_varchar2_table(1098) := '656E292074642C0D0A2E752D5265706F72742D2D73746174696342472074723A6E74682D6368696C64286576656E292074685B73636F70653D22726F77225D207B0D0A2020626F726465722D636F6C6F723A2072676261283235352C203235352C203235';
wwv_flow_api.g_varchar2_table(1099) := '352C20302E303235293B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D546162732D6974656D2E69732D616374697665202E742D546162732D6C696E6B207B0D0A2020626F782D736861646F773A2030202D32707820302023303037366466';
wwv_flow_api.g_varchar2_table(1100) := '20696E7365743B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330303736646620696E7365743B0D0A7D0D0A2E742D54616273';
wwv_flow_api.g_varchar2_table(1101) := '2D2D70696C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20233163316632323B0D0A2020626F726465722D7261646975733A203270783B0D0A2020626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C2030';
wwv_flow_api.g_varchar2_table(1102) := '2E31293B0D0A2020626F782D736861646F773A20302031707820327078207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D49636F6E207B0D0A2020636F6C6F723A20236665666566653B0D0A7D';
wwv_flow_api.g_varchar2_table(1103) := '0D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20236665666566653B0D0A2020626F726465722D6C6566742D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D';
wwv_flow_api.g_varchar2_table(1104) := '0D0A2E752D52544C202E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0D0A2020626F726465722D72696768742D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E742D546162732D2D';
wwv_flow_api.g_varchar2_table(1105) := '70696C6C202E742D546162732D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233232323632393B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A666F637573207B0D0A2020626F';
wwv_flow_api.g_varchar2_table(1106) := '782D736861646F773A20302030203020317078202330303736646620696E7365743B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A2023323232';
wwv_flow_api.g_varchar2_table(1107) := '3632393B0D0A2020626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E30352920696E7365743B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6974656D3A66697273742D6368696C6420';
wwv_flow_api.g_varchar2_table(1108) := '2E742D546162732D6C696E6B207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E752D52544C202E742D546162732D2D70696C6C202E742D546162732D6974656D3A66697273742D6368696C64202E742D54';
wwv_flow_api.g_varchar2_table(1109) := '6162732D6C696E6B207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6974656D3A6C6173742D6368696C64202E742D546162732D6C696E6B207B0D0A';
wwv_flow_api.g_varchar2_table(1110) := '2020626F726465722D72696768742D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E752D52544C202E742D546162732D2D70696C6C202E742D546162732D6974656D3A6C6173742D6368696C64202E742D';
wwv_flow_api.g_varchar2_table(1111) := '546162732D6C696E6B207B0D0A2020626F726465722D6C6566742D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6974656D2E69732D616374697665';
wwv_flow_api.g_varchar2_table(1112) := '202E742D546162732D6C696E6B207B0D0A20206261636B67726F756E642D636F6C6F723A20233232323632393B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D49636F6E207B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1113) := '742D546162732D2D73696D706C65202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A686F766572207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1114) := '756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303235293B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(1115) := '3A2072676261283235352C203235352C203235352C20302E3135293B0D0A7D0D0A2E742D426F6479202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F';
wwv_flow_api.g_varchar2_table(1116) := '64792D7469746C65202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E742D546162732D2D73696D706C65202E742D546162732D6C696E';
wwv_flow_api.g_varchar2_table(1117) := '6B207B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E617065782D726473202E617065782D7264732D73656C6563746564207370616E207B0D0A2020626F782D736861646F773A2030202D3270782030202330303736646620696E736574';
wwv_flow_api.g_varchar2_table(1118) := '3B0D0A7D0D0A2E617065782D72647320613A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330303736646620696E7365743B0D0A7D0D0A2E617065782D7264732061207B0D0A2020636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(1119) := '663B0D0A7D0D0A2E742D426F64792D7469746C65202E617065782D72647320612C0D0A2E742D426F64792D696E666F202E617065782D7264732061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E61706578';
wwv_flow_api.g_varchar2_table(1120) := '2D7264732061207B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E617065782D72647320613A686F766572207B0D0A2020636F6C6F723A20233431613566663B0D0A7D0D0A2E617065782D726473202E617065782D7264732D73656C6563';
wwv_flow_api.g_varchar2_table(1121) := '7465642061207B0D0A2020636F6C6F723A20233431613566663B0D0A7D0D0A2E617065782D7264732D686F7665722E6C6566742061207B0D0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C';
wwv_flow_api.g_varchar2_table(1122) := '2023333233383364203530252C2072676261283235352C203235352C203235352C2030292031303025293B0D0A20206261636B67726F756E643A206C696E6561722D6772616469656E7428746F2072696768742C2023333233383364203530252C207267';
wwv_flow_api.g_varchar2_table(1123) := '6261283235352C203235352C203235352C2030292031303025293B0D0A7D0D0A2E617065782D7264732D686F7665722E72696768742061207B0D0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566';
wwv_flow_api.g_varchar2_table(1124) := '742C20233332333833642030252C2072676261283235352C203235352C203235352C2030292031252C202333323338336420353025293B0D0A20206261636B67726F756E643A206C696E6561722D6772616469656E7428746F2072696768742C20233332';
wwv_flow_api.g_varchar2_table(1125) := '333833642030252C2072676261283235352C203235352C203235352C2030292031252C202333323338336420353025293B0D0A7D0D0A2E617065782D7264732D6974656D2D2D68696E742061207370616E207B0D0A2020626F782D736861646F773A2030';
wwv_flow_api.g_varchar2_table(1126) := '202D32707820302072676261283235352C203235352C203235352C20302E322920696E7365743B0D0A7D0D0A2E766572746963616C2D726473202E617065782D726473202E617065782D7264732D73656C6563746564207370616E2C0D0A2E742D426F64';
wwv_flow_api.g_varchar2_table(1127) := '792D73696465202E617065782D726473202E617065782D7264732D73656C6563746564207370616E207B0D0A2020626F782D736861646F773A2034707820302030202330303736646620696E7365743B0D0A7D0D0A2E752D52544C202E76657274696361';
wwv_flow_api.g_varchar2_table(1128) := '6C2D726473202E617065782D726473202E617065782D7264732D73656C6563746564207370616E2C0D0A2E752D52544C202E742D426F64792D73696465202E617065782D726473202E617065782D7264732D73656C6563746564207370616E207B0D0A20';
wwv_flow_api.g_varchar2_table(1129) := '20626F782D736861646F773A202D34707820302030202330303736646620696E7365743B0D0A7D0D0A2E612D546167436C6F75642D6C696E6B207B0D0A2020626F726465722D636F6C6F723A20233264333333373B0D0A2020626F726465722D72616469';
wwv_flow_api.g_varchar2_table(1130) := '75733A203270783B0D0A20206261636B67726F756E643A20233236326232663B0D0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E32732C20626F726465722D636F6C6F7220302E32732C20626F782D736861646F77';
wwv_flow_api.g_varchar2_table(1131) := '20302E32732C20636F6C6F7220302E32733B0D0A2020636F6C6F723A20233363613366663B0D0A7D0D0A2E612D546167436C6F75642D6C696E6B207370616E207B0D0A20207472616E736974696F6E3A20636F6C6F7220302E32733B0D0A7D0D0A2E612D';
wwv_flow_api.g_varchar2_table(1132) := '546167436C6F75642D6C696E6B3A686F766572207B0D0A2020746578742D6465636F726174696F6E3A206E6F6E653B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A2020626F726465722D636F6C6F723A202330303736';
wwv_flow_api.g_varchar2_table(1133) := '64663B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A20302030203020327078202330303736646620696E7365743B0D0A7D0D0A2E612D546167436C6F75642D6C696E6B3A686F766572207370616E207B0D0A2020';
wwv_flow_api.g_varchar2_table(1134) := '636F6C6F723A20236666666666663B0D0A7D0D0A2E612D546167436C6F75642D636F756E74207B0D0A2020636F6C6F723A20236266626662663B0D0A2020666F6E742D7765696768743A203530303B0D0A7D0D0A2E742D54696D656C696E65207B0D0A20';
wwv_flow_api.g_varchar2_table(1135) := '20636F6C6F723A20236665666566653B0D0A7D0D0A2E742D54696D656C696E652D6974656D207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E742D54696D';
wwv_flow_api.g_varchar2_table(1136) := '656C696E652D757365726E616D652C0D0A2E742D54696D656C696E652D646174652C0D0A2E742D54696D656C696E652D64657363207B0D0A2020636F6C6F723A20236232623262323B0D0A7D0D0A2E742D54696D656C696E652D617661746172207B0D0A';
wwv_flow_api.g_varchar2_table(1137) := '20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D54696D656C696E652D77726170207B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A612E742D5469';
wwv_flow_api.g_varchar2_table(1138) := '6D656C696E652D777261703A686F7665722C0D0A612E742D54696D656C696E652D777261703A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3035293B0D0A2020626F78';
wwv_flow_api.g_varchar2_table(1139) := '2D736861646F773A20302038707820387078202D347078207267626128302C20302C20302C20302E3035292C20302032707820387078202D327078207267626128302C20302C20302C20302E31293B0D0A7D0D0A2E742D54696D656C696E652D74797065';
wwv_flow_api.g_varchar2_table(1140) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20233066313131333B0D0A2020636F6C6F723A20236634663466343B0D0A7D0D0A2E742D54696D656C696E652D747970652E69732D6E6577207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1141) := '723A20233342414132433B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D54696D656C696E652D747970652E69732D75706461746564207B0D0A20206261636B67726F756E642D636F6C6F723A20233361613266613B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1142) := '3A20234646463B0D0A7D0D0A2E742D54696D656C696E652D747970652E69732D72656D6F766564207B0D0A20206261636B67726F756E642D636F6C6F723A20236634343333363B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D54696D656C';
wwv_flow_api.g_varchar2_table(1143) := '696E652D777261703A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D736861646F773A20302030203020317078202330303736646620696E7365743B0D0A7D0D0A2E742D54696D656C696E65202B202E742D5265706F';
wwv_flow_api.g_varchar2_table(1144) := '72742D706167696E6174696F6E207B0D0A2020626F726465722D746F702D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A406D6564696120286D696E2D77696474683A20373639707829207B0D0A20202E74';
wwv_flow_api.g_varchar2_table(1145) := '2D426F64792D6E6176207B0D0A202020206261636B67726F756E642D636F6C6F723A20233333336434363B0D0A20207D0D0A7D0D0A2E742D547265654E6176207B0D0A20206261636B67726F756E642D636F6C6F723A20233333336434363B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1146) := '2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C6261722D7468756D62207B0D0A20206261636B67726F756E642D636F6C6F723A20233234326233313B0D0A2020626F782D736861';
wwv_flow_api.g_varchar2_table(1147) := '646F773A20696E7365742031707820302030203020233333336434363B0D0A7D0D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C6261722D7468756D623A686F766572207B0D';
wwv_flow_api.g_varchar2_table(1148) := '0A20206261636B67726F756E642D636F6C6F723A20233365346135343B0D0A7D0D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C6261722D747261636B207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(1149) := '6B67726F756E643A20233333336434363B0D0A7D0D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C6261722D747261636B3A686F766572207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1150) := '642D636F6C6F723A20233534363437323B0D0A7D0D0A2E742D526567696F6E207B0D0A20200D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D666F';
wwv_flow_api.g_varchar2_table(1151) := '6375736564207B0D0A2020626F782D736861646F773A20302030203020317078202330303736646620696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D526567696F6E202E612D54';
wwv_flow_api.g_varchar2_table(1152) := '726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472656556696577';
wwv_flow_api.g_varchar2_table(1153) := '2D726F772E69732D73656C65637465642C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C656374656420';
wwv_flow_api.g_varchar2_table(1154) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20233239326433323B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D';
wwv_flow_api.g_varchar2_table(1155) := '2D746F702C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0D0A2E742D526567696F6E202E612D5472656556696577';
wwv_flow_api.g_varchar2_table(1156) := '2D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20233232323632393B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472656556';
wwv_flow_api.g_varchar2_table(1157) := '6965772D726F772E69732D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233330333533612021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C';
wwv_flow_api.g_varchar2_table(1158) := '202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65';
wwv_flow_api.g_varchar2_table(1159) := '202E612D54726565566965772D746F67676C65207B0D0A2020636F6C6F723A2072676261283235342C203235342C203235342C20302E3735293B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C20';
wwv_flow_api.g_varchar2_table(1160) := '2E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C653A686F7665722C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C6170';
wwv_flow_api.g_varchar2_table(1161) := '7369626C65202E612D54726565566965772D746F67676C653A686F766572207B0D0A2020636F6C6F723A20236665666566652021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C65';
wwv_flow_api.g_varchar2_table(1162) := '76656C202E612D54726565566965772D636F6E74656E742E69732D686F766572207B0D0A2020636F6C6F723A20236665666566652021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F70';
wwv_flow_api.g_varchar2_table(1163) := '4C6576656C202E612D54726565566965772D636F6E74656E74207B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D';
wwv_flow_api.g_varchar2_table(1164) := '636F6E74656E74202E66612C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0D0A2020636F6C6F723A2072676261283235342C';
wwv_flow_api.g_varchar2_table(1165) := '203235342C203235342C20302E3935293B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66613A6265666F72652C0D0A2E742D526567696F';
wwv_flow_api.g_varchar2_table(1166) := '6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E3A6265666F7265207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D526567696F6E202E';
wwv_flow_api.g_varchar2_table(1167) := '612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E66612C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E61';
wwv_flow_api.g_varchar2_table(1168) := '2D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E66612C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D';
wwv_flow_api.g_varchar2_table(1169) := '686F766572202E612D49636F6E2C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E612D49636F6E207B0D0A';
wwv_flow_api.g_varchar2_table(1170) := '2020636F6C6F723A20236665666566653B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D6C6162656C207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D';
wwv_flow_api.g_varchar2_table(1171) := '0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D';
wwv_flow_api.g_varchar2_table(1172) := '746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D73656C65637465642C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E';
wwv_flow_api.g_varchar2_table(1173) := '69732D63757272656E742D2D746F70207B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C65207B0D0A';
wwv_flow_api.g_varchar2_table(1174) := '2020636F6C6F723A2072676261283235342C203235342C203235342C20302E3735293B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C653A686F7665';
wwv_flow_api.g_varchar2_table(1175) := '72207B0D0A2020636F6C6F723A20236665666566652021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D5472656556';
wwv_flow_api.g_varchar2_table(1176) := '6965772D726F772E69732D73656C65637465642C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772E69732D666F637573';
wwv_flow_api.g_varchar2_table(1177) := '6564207B0D0A20206261636B67726F756E642D636F6C6F723A20233239326433323B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D666F6375';
wwv_flow_api.g_varchar2_table(1178) := '736564207B0D0A2020626F782D736861646F773A20302030203020317078202330303736646620696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D547265654E6176202E612D5472';
wwv_flow_api.g_varchar2_table(1179) := '6565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472656556696577';
wwv_flow_api.g_varchar2_table(1180) := '2D726F772E69732D73656C65637465642C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564';
wwv_flow_api.g_varchar2_table(1181) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20233234326233313B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E';
wwv_flow_api.g_varchar2_table(1182) := '742D2D746F702C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0D0A2E742D547265654E6176202E612D54726565';
wwv_flow_api.g_varchar2_table(1183) := '566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20233165323332383B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D';
wwv_flow_api.g_varchar2_table(1184) := '54726565566965772D726F772E69732D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233262333333612021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F';
wwv_flow_api.g_varchar2_table(1185) := '704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C';
wwv_flow_api.g_varchar2_table(1186) := '61707369626C65202E612D54726565566965772D746F67676C65207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D74';
wwv_flow_api.g_varchar2_table(1187) := '6F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C653A686F7665722C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E';
wwv_flow_api.g_varchar2_table(1188) := '69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C653A686F766572207B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E';
wwv_flow_api.g_varchar2_table(1189) := '6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572207B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965';
wwv_flow_api.g_varchar2_table(1190) := '772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C20';
wwv_flow_api.g_varchar2_table(1191) := '2E612D54726565566965772D636F6E74656E74202E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1192) := '6F723A20236666666666663B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66613A6265666F72652C0D0A2E742D547265654E6176202E';
wwv_flow_api.g_varchar2_table(1193) := '612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E3A6265666F7265207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D547265654E6176202E612D';
wwv_flow_api.g_varchar2_table(1194) := '54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D';
wwv_flow_api.g_varchar2_table(1195) := '54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D';
wwv_flow_api.g_varchar2_table(1196) := '686F766572202E612D49636F6E2C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E612D49636F6E207B0D';
wwv_flow_api.g_varchar2_table(1197) := '0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D6C6162656C207B0D0A2020636F6C6F723A20696E68657269743B0D';
wwv_flow_api.g_varchar2_table(1198) := '0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F';
wwv_flow_api.g_varchar2_table(1199) := '64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D73656C65637465642C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E';
wwv_flow_api.g_varchar2_table(1200) := '74656E742E69732D63757272656E742D2D746F70207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F6767';
wwv_flow_api.g_varchar2_table(1201) := '6C65207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F6767';
wwv_flow_api.g_varchar2_table(1202) := '6C653A686F766572207B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E61';
wwv_flow_api.g_varchar2_table(1203) := '2D54726565566965772D636F6E74656E74202E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74202E612D';
wwv_flow_api.g_varchar2_table(1204) := '49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E7465';
wwv_flow_api.g_varchar2_table(1205) := '6E74207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E6A732D6E6176436F6C6C6170736564202E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C203E202E612D54726565566965772D636F6E';
wwv_flow_api.g_varchar2_table(1206) := '74656E74202E612D54726565566965772D6C6162656C202E612D54726565566965772D6261646765207B0D0A20206261636B67726F756E643A20233133313631613B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D547265654E6176';
wwv_flow_api.g_varchar2_table(1207) := '202E612D54726565566965772D6261646765207B0D0A2020626F782D736861646F773A203020302030203170782072676261283235352C203235352C203235352C20302E31293B0D0A2020666F6E742D7765696768743A203430303B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(1208) := '547265654E6176202E612D54726565566965772D636F6E74656E742E69732D63757272656E74202E612D54726565566965772D6C6162656C2C0D0A2E742D547265654E6176202E612D54726565566965772D636F6E74656E742E69732D63757272656E74';
wwv_flow_api.g_varchar2_table(1209) := '2D2D746F70202E612D54726565566965772D6C6162656C207B0D0A2020666F6E742D7765696768743A203530303B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C207B0D0A';
wwv_flow_api.g_varchar2_table(1210) := '2020626F726465722D626F74746F6D3A2031707820736F6C69642072676261283235352C203235352C203235352C20302E303735293B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C';
wwv_flow_api.g_varchar2_table(1211) := '6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F77';
wwv_flow_api.g_varchar2_table(1212) := '2E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F77207B0D0A2020626F782D736861646F773A20696E736574202330303736646620347078203020303B0D0A7D0D0A2E752D52544C202E742D547265654E61762D';
wwv_flow_api.g_varchar2_table(1213) := '2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E752D52544C202E742D547265654E61762D2D7374796C6541202E612D5472';
wwv_flow_api.g_varchar2_table(1214) := '6565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F77207B0D0A2020626F782D736861646F773A20696E736574202330';
wwv_flow_api.g_varchar2_table(1215) := '3037366466202D347078203020303B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E6973';
wwv_flow_api.g_varchar2_table(1216) := '2D666F63757365642C0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D547265';
wwv_flow_api.g_varchar2_table(1217) := '65566965772D726F772E69732D666F6375736564207B0D0A2020626F782D736861646F773A20696E736574202330303736646620347078203020302C20302030203020317078202330303736646620696E7365743B0D0A7D0D0A2E752D52544C202E742D';
wwv_flow_api.g_varchar2_table(1218) := '547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D666F63757365642C0D0A2E752D52544C202E742D5472';
wwv_flow_api.g_varchar2_table(1219) := '65654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F772E69732D666F63';
wwv_flow_api.g_varchar2_table(1220) := '75736564207B0D0A2020626F782D736861646F773A20696E7365742023303037366466202D347078203020302C20302030203020317078202330303736646620696E7365743B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D547265';
wwv_flow_api.g_varchar2_table(1221) := '65566965772D6261646765207B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E6A732D6E6176436F6C6C6170736564202E742D547265654E61762D2D7374796C';
wwv_flow_api.g_varchar2_table(1222) := '6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C203E202E612D54726565566965772D636F6E74656E74202E612D54726565566965772D6C6162656C202E612D54726565566965772D6261646765207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1223) := '756E642D636F6C6F723A20233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D';
wwv_flow_api.g_varchar2_table(1224) := '2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E';
wwv_flow_api.g_varchar2_table(1225) := '612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D6375';
wwv_flow_api.g_varchar2_table(1226) := '7272656E742D2D746F702E69732D73656C6563746564207B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C';
wwv_flow_api.g_varchar2_table(1227) := '6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564202B202E612D54726565566965772D746F67676C652C0D0A2E742D547265654E61762D2D7374796C6542202E612D547265655669';
wwv_flow_api.g_varchar2_table(1228) := '65772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E61';
wwv_flow_api.g_varchar2_table(1229) := '2D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F702E69732D686F766572207B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E74';
wwv_flow_api.g_varchar2_table(1230) := '3B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D686F766572207B0D0A20206261';
wwv_flow_api.g_varchar2_table(1231) := '636B67726F756E642D636F6C6F723A20233030373965342021696D706F7274616E743B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6261646765207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1232) := '233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D56616C69646174696F6E2D64617465207B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(1233) := '56616C69646174696F6E2D75736572207B0D0A2020636F6C6F723A20236535653565353B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D56616C69646174696F6E2D64617465207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1234) := '0A2E742D426F64792D616374696F6E73202E742D56616C69646174696F6E2D75736572207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D4469616C6F672D706167652D2D77697A617264207B0D0A2020626F726465723A20233339';
wwv_flow_api.g_varchar2_table(1235) := '336634353B0D0A7D0D0A2E742D57697A617264207B0D0A20206261636B67726F756E642D636F6C6F723A20233232323632393B0D0A2020626F726465722D7261646975733A203270783B0D0A2020626F726465722D636F6C6F723A20233339336634353B';
wwv_flow_api.g_varchar2_table(1236) := '0D0A2020626F782D736861646F773A20302031707820327078207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E742D57697A617264202E742D57697A6172642D7469746C65207B0D0A2020636F6C6F723A20236665666566653B0D0A7D';
wwv_flow_api.g_varchar2_table(1237) := '0D0A2E742D57697A617264202E742D57697A6172642D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233236326232663B0D0A2020626F726465722D636F6C6F723A20233332333833643B0D0A7D0D0A2E742D57697A617264';
wwv_flow_api.g_varchar2_table(1238) := '53746570732D777261703A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20233339336634353B0D0A7D0D0A2E742D57697A61726453746570732D73746570202E742D57697A61726453746570732D6D61726B6572207B0D0A2020';
wwv_flow_api.g_varchar2_table(1239) := '6261636B67726F756E642D636F6C6F723A20233530353936313B0D0A7D0D0A2E742D57697A61726453746570732D737465702E69732D636F6D706C657465202E742D57697A61726453746570732D6D61726B6572207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1240) := '2D636F6C6F723A20233342414132433B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D57697A61726453746570732D737465702E69732D616374697665202E742D57697A61726453746570732D6D61726B6572207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1241) := '6F756E642D636F6C6F723A20233030373664663B0D0A7D0D0A2E742D57697A61726453746570732D6C6162656C207B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A612E742D57697A61726453746570732D777261705B687265665D3A686F';
wwv_flow_api.g_varchar2_table(1242) := '766572202E742D57697A61726453746570732D6C6162656C2C0D0A612E742D57697A61726453746570732D777261705B687265665D3A666F637573202E742D57697A61726453746570732D6C6162656C207B0D0A2020636F6C6F723A2023343161356666';
wwv_flow_api.g_varchar2_table(1243) := '3B0D0A2020746578742D6465636F726174696F6E3A20756E6465726C696E653B0D0A7D0D0A612E742D57697A61726453746570732D777261705B687265665D3A666F637573202E742D57697A61726453746570732D6D61726B6572207B0D0A2020626F78';
wwv_flow_api.g_varchar2_table(1244) := '2D736861646F773A2030203020302031707820233232323632392C2030203020302032707820233030373664662C203020302031707820327078207267626128302C203131382C203232332C20302E3235293B0D0A7D0D0A626F6479202E75692D776964';
wwv_flow_api.g_varchar2_table(1245) := '6765742D6F7665726C6179207B0D0A20206261636B67726F756E643A206E6F6E65207267626128302C20302C20302C20302E35293B0D0A20206F7061636974793A20313B0D0A7D0D0A2E75692D776964676574207B0D0A2020666F6E742D66616D696C79';
wwv_flow_api.g_varchar2_table(1246) := '3A202748656C766574696361204E657565272C20275365676F65205549272C2048656C7665746963612C20417269616C2C2073616E732D73657269663B0D0A2020666F6E742D73697A653A20313270783B0D0A7D0D0A2E75692D776964676574202E7569';
wwv_flow_api.g_varchar2_table(1247) := '2D776964676574207B0D0A2020666F6E742D73697A653A20313270783B0D0A7D0D0A626F6479202E75692D7769646765742D636F6E74656E742C0D0A626F6479202E75692D7769646765742E75692D7769646765742D636F6E74656E74207B0D0A202062';
wwv_flow_api.g_varchar2_table(1248) := '6F726465722D636F6C6F723A20233334336134303B0D0A20206261636B67726F756E642D636F6C6F723A20233232323632393B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A626F6479202E75692D7769646765742D636F6E74656E742061';
wwv_flow_api.g_varchar2_table(1249) := '207B0D0A2020636F6C6F723A20233431613566663B0D0A7D0D0A626F6479202E75692D7769646765742D686561646572207B0D0A2020626F726465722D636F6C6F723A20233334336134303B0D0A20206261636B67726F756E642D636F6C6F723A202331';
wwv_flow_api.g_varchar2_table(1250) := '39316331653B0D0A2020636F6C6F723A20236634663466343B0D0A7D0D0A626F6479202E75692D7769646765742D6865616465722061207B0D0A2020636F6C6F723A20236634663466343B0D0A7D0D0A626F6479202E75692D73746174652D6465666175';
wwv_flow_api.g_varchar2_table(1251) := '6C742C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D64656661756C742C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D64656661756C74207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(1252) := '726F756E642D636F6C6F723A20233463346535303B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A203020302030203170782072676261283235352C203235352C203235352C20302E303132352920696E7365743B';
wwv_flow_api.g_varchar2_table(1253) := '0D0A7D0D0A626F6479202E75692D73746174652D64656661756C7420612C0D0A626F6479202E75692D73746174652D64656661756C7420613A6C696E6B2C0D0A626F6479202E75692D73746174652D64656661756C7420613A766973697465642C0D0A62';
wwv_flow_api.g_varchar2_table(1254) := '6F6479202E75692D73746174652D61637469766520612C0D0A626F6479202E75692D73746174652D61637469766520613A6C696E6B2C0D0A626F6479202E75692D73746174652D61637469766520613A76697369746564207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1255) := '233431613566663B0D0A7D0D0A626F6479202E75692D73746174652D6163746976652C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6163746976652C0D0A626F6479202E75692D7769646765742D68656164';
wwv_flow_api.g_varchar2_table(1256) := '6572202E75692D73746174652D616374697665207B0D0A2020626F782D736861646F773A203020302030203170782072676261283235352C203235352C203235352C20302E322920696E7365742C20302031707820327078207267626128302C20302C20';
wwv_flow_api.g_varchar2_table(1257) := '302C20302E32352920696E7365743B0D0A7D0D0A626F6479202E75692D73746174652D686F7665722C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686F7665722C0D0A626F6479202E75692D776964676574';
wwv_flow_api.g_varchar2_table(1258) := '2D686561646572202E75692D73746174652D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233635363836613B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A2030203270782031707820';
wwv_flow_api.g_varchar2_table(1259) := '7267626128302C20302C20302C20302E3035292C203020302030203170782072676261283235352C203235352C203235352C20302E303132352920696E7365743B0D0A7D0D0A626F6479202E75692D73746174652D666F6375732C0D0A626F6479202E75';
wwv_flow_api.g_varchar2_table(1260) := '692D7769646765742D636F6E74656E74202E75692D73746174652D666F6375732C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D666F637573207B0D0A2020626F782D736861646F773A20302030203020317078';
wwv_flow_api.g_varchar2_table(1261) := '202330303736646620696E7365742C203020302031707820327078207267626128302C203131382C203232332C20302E3235292021696D706F7274616E743B0D0A20206261636B67726F756E642D636F6C6F723A20233635363836613B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1262) := '6F723A20236666666666663B0D0A7D0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D627574746F6E70616E6520627574746F6E3A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A202062';
wwv_flow_api.g_varchar2_table(1263) := '6F782D736861646F773A20302030203020317078202330303736646620696E7365742C203020302031707820327078207267626128302C203131382C203232332C20302E3235292021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D737461';
wwv_flow_api.g_varchar2_table(1264) := '74652D686F76657220612C0D0A626F6479202E75692D73746174652D686F76657220613A686F7665722C0D0A626F6479202E75692D73746174652D686F76657220613A6C696E6B2C0D0A626F6479202E75692D73746174652D686F76657220613A766973';
wwv_flow_api.g_varchar2_table(1265) := '697465642C0D0A626F6479202E75692D73746174652D666F63757320612C0D0A626F6479202E75692D73746174652D666F63757320613A686F7665722C0D0A626F6479202E75692D73746174652D666F63757320613A6C696E6B2C0D0A626F6479202E75';
wwv_flow_api.g_varchar2_table(1266) := '692D73746174652D666F63757320613A76697369746564207B0D0A2020636F6C6F723A20233431613566663B0D0A7D0D0A626F6479202E75692D73746174652D6163746976652C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E7569';
wwv_flow_api.g_varchar2_table(1267) := '2D73746174652D6163746976652C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233334333533363B0D0A2020636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(1268) := '66666666663B0D0A7D0D0A626F6479202E75692D73746174652D686967686C696768742C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686967686C696768742C0D0A626F6479202E75692D7769646765742D';
wwv_flow_api.g_varchar2_table(1269) := '686561646572202E75692D73746174652D686967686C69676874207B0D0A20206261636B67726F756E642D636F6C6F723A20236466663066663B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A626F6479202E75692D73746174652D686967';
wwv_flow_api.g_varchar2_table(1270) := '686C6967687420612C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686967686C6967687420612C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686967686C696768';
wwv_flow_api.g_varchar2_table(1271) := '742061207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A626F6479202E75692D73746174652D6572726F722C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F722C0D0A626F6479202E';
wwv_flow_api.g_varchar2_table(1272) := '75692D7769646765742D686561646572202E75692D73746174652D6572726F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236634343333363B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E75692D737461';
wwv_flow_api.g_varchar2_table(1273) := '74652D6572726F7220612C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F7220612C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F722061207B0D';
wwv_flow_api.g_varchar2_table(1274) := '0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E75692D73746174652D6572726F722D746578742C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F722D746578742C0D0A626F';
wwv_flow_api.g_varchar2_table(1275) := '6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F722D74657874207B0D0A2020636F6C6F723A20236634343333363B0D0A7D0D0A626F6479202E75692D646174657069636B6572207B0D0A2020626F782D73686164';
wwv_flow_api.g_varchar2_table(1276) := '6F773A20302032707820367078207267626128302C20302C20302C20302E3035293B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742C0D0A626F6479202E75692D6461746570';
wwv_flow_api.g_varchar2_table(1277) := '69636B657220746420612E75692D73746174652D64656661756C74207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A626F6479202E75692D64617465';
wwv_flow_api.g_varchar2_table(1278) := '7069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D6163746976652C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D7374617465';
wwv_flow_api.g_varchar2_table(1279) := '2D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A2020636F6C6F723A20236666666666663B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A626F6479202E75692D646174657069';
wwv_flow_api.g_varchar2_table(1280) := '636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D6163746976652E75692D73746174652D686F7665722C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D646566';
wwv_flow_api.g_varchar2_table(1281) := '61756C742E75692D73746174652D6163746976652E75692D73746174652D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664662021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666663B0D0A7D';
wwv_flow_api.g_varchar2_table(1282) := '0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D686F7665722C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D6465';
wwv_flow_api.g_varchar2_table(1283) := '6661756C742E75692D73746174652D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233264333333372021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73';
wwv_flow_api.g_varchar2_table(1284) := '746174652D64656661756C743A666F6375732C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C743A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D73686164';
wwv_flow_api.g_varchar2_table(1285) := '6F773A20302030203020317078202330303736646620696E7365742C203020302031707820327078207267626128302C203131382C203232332C20302E3235292021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D646174657069636B6572';
wwv_flow_api.g_varchar2_table(1286) := '207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D686967686C696768742C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D6869';
wwv_flow_api.g_varchar2_table(1287) := '67686C69676874207B0D0A20206261636B67726F756E642D636F6C6F723A20233334336134303B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A626F6479202E75692D646174657069636B6572207468207B0D0A2020636F6C6F723A202362';
wwv_flow_api.g_varchar2_table(1288) := '66626662663B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D68656164';
wwv_flow_api.g_varchar2_table(1289) := '65722C0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D627574746F6E70616E6520627574746F6E2C0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D6E6578742C';
wwv_flow_api.g_varchar2_table(1290) := '0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D70726576207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D646174657069636B6572202E75692D6461746570';
wwv_flow_api.g_varchar2_table(1291) := '69636B65722D707265763A6163746976652C0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D6E6578743A616374697665207B0D0A2020626F782D736861646F773A2030203270782031707820726762612830';
wwv_flow_api.g_varchar2_table(1292) := '2C20302C20302C20302E30352920696E7365742C203020302030203170782072676261283235352C203235352C203235352C20302E303132352920696E7365743B0D0A7D0D0A2E75692D6469616C6F67207B0D0A2020626F782D736861646F773A203020';
wwv_flow_api.g_varchar2_table(1293) := '3470782031367078202D347078207267626128302C20302C20302C20302E32292C20302038707820323470782030207267626128302C20302C20302C20302E3135292C203020302030203170782072676261283235352C203235352C203235352C20302E';
wwv_flow_api.g_varchar2_table(1294) := '32293B0D0A7D0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65626172207B0D0A20206261636B67726F756E642D636F6C6F723A20233139316331653B0D0A2020626F726465722D626F74746F6D3A2031707820736F';
wwv_flow_api.g_varchar2_table(1295) := '6C69642072676261283235352C203235352C203235352C20302E3035293B0D0A7D0D0A626F6479202E75692D6469616C6F672E742D4469616C6F672D706167652D2D77697A617264202E75692D6469616C6F672D7469746C65626172207B0D0A20206261';
wwv_flow_api.g_varchar2_table(1296) := '636B67726F756E642D636F6C6F723A20233232323632393B0D0A7D0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0D0A2020636F6C6F723A20236634663466343B0D0A7D0D0A626F6479202E75692D6469616C';
wwv_flow_api.g_varchar2_table(1297) := '6F67202E75692D6469616C6F672D636F6E74656E742C0D0A2E742D4469616C6F672D70616765207B0D0A20206261636B67726F756E642D636F6C6F723A20233232323632393B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E742D446961';
wwv_flow_api.g_varchar2_table(1298) := '6C6F672D2D77697A6172642E75692D6469616C6F672C0D0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722C0D0A2E742D4469616C6F672D2D77697A61726420626F6479202E7569';
wwv_flow_api.g_varchar2_table(1299) := '2D6469616C6F67202E75692D6469616C6F672D636F6E74656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20233232323632393B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A2E742D4469616C6F672D2D77697A6172642E';
wwv_flow_api.g_varchar2_table(1300) := '75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0D0A2020636F6C6F723A20236665666566653B0D0A7D0D0A626F6479202E75692D636F726E65722D616C6C207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1301) := '0A626F6479202E75692D636F726E65722D746F702C0D0A626F6479202E75692D636F726E65722D6C6566742C0D0A626F6479202E75692D636F726E65722D746C207B0D0A2020626F726465722D746F702D6C6566742D7261646975733A203270783B0D0A';
wwv_flow_api.g_varchar2_table(1302) := '7D0D0A626F6479202E75692D636F726E65722D746F702C0D0A626F6479202E75692D636F726E65722D72696768742C0D0A626F6479202E75692D636F726E65722D7472207B0D0A2020626F726465722D746F702D72696768742D7261646975733A203270';
wwv_flow_api.g_varchar2_table(1303) := '783B0D0A7D0D0A626F6479202E75692D636F726E65722D626F74746F6D2C0D0A626F6479202E75692D636F726E65722D6C6566742C0D0A626F6479202E75692D636F726E65722D626C207B0D0A2020626F726465722D626F74746F6D2D6C6566742D7261';
wwv_flow_api.g_varchar2_table(1304) := '646975733A203270783B0D0A7D0D0A626F6479202E75692D636F726E65722D626F74746F6D2C0D0A626F6479202E75692D636F726E65722D72696768742C0D0A626F6479202E75692D636F726E65722D6272207B0D0A2020626F726465722D626F74746F';
wwv_flow_api.g_varchar2_table(1305) := '6D2D72696768742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D616C6C207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D627574746F6E2E';
wwv_flow_api.g_varchar2_table(1306) := '75692D636F726E65722D746F702C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6C6566742C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746C207B0D0A2020626F726465722D746F702D6C6566742D72';
wwv_flow_api.g_varchar2_table(1307) := '61646975733A203270783B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746F702C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D72696768742C0D0A626F6479202E75692D627574746F6E2E7569';
wwv_flow_api.g_varchar2_table(1308) := '2D636F726E65722D7472207B0D0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626F74746F6D2C0D0A626F6479202E75692D627574746F6E';
wwv_flow_api.g_varchar2_table(1309) := '2E75692D636F726E65722D6C6566742C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626C207B0D0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D627574';
wwv_flow_api.g_varchar2_table(1310) := '746F6E2E75692D636F726E65722D626F74746F6D2C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D72696768742C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6272207B0D0A2020626F726465722D626F';
wwv_flow_api.g_varchar2_table(1311) := '74746F6D2D72696768742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722D636C6F7365207B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1312) := '626F6479202E75692D6469616C6F67202E75692D6469616C6F672D627574746F6E70616E65207B0D0A2020626F726465722D746F702D636F6C6F723A20233334336134303B0D0A7D0D0A2E752D7761726E696E67207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1313) := '2D636F6C6F723A20234642434534412021696D706F7274616E743B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E752D7761726E696E672D74657874207B0D0A2020636F6C6F723A20234642434534412021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(1314) := '7D0D0A2E752D7761726E696E672D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20234642434534412021696D706F7274616E743B0D0A7D0D0A2E752D7761726E696E672D626F72646572207B0D0A2020626F726465722D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1315) := '20234642434534412021696D706F7274616E743B0D0A7D0D0A2E752D73756363657373207B0D0A20206261636B67726F756E642D636F6C6F723A20233342414132432021696D706F7274616E743B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1316) := '752D737563636573732D74657874207B0D0A2020636F6C6F723A20233342414132432021696D706F7274616E743B0D0A7D0D0A2E752D737563636573732D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233342414132432021696D70';
wwv_flow_api.g_varchar2_table(1317) := '6F7274616E743B0D0A7D0D0A2E752D737563636573732D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233342414132432021696D706F7274616E743B0D0A7D0D0A2E752D64616E676572207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(1318) := '6F6C6F723A20236634343333362021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D64616E6765722D74657874207B0D0A2020636F6C6F723A20236634343333362021696D706F7274616E743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1319) := '2E752D64616E6765722D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236634343333362021696D706F7274616E743B0D0A7D0D0A2E752D64616E6765722D626F72646572207B0D0A2020626F726465722D636F6C6F723A2023663434';
wwv_flow_api.g_varchar2_table(1320) := '3333362021696D706F7274616E743B0D0A7D0D0A2E752D696E666F207B0D0A20206261636B67726F756E642D636F6C6F723A20233361613266612021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D696E66';
wwv_flow_api.g_varchar2_table(1321) := '6F2D74657874207B0D0A2020636F6C6F723A20233361613266612021696D706F7274616E743B0D0A7D0D0A2E752D696E666F2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233361613266612021696D706F7274616E743B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1322) := '0A2E752D696E666F2D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233361613266612021696D706F7274616E743B0D0A7D0D0A2E752D686F74207B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664662021696D';
wwv_flow_api.g_varchar2_table(1323) := '706F7274616E743B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D686F742D74657874207B0D0A2020636F6C6F723A20233030373664662021696D706F7274616E743B0D0A7D0D0A2E752D686F742D6267207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(1324) := '726F756E642D636F6C6F723A20233030373664662021696D706F7274616E743B0D0A7D0D0A2E752D686F742D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233030373664662021696D706F7274616E743B0D0A7D0D0A2E752D6E6F72';
wwv_flow_api.g_varchar2_table(1325) := '6D616C207B0D0A20206261636B67726F756E642D636F6C6F723A20233262333033352021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D6E6F726D616C2D74657874207B0D0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(1326) := '666666662021696D706F7274616E743B0D0A7D0D0A2E752D6E6F726D616C2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D6E6F726D616C2D626F72646572207B0D';
wwv_flow_api.g_varchar2_table(1327) := '0A2020626F726465722D636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(1328) := '6C6F723A20233330394644423B0D0A202066696C6C3A20233330394644423B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D62672C0D';
wwv_flow_api.g_varchar2_table(1329) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233330394644423B0D0A7D0D0A2E752D636F6C6F7273203E';
wwv_flow_api.g_varchar2_table(1330) := '203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233330394644';
wwv_flow_api.g_varchar2_table(1331) := '423B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D626F72646572';
wwv_flow_api.g_varchar2_table(1332) := '207B0D0A2020626F726465722D636F6C6F723A20233330394644423B0D0A20207374726F6B653A20233330394644423B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F72207B0D0A202062';
wwv_flow_api.g_varchar2_table(1333) := '61636B67726F756E642D636F6C6F723A20233133423643463B0D0A202066696C6C3A20233133423643463B0D0A2020636F6C6F723A20236534663966643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E';
wwv_flow_api.g_varchar2_table(1334) := '752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233133423643463B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1335) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D74657874207B0D0A202063';
wwv_flow_api.g_varchar2_table(1336) := '6F6C6F723A20233133423643463B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D';
wwv_flow_api.g_varchar2_table(1337) := '636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233133423643463B0D0A20207374726F6B653A20233133423643463B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D';
wwv_flow_api.g_varchar2_table(1338) := '636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233245424642433B0D0A202066696C6C3A20233245424642433B0D0A2020636F6C6F723A20236630666366623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1339) := '642834356E202B203329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1340) := '233245424642433B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1341) := '2D74657874207B0D0A2020636F6C6F723A20233245424642433B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1342) := '34356E202B203329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233245424642433B0D0A20207374726F6B653A20233245424642433B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1343) := '34356E202B203429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233343414638353B0D0A202066696C6C3A20233343414638353B0D0A2020636F6C6F723A20236630666166363B0D0A7D0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1344) := '203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1345) := '6F756E642D636F6C6F723A20233343414638353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_api.g_varchar2_table(1346) := '203429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233343414638353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E';
wwv_flow_api.g_varchar2_table(1347) := '203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233343414638353B0D0A20207374726F6B653A20233343414638353B0D0A7D0D0A2E752D636F6C6F7273203E';
wwv_flow_api.g_varchar2_table(1348) := '203A6E74682D6368696C642834356E202B203529202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233831424235463B0D0A202066696C6C3A20233831424235463B0D0A2020636F6C6F723A20236666666666663B0D0A';
wwv_flow_api.g_varchar2_table(1349) := '7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D6261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1350) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20233831424235463B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E7468';
wwv_flow_api.g_varchar2_table(1351) := '2D6368696C642834356E202B203529202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233831424235463B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D62642C0D';
wwv_flow_api.g_varchar2_table(1352) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233831424235463B0D0A20207374726F6B653A20233831424235463B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1353) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20234444444535333B0D0A202066696C6C3A20234444444535333B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1354) := '3A20233261326130383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1355) := '722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20234444444535333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D7478742C0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1356) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20234444444535333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E';
wwv_flow_api.g_varchar2_table(1357) := '752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20234444444535333B0D0A20207374726F6B653A20';
wwv_flow_api.g_varchar2_table(1358) := '234444444535333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20234642434534413B0D0A202066696C6C3A202346424345';
wwv_flow_api.g_varchar2_table(1359) := '34413B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_api.g_varchar2_table(1360) := '2B203729202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20234642434534413B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1361) := '722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20234642434534413B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1362) := '642834356E202B203729202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20234642434534413B';
wwv_flow_api.g_varchar2_table(1363) := '0D0A20207374726F6B653A20234642434534413B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20234544383133453B0D0A20';
wwv_flow_api.g_varchar2_table(1364) := '2066696C6C3A20234544383133453B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(1365) := '682D6368696C642834356E202B203829202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20234544383133453B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_api.g_varchar2_table(1366) := '2B203829202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20234544383133453B0D0A7D0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1367) := '203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(1368) := '6F723A20234544383133453B0D0A20207374726F6B653A20234544383133453B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1369) := '20234539354235343B0D0A202066696C6C3A20234539354235343B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D62672C0D0A2E752D';
wwv_flow_api.g_varchar2_table(1370) := '636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20234539354235343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(1371) := '682D6368696C642834356E202B203929202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20234539354235343B0D0A';
wwv_flow_api.g_varchar2_table(1372) := '7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D626F72646572207B0D0A';
wwv_flow_api.g_varchar2_table(1373) := '2020626F726465722D636F6C6F723A20234539354235343B0D0A20207374726F6B653A20234539354235343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F72207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1374) := '67726F756E642D636F6C6F723A20234538354438383B0D0A202066696C6C3A20234538354438383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D';
wwv_flow_api.g_varchar2_table(1375) := '636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20234538354438383B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1376) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D74657874207B0D0A2020';
wwv_flow_api.g_varchar2_table(1377) := '636F6C6F723A20234538354438383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2031302920';
wwv_flow_api.g_varchar2_table(1378) := '2E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20234538354438383B0D0A20207374726F6B653A20234538354438383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129';
wwv_flow_api.g_varchar2_table(1379) := '202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20234341353839443B0D0A202066696C6C3A20234341353839443B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D';
wwv_flow_api.g_varchar2_table(1380) := '6368696C642834356E202B20313129202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(1381) := '6F6C6F723A20234341353839443B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2031312920';
wwv_flow_api.g_varchar2_table(1382) := '2E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20234341353839443B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_api.g_varchar2_table(1383) := '74682D6368696C642834356E202B20313129202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20234341353839443B0D0A20207374726F6B653A20234341353839443B0D0A7D0D0A2E752D636F6C6F7273203E203A';
wwv_flow_api.g_varchar2_table(1384) := '6E74682D6368696C642834356E202B20313229202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233835344539423B0D0A202066696C6C3A20233835344539423B0D0A2020636F6C6F723A20236636663066383B0D0A7D';
wwv_flow_api.g_varchar2_table(1385) := '0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D6261636B67726F756E';
wwv_flow_api.g_varchar2_table(1386) := '64207B0D0A20206261636B67726F756E642D636F6C6F723A20233835344539423B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_api.g_varchar2_table(1387) := '74682D6368696C642834356E202B20313229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233835344539423B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1388) := '62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233835344539423B0D0A20207374726F6B653A2023383534453942';
wwv_flow_api.g_varchar2_table(1389) := '3B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233541363841443B0D0A202066696C6C3A20233541363841443B0D0A20';
wwv_flow_api.g_varchar2_table(1390) := '20636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329';
wwv_flow_api.g_varchar2_table(1391) := '202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233541363841443B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D74';
wwv_flow_api.g_varchar2_table(1392) := '78742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233541363841443B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1393) := '34356E202B20313329202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233541363841443B';
wwv_flow_api.g_varchar2_table(1394) := '0D0A20207374726F6B653A20233541363841443B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20234146424143353B0D0A';
wwv_flow_api.g_varchar2_table(1395) := '202066696C6C3A20234146424143353B0D0A2020636F6C6F723A20233331336134343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A';
wwv_flow_api.g_varchar2_table(1396) := '6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20234146424143353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_api.g_varchar2_table(1397) := '356E202B20313429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20234146424143353B0D0A7D0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1398) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D626F72646572207B0D0A2020626F72';
wwv_flow_api.g_varchar2_table(1399) := '6465722D636F6C6F723A20234146424143353B0D0A20207374726F6B653A20234146424143353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F72207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1400) := '642D636F6C6F723A20233645383539383B0D0A202066696C6C3A20233645383539383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1401) := '2D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233645383539383B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1402) := '6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D74657874207B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1403) := '3A20233645383539383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F';
wwv_flow_api.g_varchar2_table(1404) := '6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233645383539383B0D0A20207374726F6B653A20233645383539383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D63';
wwv_flow_api.g_varchar2_table(1405) := '6F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233539623265323B0D0A202066696C6C3A20233539623265323B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1406) := '2834356E202B20313629202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1407) := '20233539623265323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F';
wwv_flow_api.g_varchar2_table(1408) := '6C6F722D74657874207B0D0A2020636F6C6F723A20233539623265323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_api.g_varchar2_table(1409) := '696C642834356E202B20313629202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233539623265323B0D0A20207374726F6B653A20233539623265323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D63';
wwv_flow_api.g_varchar2_table(1410) := '68696C642834356E202B20313729202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564393B0D0A202066696C6C3A20233432633564393B0D0A2020636F6C6F723A20233035313531373B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1411) := '636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D6261636B67726F756E64207B0D0A';
wwv_flow_api.g_varchar2_table(1412) := '20206261636B67726F756E642D636F6C6F723A20233432633564393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_api.g_varchar2_table(1413) := '696C642834356E202B20313729202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233432633564393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D62642C0D0A';
wwv_flow_api.g_varchar2_table(1414) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233432633564393B0D0A20207374726F6B653A20233432633564393B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1415) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363393B0D0A202066696C6C3A20233538636363393B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(1416) := '723A20233039316331633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D63';
wwv_flow_api.g_varchar2_table(1417) := '6F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D7478742C0D0A';
wwv_flow_api.g_varchar2_table(1418) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233538636363393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_api.g_varchar2_table(1419) := '20313829202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233538636363393B0D0A202073';
wwv_flow_api.g_varchar2_table(1420) := '74726F6B653A20233538636363393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233633626639643B0D0A202066696C';
wwv_flow_api.g_varchar2_table(1421) := '6C3A20233633626639643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D63';
wwv_flow_api.g_varchar2_table(1422) := '68696C642834356E202B20313929202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233633626639643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_api.g_varchar2_table(1423) := '313929202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233633626639643B0D0A7D0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1424) := '203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(1425) := '6F6C6F723A20233633626639643B0D0A20207374726F6B653A20233633626639643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1426) := '6F723A20233961633937663B0D0A202066696C6C3A20233961633937663B0D0A2020636F6C6F723A20233230333331363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D62672C0D';
wwv_flow_api.g_varchar2_table(1427) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937663B0D0A7D0D0A2E752D636F6C6F727320';
wwv_flow_api.g_varchar2_table(1428) := '3E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233961';
wwv_flow_api.g_varchar2_table(1429) := '633937663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D62';
wwv_flow_api.g_varchar2_table(1430) := '6F72646572207B0D0A2020626F726465722D636F6C6F723A20233961633937663B0D0A20207374726F6B653A20233961633937663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F7220';
wwv_flow_api.g_varchar2_table(1431) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20236534653537353B0D0A202066696C6C3A20236534653537353B0D0A2020636F6C6F723A20233463346330663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_api.g_varchar2_table(1432) := '2B20323129202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A2023653465';
wwv_flow_api.g_varchar2_table(1433) := '3537353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D74';
wwv_flow_api.g_varchar2_table(1434) := '657874207B0D0A2020636F6C6F723A20236534653537353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_api.g_varchar2_table(1435) := '356E202B20323129202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236534653537353B0D0A20207374726F6B653A20236534653537353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1436) := '34356E202B20323229202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836653B0D0A202066696C6C3A20236663643836653B0D0A2020636F6C6F723A20233639346630323B0D0A7D0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1437) := '73203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D6261636B67726F756E64207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(1438) := '6B67726F756E642D636F6C6F723A20236663643836653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_api.g_varchar2_table(1439) := '356E202B20323229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236663643836653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D62642C0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1440) := '6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236663643836653B0D0A20207374726F6B653A20236663643836653B0D0A7D0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1441) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136353B0D0A202066696C6C3A20236631396136353B0D0A2020636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(1442) := '66666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1443) := '6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D7478742C0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1444) := '6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236631396136353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2032332920';
wwv_flow_api.g_varchar2_table(1445) := '2E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236631396136353B0D0A20207374726F6B65';
wwv_flow_api.g_varchar2_table(1446) := '3A20236631396136353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337363B0D0A202066696C6C3A202365';
wwv_flow_api.g_varchar2_table(1447) := '64376337363B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1448) := '34356E202B20323429202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E';
wwv_flow_api.g_varchar2_table(1449) := '752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236564376337363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_api.g_varchar2_table(1450) := '74682D6368696C642834356E202B20323429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1451) := '20236564376337363B0D0A20207374726F6B653A20236564376337363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1452) := '6564376461303B0D0A202066696C6C3A20236564376461303B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D62672C0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1453) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376461303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(1454) := '682D6368696C642834356E202B20323529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236564376461303B';
wwv_flow_api.g_varchar2_table(1455) := '0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D626F72646572';
wwv_flow_api.g_varchar2_table(1456) := '207B0D0A2020626F726465722D636F6C6F723A20236564376461303B0D0A20207374726F6B653A20236564376461303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F72207B0D0A2020';
wwv_flow_api.g_varchar2_table(1457) := '6261636B67726F756E642D636F6C6F723A20236435373962313B0D0A202066696C6C3A20236435373962313B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629';
wwv_flow_api.g_varchar2_table(1458) := '202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373962313B0D';
wwv_flow_api.g_varchar2_table(1459) := '0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D74657874207B';
wwv_flow_api.g_varchar2_table(1460) := '0D0A2020636F6C6F723A20236435373962313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_api.g_varchar2_table(1461) := '323629202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236435373962313B0D0A20207374726F6B653A20236435373962313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_api.g_varchar2_table(1462) := '20323729202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161663B0D0A202066696C6C3A20233964373161663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A';
wwv_flow_api.g_varchar2_table(1463) := '6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1464) := '6E642D636F6C6F723A20233964373161663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_api.g_varchar2_table(1465) := '323729202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233964373161663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D62642C0D0A2E752D636F6C6F727320';
wwv_flow_api.g_varchar2_table(1466) := '3E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233964373161663B0D0A20207374726F6B653A20233964373161663B0D0A7D0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1467) := '203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233762383662643B0D0A202066696C6C3A20233762383662643B0D0A2020636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(1468) := '3B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D6261636B67';
wwv_flow_api.g_varchar2_table(1469) := '726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233762383662643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F727320';
wwv_flow_api.g_varchar2_table(1470) := '3E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233762383662643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F';
wwv_flow_api.g_varchar2_table(1471) := '6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233762383662643B0D0A20207374726F6B653A20233762';
wwv_flow_api.g_varchar2_table(1472) := '383662643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864313B0D0A202066696C6C3A2023626663386431';
wwv_flow_api.g_varchar2_table(1473) := '3B0D0A2020636F6C6F723A20233364343835343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_api.g_varchar2_table(1474) := '20323929202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C';
wwv_flow_api.g_varchar2_table(1475) := '6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236266633864313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_api.g_varchar2_table(1476) := '696C642834356E202B20323929202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A2023626663';
wwv_flow_api.g_varchar2_table(1477) := '3864313B0D0A20207374726F6B653A20236266633864313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461';
wwv_flow_api.g_varchar2_table(1478) := '643B0D0A202066696C6C3A20233862396461643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1479) := '203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D636869';
wwv_flow_api.g_varchar2_table(1480) := '6C642834356E202B20333029202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233862396461643B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1481) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D626F72646572207B0D0A20';
wwv_flow_api.g_varchar2_table(1482) := '20626F726465722D636F6C6F723A20233862396461643B0D0A20207374726F6B653A20233862396461643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F72207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(1483) := '726F756E642D636F6C6F723A20233139386363613B0D0A202066696C6C3A20233139386363613B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D63';
wwv_flow_api.g_varchar2_table(1484) := '6F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233139386363613B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1485) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D74657874207B0D0A202063';
wwv_flow_api.g_varchar2_table(1486) := '6F6C6F723A20233139386363613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E';
wwv_flow_api.g_varchar2_table(1487) := '752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233139386363613B0D0A20207374726F6B653A20233139386363613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2033322920';
wwv_flow_api.g_varchar2_table(1488) := '2E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233032613562653B0D0A202066696C6C3A20233032613562653B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D63';
wwv_flow_api.g_varchar2_table(1489) := '68696C642834356E202B20333229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(1490) := '6C6F723A20233032613562653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E';
wwv_flow_api.g_varchar2_table(1491) := '752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233032613562653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(1492) := '682D6368696C642834356E202B20333229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233032613562653B0D0A20207374726F6B653A20233032613562653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_api.g_varchar2_table(1493) := '74682D6368696C642834356E202B20333329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233138623161653B0D0A202066696C6C3A20233138623161653B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1494) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D6261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1495) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20233138623161653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(1496) := '682D6368696C642834356E202B20333329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233138623161653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D62';
wwv_flow_api.g_varchar2_table(1497) := '642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233138623161653B0D0A20207374726F6B653A20233138623161653B';
wwv_flow_api.g_varchar2_table(1498) := '0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233234613437353B0D0A202066696C6C3A20233234613437353B0D0A2020';
wwv_flow_api.g_varchar2_table(1499) := '636F6C6F723A20236566666266373B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2033342920';
wwv_flow_api.g_varchar2_table(1500) := '2E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233234613437353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D7478';
null;
end;
/
begin
wwv_flow_api.g_varchar2_table(1501) := '742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233234613437353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_api.g_varchar2_table(1502) := '356E202B20333429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233234613437353B0D';
wwv_flow_api.g_varchar2_table(1503) := '0A20207374726F6B653A20233234613437353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233661616434323B0D0A20';
wwv_flow_api.g_varchar2_table(1504) := '2066696C6C3A20233661616434323B0D0A2020636F6C6F723A20233063313530363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_api.g_varchar2_table(1505) := '74682D6368696C642834356E202B20333529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233661616434323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64283435';
wwv_flow_api.g_varchar2_table(1506) := '6E202B20333529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233661616434323B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1507) := '6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D626F72646572207B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(1508) := '65722D636F6C6F723A20233661616434323B0D0A20207374726F6B653A20233661616434323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F72207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1509) := '2D636F6C6F723A20236339636133393B0D0A202066696C6C3A20236339636133393B0D0A2020636F6C6F723A20233264326530343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1510) := '62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236339636133393B0D0A7D0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1511) := '6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1512) := '20236339636133393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C';
wwv_flow_api.g_varchar2_table(1513) := '6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236339636133393B0D0A20207374726F6B653A20236339636133393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F';
wwv_flow_api.g_varchar2_table(1514) := '6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236439623133623B0D0A202066696C6C3A20236439623133623B0D0A2020636F6C6F723A20233436333430303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1515) := '34356E202B20333729202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1516) := '236439623133623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C';
wwv_flow_api.g_varchar2_table(1517) := '6F722D74657874207B0D0A2020636F6C6F723A20236439623133623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D636869';
wwv_flow_api.g_varchar2_table(1518) := '6C642834356E202B20333729202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236439623133623B0D0A20207374726F6B653A20236439623133623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_api.g_varchar2_table(1519) := '696C642834356E202B20333829202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236437366132373B0D0A202066696C6C3A20236437366132373B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1520) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D6261636B67726F756E64207B0D0A20';
wwv_flow_api.g_varchar2_table(1521) := '206261636B67726F756E642D636F6C6F723A20236437366132373B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D636869';
wwv_flow_api.g_varchar2_table(1522) := '6C642834356E202B20333829202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236437366132373B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D62642C0D0A2E';
wwv_flow_api.g_varchar2_table(1523) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236437366132373B0D0A20207374726F6B653A20236437366132373B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1524) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236432343233623B0D0A202066696C6C3A20236432343233623B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1525) := '3A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F';
wwv_flow_api.g_varchar2_table(1526) := '6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236432343233623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D7478742C0D0A2E';
wwv_flow_api.g_varchar2_table(1527) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236432343233623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_api.g_varchar2_table(1528) := '333929202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236432343233623B0D0A20207374';
wwv_flow_api.g_varchar2_table(1529) := '726F6B653A20236432343233623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236431343336663B0D0A202066696C6C';
wwv_flow_api.g_varchar2_table(1530) := '3A20236431343336663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_api.g_varchar2_table(1531) := '696C642834356E202B20343029202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236431343336663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2034';
wwv_flow_api.g_varchar2_table(1532) := '3029202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236431343336663B0D0A7D0D0A2E752D636F6C6F727320';
wwv_flow_api.g_varchar2_table(1533) := '3E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F';
wwv_flow_api.g_varchar2_table(1534) := '6C6F723A20236431343336663B0D0A20207374726F6B653A20236431343336663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1535) := '723A20236261336438383B0D0A202066696C6C3A20236261336438383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D62672C0D0A';
wwv_flow_api.g_varchar2_table(1536) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236261336438383B0D0A7D0D0A2E752D636F6C6F7273203E';
wwv_flow_api.g_varchar2_table(1537) := '203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A2023626133';
wwv_flow_api.g_varchar2_table(1538) := '6438383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D626F';
wwv_flow_api.g_varchar2_table(1539) := '72646572207B0D0A2020626F726465722D636F6C6F723A20236261336438383B0D0A20207374726F6B653A20236261336438383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F72207B';
wwv_flow_api.g_varchar2_table(1540) := '0D0A20206261636B67726F756E642D636F6C6F723A20233737333339333B0D0A202066696C6C3A20233737333339333B0D0A2020636F6C6F723A20236636656666393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_api.g_varchar2_table(1541) := '20343229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A202337373333';
wwv_flow_api.g_varchar2_table(1542) := '39333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D7465';
wwv_flow_api.g_varchar2_table(1543) := '7874207B0D0A2020636F6C6F723A20233737333339333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64283435';
wwv_flow_api.g_varchar2_table(1544) := '6E202B20343229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233737333339333B0D0A20207374726F6B653A20233737333339333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_api.g_varchar2_table(1545) := '356E202B20343329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233364346561333B0D0A202066696C6C3A20233364346561333B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1546) := '203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1547) := '67726F756E642D636F6C6F723A20233364346561333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64283435';
wwv_flow_api.g_varchar2_table(1548) := '6E202B20343329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233364346561333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D62642C0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1549) := '6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233364346561333B0D0A20207374726F6B653A20233364346561333B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1550) := '6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233863396562303B0D0A202066696C6C3A20233863396562303B0D0A2020636F6C6F723A20233238';
wwv_flow_api.g_varchar2_table(1551) := '336134643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D62';
wwv_flow_api.g_varchar2_table(1552) := '61636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233863396562303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D7478742C0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1553) := '6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233863396562303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E';
wwv_flow_api.g_varchar2_table(1554) := '752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233863396562303B0D0A20207374726F6B653A';
wwv_flow_api.g_varchar2_table(1555) := '20233863396562303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233465373339313B0D0A202066696C6C3A20233465';
wwv_flow_api.g_varchar2_table(1556) := '373339313B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_api.g_varchar2_table(1557) := '356E202B20343529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233465373339313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E75';
wwv_flow_api.g_varchar2_table(1558) := '2D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233465373339313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(1559) := '682D6368696C642834356E202B20343529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1560) := '233465373339313B0D0A20207374726F6B653A20233465373339313B0D0A7D0D0A2E752D636F6C6F722D31207B0D0A20206261636B67726F756E642D636F6C6F723A20233330394644422021696D706F7274616E743B0D0A202066696C6C3A2023333039';
wwv_flow_api.g_varchar2_table(1561) := '4644422021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D312D62672C0D0A2E752D636F6C6F722D312D6261636B67726F756E64207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1562) := '756E642D636F6C6F723A20233330394644422021696D706F7274616E743B0D0A202066696C6C3A20233330394644422021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D312D7478742C0D0A2E752D636F6C6F722D312D74657874207B0D0A';
wwv_flow_api.g_varchar2_table(1563) := '2020636F6C6F723A20233330394644422021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D312D62642C0D0A2E752D636F6C6F722D312D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233330394644422021696D706F72';
wwv_flow_api.g_varchar2_table(1564) := '74616E743B0D0A20207374726F6B653A20233330394644422021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32207B0D0A20206261636B67726F756E642D636F6C6F723A20233133423643462021696D706F7274616E743B0D0A20206669';
wwv_flow_api.g_varchar2_table(1565) := '6C6C3A20233133423643462021696D706F7274616E743B0D0A2020636F6C6F723A20236534663966642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D322D62672C0D0A2E752D636F6C6F722D322D6261636B67726F756E64207B0D0A20';
wwv_flow_api.g_varchar2_table(1566) := '206261636B67726F756E642D636F6C6F723A20233133423643462021696D706F7274616E743B0D0A202066696C6C3A20233133423643462021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D322D7478742C0D0A2E752D636F6C6F722D322D';
wwv_flow_api.g_varchar2_table(1567) := '74657874207B0D0A2020636F6C6F723A20233133423643462021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D322D62642C0D0A2E752D636F6C6F722D322D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233133423643';
wwv_flow_api.g_varchar2_table(1568) := '462021696D706F7274616E743B0D0A20207374726F6B653A20233133423643462021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33207B0D0A20206261636B67726F756E642D636F6C6F723A20233245424642432021696D706F7274616E';
wwv_flow_api.g_varchar2_table(1569) := '743B0D0A202066696C6C3A20233245424642432021696D706F7274616E743B0D0A2020636F6C6F723A20236630666366622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D332D62672C0D0A2E752D636F6C6F722D332D6261636B67726F';
wwv_flow_api.g_varchar2_table(1570) := '756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233245424642432021696D706F7274616E743B0D0A202066696C6C3A20233245424642432021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D332D7478742C0D0A2E752D';
wwv_flow_api.g_varchar2_table(1571) := '636F6C6F722D332D74657874207B0D0A2020636F6C6F723A20233245424642432021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D332D62642C0D0A2E752D636F6C6F722D332D626F72646572207B0D0A2020626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(1572) := '3A20233245424642432021696D706F7274616E743B0D0A20207374726F6B653A20233245424642432021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34207B0D0A20206261636B67726F756E642D636F6C6F723A20233343414638352021';
wwv_flow_api.g_varchar2_table(1573) := '696D706F7274616E743B0D0A202066696C6C3A20233343414638352021696D706F7274616E743B0D0A2020636F6C6F723A20236630666166362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D342D62672C0D0A2E752D636F6C6F722D34';
wwv_flow_api.g_varchar2_table(1574) := '2D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233343414638352021696D706F7274616E743B0D0A202066696C6C3A20233343414638352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D342D74';
wwv_flow_api.g_varchar2_table(1575) := '78742C0D0A2E752D636F6C6F722D342D74657874207B0D0A2020636F6C6F723A20233343414638352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D342D62642C0D0A2E752D636F6C6F722D342D626F72646572207B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(1576) := '65722D636F6C6F723A20233343414638352021696D706F7274616E743B0D0A20207374726F6B653A20233343414638352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D35207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1577) := '3831424235462021696D706F7274616E743B0D0A202066696C6C3A20233831424235462021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D352D62672C0D0A2E75';
wwv_flow_api.g_varchar2_table(1578) := '2D636F6C6F722D352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233831424235462021696D706F7274616E743B0D0A202066696C6C3A20233831424235462021696D706F7274616E743B0D0A7D0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1579) := '6F6C6F722D352D7478742C0D0A2E752D636F6C6F722D352D74657874207B0D0A2020636F6C6F723A20233831424235462021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D352D62642C0D0A2E752D636F6C6F722D352D626F72646572207B';
wwv_flow_api.g_varchar2_table(1580) := '0D0A2020626F726465722D636F6C6F723A20233831424235462021696D706F7274616E743B0D0A20207374726F6B653A20233831424235462021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D36207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(1581) := '636F6C6F723A20234444444535332021696D706F7274616E743B0D0A202066696C6C3A20234444444535332021696D706F7274616E743B0D0A2020636F6C6F723A20233261326130382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D36';
wwv_flow_api.g_varchar2_table(1582) := '2D62672C0D0A2E752D636F6C6F722D362D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20234444444535332021696D706F7274616E743B0D0A202066696C6C3A20234444444535332021696D706F7274616E743B0D';
wwv_flow_api.g_varchar2_table(1583) := '0A7D0D0A2E752D636F6C6F722D362D7478742C0D0A2E752D636F6C6F722D362D74657874207B0D0A2020636F6C6F723A20234444444535332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D362D62642C0D0A2E752D636F6C6F722D362D';
wwv_flow_api.g_varchar2_table(1584) := '626F72646572207B0D0A2020626F726465722D636F6C6F723A20234444444535332021696D706F7274616E743B0D0A20207374726F6B653A20234444444535332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D37207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(1585) := '6B67726F756E642D636F6C6F723A20234642434534412021696D706F7274616E743B0D0A202066696C6C3A20234642434534412021696D706F7274616E743B0D0A2020636F6C6F723A20233434333330322021696D706F7274616E743B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1586) := '2D636F6C6F722D372D62672C0D0A2E752D636F6C6F722D372D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20234642434534412021696D706F7274616E743B0D0A202066696C6C3A20234642434534412021696D70';
wwv_flow_api.g_varchar2_table(1587) := '6F7274616E743B0D0A7D0D0A2E752D636F6C6F722D372D7478742C0D0A2E752D636F6C6F722D372D74657874207B0D0A2020636F6C6F723A20234642434534412021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D372D62642C0D0A2E752D';
wwv_flow_api.g_varchar2_table(1588) := '636F6C6F722D372D626F72646572207B0D0A2020626F726465722D636F6C6F723A20234642434534412021696D706F7274616E743B0D0A20207374726F6B653A20234642434534412021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3820';
wwv_flow_api.g_varchar2_table(1589) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20234544383133452021696D706F7274616E743B0D0A202066696C6C3A20234544383133452021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E74';
wwv_flow_api.g_varchar2_table(1590) := '3B0D0A7D0D0A2E752D636F6C6F722D382D62672C0D0A2E752D636F6C6F722D382D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20234544383133452021696D706F7274616E743B0D0A202066696C6C3A2023454438';
wwv_flow_api.g_varchar2_table(1591) := '3133452021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D382D7478742C0D0A2E752D636F6C6F722D382D74657874207B0D0A2020636F6C6F723A20234544383133452021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D382D';
wwv_flow_api.g_varchar2_table(1592) := '62642C0D0A2E752D636F6C6F722D382D626F72646572207B0D0A2020626F726465722D636F6C6F723A20234544383133452021696D706F7274616E743B0D0A20207374726F6B653A20234544383133452021696D706F7274616E743B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1593) := '636F6C6F722D39207B0D0A20206261636B67726F756E642D636F6C6F723A20234539354235342021696D706F7274616E743B0D0A202066696C6C3A20234539354235342021696D706F7274616E743B0D0A2020636F6C6F723A2023666666666666202169';
wwv_flow_api.g_varchar2_table(1594) := '6D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D392D62672C0D0A2E752D636F6C6F722D392D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20234539354235342021696D706F7274616E743B0D0A20206669';
wwv_flow_api.g_varchar2_table(1595) := '6C6C3A20234539354235342021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D392D7478742C0D0A2E752D636F6C6F722D392D74657874207B0D0A2020636F6C6F723A20234539354235342021696D706F7274616E743B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1596) := '636F6C6F722D392D62642C0D0A2E752D636F6C6F722D392D626F72646572207B0D0A2020626F726465722D636F6C6F723A20234539354235342021696D706F7274616E743B0D0A20207374726F6B653A20234539354235342021696D706F7274616E743B';
wwv_flow_api.g_varchar2_table(1597) := '0D0A7D0D0A2E752D636F6C6F722D3130207B0D0A20206261636B67726F756E642D636F6C6F723A20234538354438382021696D706F7274616E743B0D0A202066696C6C3A20234538354438382021696D706F7274616E743B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1598) := '6666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31302D62672C0D0A2E752D636F6C6F722D31302D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20234538354438382021696D706F72';
wwv_flow_api.g_varchar2_table(1599) := '74616E743B0D0A202066696C6C3A20234538354438382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31302D7478742C0D0A2E752D636F6C6F722D31302D74657874207B0D0A2020636F6C6F723A20234538354438382021696D706F72';
wwv_flow_api.g_varchar2_table(1600) := '74616E743B0D0A7D0D0A2E752D636F6C6F722D31302D62642C0D0A2E752D636F6C6F722D31302D626F72646572207B0D0A2020626F726465722D636F6C6F723A20234538354438382021696D706F7274616E743B0D0A20207374726F6B653A2023453835';
wwv_flow_api.g_varchar2_table(1601) := '4438382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3131207B0D0A20206261636B67726F756E642D636F6C6F723A20234341353839442021696D706F7274616E743B0D0A202066696C6C3A20234341353839442021696D706F727461';
wwv_flow_api.g_varchar2_table(1602) := '6E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31312D62672C0D0A2E752D636F6C6F722D31312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1603) := '20234341353839442021696D706F7274616E743B0D0A202066696C6C3A20234341353839442021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31312D7478742C0D0A2E752D636F6C6F722D31312D74657874207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1604) := '20234341353839442021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31312D62642C0D0A2E752D636F6C6F722D31312D626F72646572207B0D0A2020626F726465722D636F6C6F723A20234341353839442021696D706F7274616E743B0D';
wwv_flow_api.g_varchar2_table(1605) := '0A20207374726F6B653A20234341353839442021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3132207B0D0A20206261636B67726F756E642D636F6C6F723A20233835344539422021696D706F7274616E743B0D0A202066696C6C3A2023';
wwv_flow_api.g_varchar2_table(1606) := '3835344539422021696D706F7274616E743B0D0A2020636F6C6F723A20236636663066382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31322D62672C0D0A2E752D636F6C6F722D31322D6261636B67726F756E64207B0D0A20206261';
wwv_flow_api.g_varchar2_table(1607) := '636B67726F756E642D636F6C6F723A20233835344539422021696D706F7274616E743B0D0A202066696C6C3A20233835344539422021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31322D7478742C0D0A2E752D636F6C6F722D31322D74';
wwv_flow_api.g_varchar2_table(1608) := '657874207B0D0A2020636F6C6F723A20233835344539422021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31322D62642C0D0A2E752D636F6C6F722D31322D626F72646572207B0D0A2020626F726465722D636F6C6F723A202338353445';
wwv_flow_api.g_varchar2_table(1609) := '39422021696D706F7274616E743B0D0A20207374726F6B653A20233835344539422021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3133207B0D0A20206261636B67726F756E642D636F6C6F723A20233541363841442021696D706F7274';
wwv_flow_api.g_varchar2_table(1610) := '616E743B0D0A202066696C6C3A20233541363841442021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31332D62672C0D0A2E752D636F6C6F722D31332D626163';
wwv_flow_api.g_varchar2_table(1611) := '6B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233541363841442021696D706F7274616E743B0D0A202066696C6C3A20233541363841442021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31332D7478742C';
wwv_flow_api.g_varchar2_table(1612) := '0D0A2E752D636F6C6F722D31332D74657874207B0D0A2020636F6C6F723A20233541363841442021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31332D62642C0D0A2E752D636F6C6F722D31332D626F72646572207B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(1613) := '65722D636F6C6F723A20233541363841442021696D706F7274616E743B0D0A20207374726F6B653A20233541363841442021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3134207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1614) := '234146424143352021696D706F7274616E743B0D0A202066696C6C3A20234146424143352021696D706F7274616E743B0D0A2020636F6C6F723A20233331336134342021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31342D62672C0D0A';
wwv_flow_api.g_varchar2_table(1615) := '2E752D636F6C6F722D31342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20234146424143352021696D706F7274616E743B0D0A202066696C6C3A20234146424143352021696D706F7274616E743B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1616) := '752D636F6C6F722D31342D7478742C0D0A2E752D636F6C6F722D31342D74657874207B0D0A2020636F6C6F723A20234146424143352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31342D62642C0D0A2E752D636F6C6F722D31342D62';
wwv_flow_api.g_varchar2_table(1617) := '6F72646572207B0D0A2020626F726465722D636F6C6F723A20234146424143352021696D706F7274616E743B0D0A20207374726F6B653A20234146424143352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3135207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(1618) := '6B67726F756E642D636F6C6F723A20233645383539382021696D706F7274616E743B0D0A202066696C6C3A20233645383539382021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1619) := '2D636F6C6F722D31352D62672C0D0A2E752D636F6C6F722D31352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233645383539382021696D706F7274616E743B0D0A202066696C6C3A2023364538353938202169';
wwv_flow_api.g_varchar2_table(1620) := '6D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31352D7478742C0D0A2E752D636F6C6F722D31352D74657874207B0D0A2020636F6C6F723A20233645383539382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31352D62642C';
wwv_flow_api.g_varchar2_table(1621) := '0D0A2E752D636F6C6F722D31352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233645383539382021696D706F7274616E743B0D0A20207374726F6B653A20233645383539382021696D706F7274616E743B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1622) := '6C6F722D3136207B0D0A20206261636B67726F756E642D636F6C6F723A20233539623265322021696D706F7274616E743B0D0A202066696C6C3A20233539623265322021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D';
wwv_flow_api.g_varchar2_table(1623) := '706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31362D62672C0D0A2E752D636F6C6F722D31362D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233539623265322021696D706F7274616E743B0D0A202066';
wwv_flow_api.g_varchar2_table(1624) := '696C6C3A20233539623265322021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31362D7478742C0D0A2E752D636F6C6F722D31362D74657874207B0D0A2020636F6C6F723A20233539623265322021696D706F7274616E743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1625) := '2E752D636F6C6F722D31362D62642C0D0A2E752D636F6C6F722D31362D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233539623265322021696D706F7274616E743B0D0A20207374726F6B653A20233539623265322021696D706F72';
wwv_flow_api.g_varchar2_table(1626) := '74616E743B0D0A7D0D0A2E752D636F6C6F722D3137207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564392021696D706F7274616E743B0D0A202066696C6C3A20233432633564392021696D706F7274616E743B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1627) := '6F723A20233035313531372021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31372D62672C0D0A2E752D636F6C6F722D31372D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564392021';
wwv_flow_api.g_varchar2_table(1628) := '696D706F7274616E743B0D0A202066696C6C3A20233432633564392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31372D7478742C0D0A2E752D636F6C6F722D31372D74657874207B0D0A2020636F6C6F723A20233432633564392021';
wwv_flow_api.g_varchar2_table(1629) := '696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31372D62642C0D0A2E752D636F6C6F722D31372D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233432633564392021696D706F7274616E743B0D0A20207374726F6B653A';
wwv_flow_api.g_varchar2_table(1630) := '20233432633564392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3138207B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363392021696D706F7274616E743B0D0A202066696C6C3A20233538636363392021696D';
wwv_flow_api.g_varchar2_table(1631) := '706F7274616E743B0D0A2020636F6C6F723A20233039316331632021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31382D62672C0D0A2E752D636F6C6F722D31382D6261636B67726F756E64207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(1632) := '6F6C6F723A20233538636363392021696D706F7274616E743B0D0A202066696C6C3A20233538636363392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31382D7478742C0D0A2E752D636F6C6F722D31382D74657874207B0D0A202063';
wwv_flow_api.g_varchar2_table(1633) := '6F6C6F723A20233538636363392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31382D62642C0D0A2E752D636F6C6F722D31382D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233538636363392021696D706F7274';
wwv_flow_api.g_varchar2_table(1634) := '616E743B0D0A20207374726F6B653A20233538636363392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3139207B0D0A20206261636B67726F756E642D636F6C6F723A20233633626639642021696D706F7274616E743B0D0A20206669';
wwv_flow_api.g_varchar2_table(1635) := '6C6C3A20233633626639642021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31392D62672C0D0A2E752D636F6C6F722D31392D6261636B67726F756E64207B0D';
wwv_flow_api.g_varchar2_table(1636) := '0A20206261636B67726F756E642D636F6C6F723A20233633626639642021696D706F7274616E743B0D0A202066696C6C3A20233633626639642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31392D7478742C0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1637) := '2D31392D74657874207B0D0A2020636F6C6F723A20233633626639642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31392D62642C0D0A2E752D636F6C6F722D31392D626F72646572207B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1638) := '233633626639642021696D706F7274616E743B0D0A20207374726F6B653A20233633626639642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3230207B0D0A20206261636B67726F756E642D636F6C6F723A2023396163393766202169';
wwv_flow_api.g_varchar2_table(1639) := '6D706F7274616E743B0D0A202066696C6C3A20233961633937662021696D706F7274616E743B0D0A2020636F6C6F723A20233230333331362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32302D62672C0D0A2E752D636F6C6F722D32';
wwv_flow_api.g_varchar2_table(1640) := '302D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937662021696D706F7274616E743B0D0A202066696C6C3A20233961633937662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3230';
wwv_flow_api.g_varchar2_table(1641) := '2D7478742C0D0A2E752D636F6C6F722D32302D74657874207B0D0A2020636F6C6F723A20233961633937662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32302D62642C0D0A2E752D636F6C6F722D32302D626F72646572207B0D0A20';
wwv_flow_api.g_varchar2_table(1642) := '20626F726465722D636F6C6F723A20233961633937662021696D706F7274616E743B0D0A20207374726F6B653A20233961633937662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3231207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(1643) := '6C6F723A20236534653537352021696D706F7274616E743B0D0A202066696C6C3A20236534653537352021696D706F7274616E743B0D0A2020636F6C6F723A20233463346330662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32312D';
wwv_flow_api.g_varchar2_table(1644) := '62672C0D0A2E752D636F6C6F722D32312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236534653537352021696D706F7274616E743B0D0A202066696C6C3A20236534653537352021696D706F7274616E743B0D';
wwv_flow_api.g_varchar2_table(1645) := '0A7D0D0A2E752D636F6C6F722D32312D7478742C0D0A2E752D636F6C6F722D32312D74657874207B0D0A2020636F6C6F723A20236534653537352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32312D62642C0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1646) := '2D32312D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236534653537352021696D706F7274616E743B0D0A20207374726F6B653A20236534653537352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3232207B0D0A';
wwv_flow_api.g_varchar2_table(1647) := '20206261636B67726F756E642D636F6C6F723A20236663643836652021696D706F7274616E743B0D0A202066696C6C3A20236663643836652021696D706F7274616E743B0D0A2020636F6C6F723A20233639346630322021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(1648) := '7D0D0A2E752D636F6C6F722D32322D62672C0D0A2E752D636F6C6F722D32322D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836652021696D706F7274616E743B0D0A202066696C6C3A202366636438';
wwv_flow_api.g_varchar2_table(1649) := '36652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32322D7478742C0D0A2E752D636F6C6F722D32322D74657874207B0D0A2020636F6C6F723A20236663643836652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32';
wwv_flow_api.g_varchar2_table(1650) := '322D62642C0D0A2E752D636F6C6F722D32322D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236663643836652021696D706F7274616E743B0D0A20207374726F6B653A20236663643836652021696D706F7274616E743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1651) := '2E752D636F6C6F722D3233207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136352021696D706F7274616E743B0D0A202066696C6C3A20236631396136352021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(1652) := '662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32332D62672C0D0A2E752D636F6C6F722D32332D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136352021696D706F7274616E743B';
wwv_flow_api.g_varchar2_table(1653) := '0D0A202066696C6C3A20236631396136352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32332D7478742C0D0A2E752D636F6C6F722D32332D74657874207B0D0A2020636F6C6F723A20236631396136352021696D706F7274616E743B';
wwv_flow_api.g_varchar2_table(1654) := '0D0A7D0D0A2E752D636F6C6F722D32332D62642C0D0A2E752D636F6C6F722D32332D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236631396136352021696D706F7274616E743B0D0A20207374726F6B653A20236631396136352021';
wwv_flow_api.g_varchar2_table(1655) := '696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3234207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337362021696D706F7274616E743B0D0A202066696C6C3A20236564376337362021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(1656) := '2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32342D62672C0D0A2E752D636F6C6F722D32342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A2023656437';
wwv_flow_api.g_varchar2_table(1657) := '6337362021696D706F7274616E743B0D0A202066696C6C3A20236564376337362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32342D7478742C0D0A2E752D636F6C6F722D32342D74657874207B0D0A2020636F6C6F723A2023656437';
wwv_flow_api.g_varchar2_table(1658) := '6337362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32342D62642C0D0A2E752D636F6C6F722D32342D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236564376337362021696D706F7274616E743B0D0A20207374';
wwv_flow_api.g_varchar2_table(1659) := '726F6B653A20236564376337362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3235207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376461302021696D706F7274616E743B0D0A202066696C6C3A20236564376461';
wwv_flow_api.g_varchar2_table(1660) := '302021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32352D62672C0D0A2E752D636F6C6F722D32352D6261636B67726F756E64207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1661) := '756E642D636F6C6F723A20236564376461302021696D706F7274616E743B0D0A202066696C6C3A20236564376461302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32352D7478742C0D0A2E752D636F6C6F722D32352D74657874207B';
wwv_flow_api.g_varchar2_table(1662) := '0D0A2020636F6C6F723A20236564376461302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32352D62642C0D0A2E752D636F6C6F722D32352D626F72646572207B0D0A2020626F726465722D636F6C6F723A2023656437646130202169';
wwv_flow_api.g_varchar2_table(1663) := '6D706F7274616E743B0D0A20207374726F6B653A20236564376461302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3236207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373962312021696D706F7274616E743B0D';
wwv_flow_api.g_varchar2_table(1664) := '0A202066696C6C3A20236435373962312021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32362D62672C0D0A2E752D636F6C6F722D32362D6261636B67726F75';
wwv_flow_api.g_varchar2_table(1665) := '6E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373962312021696D706F7274616E743B0D0A202066696C6C3A20236435373962312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32362D7478742C0D0A2E752D';
wwv_flow_api.g_varchar2_table(1666) := '636F6C6F722D32362D74657874207B0D0A2020636F6C6F723A20236435373962312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32362D62642C0D0A2E752D636F6C6F722D32362D626F72646572207B0D0A2020626F726465722D636F';
wwv_flow_api.g_varchar2_table(1667) := '6C6F723A20236435373962312021696D706F7274616E743B0D0A20207374726F6B653A20236435373962312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3237207B0D0A20206261636B67726F756E642D636F6C6F723A202339643731';
wwv_flow_api.g_varchar2_table(1668) := '61662021696D706F7274616E743B0D0A202066696C6C3A20233964373161662021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32372D62672C0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1669) := '6C6F722D32372D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161662021696D706F7274616E743B0D0A202066696C6C3A20233964373161662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1670) := '6F722D32372D7478742C0D0A2E752D636F6C6F722D32372D74657874207B0D0A2020636F6C6F723A20233964373161662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32372D62642C0D0A2E752D636F6C6F722D32372D626F72646572';
wwv_flow_api.g_varchar2_table(1671) := '207B0D0A2020626F726465722D636F6C6F723A20233964373161662021696D706F7274616E743B0D0A20207374726F6B653A20233964373161662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3238207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1672) := '6E642D636F6C6F723A20233762383662642021696D706F7274616E743B0D0A202066696C6C3A20233762383662642021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1673) := '722D32382D62672C0D0A2E752D636F6C6F722D32382D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233762383662642021696D706F7274616E743B0D0A202066696C6C3A20233762383662642021696D706F7274';
wwv_flow_api.g_varchar2_table(1674) := '616E743B0D0A7D0D0A2E752D636F6C6F722D32382D7478742C0D0A2E752D636F6C6F722D32382D74657874207B0D0A2020636F6C6F723A20233762383662642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32382D62642C0D0A2E752D';
wwv_flow_api.g_varchar2_table(1675) := '636F6C6F722D32382D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233762383662642021696D706F7274616E743B0D0A20207374726F6B653A20233762383662642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32';
wwv_flow_api.g_varchar2_table(1676) := '39207B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864312021696D706F7274616E743B0D0A202066696C6C3A20236266633864312021696D706F7274616E743B0D0A2020636F6C6F723A20233364343835342021696D706F727461';
wwv_flow_api.g_varchar2_table(1677) := '6E743B0D0A7D0D0A2E752D636F6C6F722D32392D62672C0D0A2E752D636F6C6F722D32392D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864312021696D706F7274616E743B0D0A202066696C6C3A20';
wwv_flow_api.g_varchar2_table(1678) := '236266633864312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32392D7478742C0D0A2E752D636F6C6F722D32392D74657874207B0D0A2020636F6C6F723A20236266633864312021696D706F7274616E743B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1679) := '6C6F722D32392D62642C0D0A2E752D636F6C6F722D32392D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236266633864312021696D706F7274616E743B0D0A20207374726F6B653A20236266633864312021696D706F7274616E743B';
wwv_flow_api.g_varchar2_table(1680) := '0D0A7D0D0A2E752D636F6C6F722D3330207B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461642021696D706F7274616E743B0D0A202066696C6C3A20233862396461642021696D706F7274616E743B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1681) := '6666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33302D62672C0D0A2E752D636F6C6F722D33302D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461642021696D706F72';
wwv_flow_api.g_varchar2_table(1682) := '74616E743B0D0A202066696C6C3A20233862396461642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33302D7478742C0D0A2E752D636F6C6F722D33302D74657874207B0D0A2020636F6C6F723A20233862396461642021696D706F72';
wwv_flow_api.g_varchar2_table(1683) := '74616E743B0D0A7D0D0A2E752D636F6C6F722D33302D62642C0D0A2E752D636F6C6F722D33302D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233862396461642021696D706F7274616E743B0D0A20207374726F6B653A2023386239';
wwv_flow_api.g_varchar2_table(1684) := '6461642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3331207B0D0A20206261636B67726F756E642D636F6C6F723A20233139386363612021696D706F7274616E743B0D0A202066696C6C3A20233139386363612021696D706F727461';
wwv_flow_api.g_varchar2_table(1685) := '6E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33312D62672C0D0A2E752D636F6C6F722D33312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1686) := '20233139386363612021696D706F7274616E743B0D0A202066696C6C3A20233139386363612021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33312D7478742C0D0A2E752D636F6C6F722D33312D74657874207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1687) := '20233139386363612021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33312D62642C0D0A2E752D636F6C6F722D33312D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233139386363612021696D706F7274616E743B0D';
wwv_flow_api.g_varchar2_table(1688) := '0A20207374726F6B653A20233139386363612021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3332207B0D0A20206261636B67726F756E642D636F6C6F723A20233032613562652021696D706F7274616E743B0D0A202066696C6C3A2023';
wwv_flow_api.g_varchar2_table(1689) := '3032613562652021696D706F7274616E743B0D0A2020636F6C6F723A20233030303030302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33322D62672C0D0A2E752D636F6C6F722D33322D6261636B67726F756E64207B0D0A20206261';
wwv_flow_api.g_varchar2_table(1690) := '636B67726F756E642D636F6C6F723A20233032613562652021696D706F7274616E743B0D0A202066696C6C3A20233032613562652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33322D7478742C0D0A2E752D636F6C6F722D33322D74';
wwv_flow_api.g_varchar2_table(1691) := '657874207B0D0A2020636F6C6F723A20233032613562652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33322D62642C0D0A2E752D636F6C6F722D33322D626F72646572207B0D0A2020626F726465722D636F6C6F723A202330326135';
wwv_flow_api.g_varchar2_table(1692) := '62652021696D706F7274616E743B0D0A20207374726F6B653A20233032613562652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3333207B0D0A20206261636B67726F756E642D636F6C6F723A20233138623161652021696D706F7274';
wwv_flow_api.g_varchar2_table(1693) := '616E743B0D0A202066696C6C3A20233138623161652021696D706F7274616E743B0D0A2020636F6C6F723A20233030303030302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33332D62672C0D0A2E752D636F6C6F722D33332D626163';
wwv_flow_api.g_varchar2_table(1694) := '6B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233138623161652021696D706F7274616E743B0D0A202066696C6C3A20233138623161652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33332D7478742C';
wwv_flow_api.g_varchar2_table(1695) := '0D0A2E752D636F6C6F722D33332D74657874207B0D0A2020636F6C6F723A20233138623161652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33332D62642C0D0A2E752D636F6C6F722D33332D626F72646572207B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(1696) := '65722D636F6C6F723A20233138623161652021696D706F7274616E743B0D0A20207374726F6B653A20233138623161652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3334207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1697) := '233234613437352021696D706F7274616E743B0D0A202066696C6C3A20233234613437352021696D706F7274616E743B0D0A2020636F6C6F723A20236566666266372021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33342D62672C0D0A';
wwv_flow_api.g_varchar2_table(1698) := '2E752D636F6C6F722D33342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233234613437352021696D706F7274616E743B0D0A202066696C6C3A20233234613437352021696D706F7274616E743B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1699) := '752D636F6C6F722D33342D7478742C0D0A2E752D636F6C6F722D33342D74657874207B0D0A2020636F6C6F723A20233234613437352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33342D62642C0D0A2E752D636F6C6F722D33342D62';
wwv_flow_api.g_varchar2_table(1700) := '6F72646572207B0D0A2020626F726465722D636F6C6F723A20233234613437352021696D706F7274616E743B0D0A20207374726F6B653A20233234613437352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3335207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(1701) := '6B67726F756E642D636F6C6F723A20233661616434322021696D706F7274616E743B0D0A202066696C6C3A20233661616434322021696D706F7274616E743B0D0A2020636F6C6F723A20233063313530362021696D706F7274616E743B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1702) := '2D636F6C6F722D33352D62672C0D0A2E752D636F6C6F722D33352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233661616434322021696D706F7274616E743B0D0A202066696C6C3A2023366161643432202169';
wwv_flow_api.g_varchar2_table(1703) := '6D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33352D7478742C0D0A2E752D636F6C6F722D33352D74657874207B0D0A2020636F6C6F723A20233661616434322021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33352D62642C';
wwv_flow_api.g_varchar2_table(1704) := '0D0A2E752D636F6C6F722D33352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233661616434322021696D706F7274616E743B0D0A20207374726F6B653A20233661616434322021696D706F7274616E743B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1705) := '6C6F722D3336207B0D0A20206261636B67726F756E642D636F6C6F723A20236339636133392021696D706F7274616E743B0D0A202066696C6C3A20236339636133392021696D706F7274616E743B0D0A2020636F6C6F723A20233264326530342021696D';
wwv_flow_api.g_varchar2_table(1706) := '706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33362D62672C0D0A2E752D636F6C6F722D33362D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236339636133392021696D706F7274616E743B0D0A202066';
wwv_flow_api.g_varchar2_table(1707) := '696C6C3A20236339636133392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33362D7478742C0D0A2E752D636F6C6F722D33362D74657874207B0D0A2020636F6C6F723A20236339636133392021696D706F7274616E743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1708) := '2E752D636F6C6F722D33362D62642C0D0A2E752D636F6C6F722D33362D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236339636133392021696D706F7274616E743B0D0A20207374726F6B653A20236339636133392021696D706F72';
wwv_flow_api.g_varchar2_table(1709) := '74616E743B0D0A7D0D0A2E752D636F6C6F722D3337207B0D0A20206261636B67726F756E642D636F6C6F723A20236439623133622021696D706F7274616E743B0D0A202066696C6C3A20236439623133622021696D706F7274616E743B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1710) := '6F723A20233436333430302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33372D62672C0D0A2E752D636F6C6F722D33372D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236439623133622021';
wwv_flow_api.g_varchar2_table(1711) := '696D706F7274616E743B0D0A202066696C6C3A20236439623133622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33372D7478742C0D0A2E752D636F6C6F722D33372D74657874207B0D0A2020636F6C6F723A20236439623133622021';
wwv_flow_api.g_varchar2_table(1712) := '696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33372D62642C0D0A2E752D636F6C6F722D33372D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236439623133622021696D706F7274616E743B0D0A20207374726F6B653A';
wwv_flow_api.g_varchar2_table(1713) := '20236439623133622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3338207B0D0A20206261636B67726F756E642D636F6C6F723A20236437366132372021696D706F7274616E743B0D0A202066696C6C3A20236437366132372021696D';
wwv_flow_api.g_varchar2_table(1714) := '706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33382D62672C0D0A2E752D636F6C6F722D33382D6261636B67726F756E64207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(1715) := '6F6C6F723A20236437366132372021696D706F7274616E743B0D0A202066696C6C3A20236437366132372021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33382D7478742C0D0A2E752D636F6C6F722D33382D74657874207B0D0A202063';
wwv_flow_api.g_varchar2_table(1716) := '6F6C6F723A20236437366132372021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33382D62642C0D0A2E752D636F6C6F722D33382D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236437366132372021696D706F7274';
wwv_flow_api.g_varchar2_table(1717) := '616E743B0D0A20207374726F6B653A20236437366132372021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3339207B0D0A20206261636B67726F756E642D636F6C6F723A20236432343233622021696D706F7274616E743B0D0A20206669';
wwv_flow_api.g_varchar2_table(1718) := '6C6C3A20236432343233622021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33392D62672C0D0A2E752D636F6C6F722D33392D6261636B67726F756E64207B0D';
wwv_flow_api.g_varchar2_table(1719) := '0A20206261636B67726F756E642D636F6C6F723A20236432343233622021696D706F7274616E743B0D0A202066696C6C3A20236432343233622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33392D7478742C0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1720) := '2D33392D74657874207B0D0A2020636F6C6F723A20236432343233622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33392D62642C0D0A2E752D636F6C6F722D33392D626F72646572207B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1721) := '236432343233622021696D706F7274616E743B0D0A20207374726F6B653A20236432343233622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3430207B0D0A20206261636B67726F756E642D636F6C6F723A2023643134333666202169';
wwv_flow_api.g_varchar2_table(1722) := '6D706F7274616E743B0D0A202066696C6C3A20236431343336662021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34302D62672C0D0A2E752D636F6C6F722D34';
wwv_flow_api.g_varchar2_table(1723) := '302D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236431343336662021696D706F7274616E743B0D0A202066696C6C3A20236431343336662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3430';
wwv_flow_api.g_varchar2_table(1724) := '2D7478742C0D0A2E752D636F6C6F722D34302D74657874207B0D0A2020636F6C6F723A20236431343336662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34302D62642C0D0A2E752D636F6C6F722D34302D626F72646572207B0D0A20';
wwv_flow_api.g_varchar2_table(1725) := '20626F726465722D636F6C6F723A20236431343336662021696D706F7274616E743B0D0A20207374726F6B653A20236431343336662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3431207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(1726) := '6C6F723A20236261336438382021696D706F7274616E743B0D0A202066696C6C3A20236261336438382021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34312D';
wwv_flow_api.g_varchar2_table(1727) := '62672C0D0A2E752D636F6C6F722D34312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236261336438382021696D706F7274616E743B0D0A202066696C6C3A20236261336438382021696D706F7274616E743B0D';
wwv_flow_api.g_varchar2_table(1728) := '0A7D0D0A2E752D636F6C6F722D34312D7478742C0D0A2E752D636F6C6F722D34312D74657874207B0D0A2020636F6C6F723A20236261336438382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34312D62642C0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1729) := '2D34312D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236261336438382021696D706F7274616E743B0D0A20207374726F6B653A20236261336438382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3432207B0D0A';
wwv_flow_api.g_varchar2_table(1730) := '20206261636B67726F756E642D636F6C6F723A20233737333339332021696D706F7274616E743B0D0A202066696C6C3A20233737333339332021696D706F7274616E743B0D0A2020636F6C6F723A20236636656666392021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(1731) := '7D0D0A2E752D636F6C6F722D34322D62672C0D0A2E752D636F6C6F722D34322D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233737333339332021696D706F7274616E743B0D0A202066696C6C3A202337373333';
wwv_flow_api.g_varchar2_table(1732) := '39332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34322D7478742C0D0A2E752D636F6C6F722D34322D74657874207B0D0A2020636F6C6F723A20233737333339332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34';
wwv_flow_api.g_varchar2_table(1733) := '322D62642C0D0A2E752D636F6C6F722D34322D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233737333339332021696D706F7274616E743B0D0A20207374726F6B653A20233737333339332021696D706F7274616E743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1734) := '2E752D636F6C6F722D3433207B0D0A20206261636B67726F756E642D636F6C6F723A20233364346561332021696D706F7274616E743B0D0A202066696C6C3A20233364346561332021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(1735) := '662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34332D62672C0D0A2E752D636F6C6F722D34332D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233364346561332021696D706F7274616E743B';
wwv_flow_api.g_varchar2_table(1736) := '0D0A202066696C6C3A20233364346561332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34332D7478742C0D0A2E752D636F6C6F722D34332D74657874207B0D0A2020636F6C6F723A20233364346561332021696D706F7274616E743B';
wwv_flow_api.g_varchar2_table(1737) := '0D0A7D0D0A2E752D636F6C6F722D34332D62642C0D0A2E752D636F6C6F722D34332D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233364346561332021696D706F7274616E743B0D0A20207374726F6B653A20233364346561332021';
wwv_flow_api.g_varchar2_table(1738) := '696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3434207B0D0A20206261636B67726F756E642D636F6C6F723A20233863396562302021696D706F7274616E743B0D0A202066696C6C3A20233863396562302021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(1739) := '2020636F6C6F723A20233238336134642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34342D62672C0D0A2E752D636F6C6F722D34342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A2023386339';
wwv_flow_api.g_varchar2_table(1740) := '6562302021696D706F7274616E743B0D0A202066696C6C3A20233863396562302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34342D7478742C0D0A2E752D636F6C6F722D34342D74657874207B0D0A2020636F6C6F723A2023386339';
wwv_flow_api.g_varchar2_table(1741) := '6562302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34342D62642C0D0A2E752D636F6C6F722D34342D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233863396562302021696D706F7274616E743B0D0A20207374';
wwv_flow_api.g_varchar2_table(1742) := '726F6B653A20233863396562302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3435207B0D0A20206261636B67726F756E642D636F6C6F723A20233465373339312021696D706F7274616E743B0D0A202066696C6C3A20233465373339';
wwv_flow_api.g_varchar2_table(1743) := '312021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34352D62672C0D0A2E752D636F6C6F722D34352D6261636B67726F756E64207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1744) := '756E642D636F6C6F723A20233465373339312021696D706F7274616E743B0D0A202066696C6C3A20233465373339312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34352D7478742C0D0A2E752D636F6C6F722D34352D74657874207B';
wwv_flow_api.g_varchar2_table(1745) := '0D0A2020636F6C6F723A20233465373339312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34352D62642C0D0A2E752D636F6C6F722D34352D626F72646572207B0D0A2020626F726465722D636F6C6F723A2023346537333931202169';
wwv_flow_api.g_varchar2_table(1746) := '6D706F7274616E743B0D0A20207374726F6B653A20233465373339312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D7472616E73706172656E74207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E74';
wwv_flow_api.g_varchar2_table(1747) := '2021696D706F7274616E743B0D0A2020636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D7472616E73706172656E742D6267207B0D0A20206261636B67726F756E642D636F6C6F723A207472';
wwv_flow_api.g_varchar2_table(1748) := '616E73706172656E742021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D7472616E73706172656E742D7478742C0D0A2E752D636F6C6F722D7472616E73706172656E742D74657874207B0D0A2020636F6C6F723A207472616E7370617265';
wwv_flow_api.g_varchar2_table(1749) := '6E742021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D7472616E73706172656E742D62642C0D0A2E752D636F6C6F722D7472616E73706172656E742D626F72646572207B0D0A2020626F726465722D636F6C6F723A207472616E73706172';
wwv_flow_api.g_varchar2_table(1750) := '656E742021696D706F7274616E743B0D0A7D0D0A0D0A2F2A200D0A202A204F7261636C65204170706C69636174696F6E204578707265737320352E30205468656D6520526F6C6C657220437573746F6D20435353200D0A202A0D0A202A2F0D0A0D0A2F2A';
wwv_flow_api.g_varchar2_table(1751) := '205374617274204F7665727269646573202A2F0D0A626F64792C0D0A696E7075742C0D0A627574746F6E2C0D0A74657874617265612C0D0A73656C656374207B0D0A2020666F6E742D66616D696C793A20224F7261636C652053616E73222C202D617070';
wwv_flow_api.g_varchar2_table(1752) := '6C652D73797374656D2C20426C696E6B4D616353797374656D466F6E742C20225365676F65205549222C20526F626F746F2C204F787967656E2C205562756E74752C2043616E746172656C6C2C2022466972612053616E73222C202244726F6964205361';
wwv_flow_api.g_varchar2_table(1753) := '6E73222C202248656C766574696361204E657565222C2073616E732D73657269663B0D0A7D0D0A0D0A2F2A204F7261636C65204C6F676F202A2F0D0A2E742D4865616465722D6C6F676F207B0D0A2020666F6E742D73697A653A20313670783B0D0A2020';
wwv_flow_api.g_varchar2_table(1754) := '666F6E742D7765696768743A203730303B0D0A7D0D0A0D0A2E742D4865616465722D6C6F676F2D6C696E6B207B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A2020646973706C61793A20696E6C696E652D666C65783B0D0A2020616C69';
wwv_flow_api.g_varchar2_table(1755) := '676E2D6974656D733A2063656E7465723B0D0A7D0D0A0D0A2E742D4865616465722D6C6F676F2D6C696E6B3A6265666F7265207B0D0A2020636F6E74656E743A2027273B0D0A20206261636B67726F756E642D696D6167653A2075726C28646174613A69';
wwv_flow_api.g_varchar2_table(1756) := '6D6167652F7376672B786D6C3B6261736536342C50484E325A79423361575230614430694D7A59694947686C6157646F644430694D6A5169494868746247357A50534A6F644852774F693876643364334C6E637A4C6D39795A7938794D4441774C334E32';
wwv_flow_api.g_varchar2_table(1757) := '5A79492B50484268644767675A6D6C736244306949304D334E44597A4E4349675A443069545449304C6A59794F434177517A4D774C6A6B794D79417749444D32494455754D7A633049444D32494445794C6A41774D79417A4E6941784F4334324D7A4967';
wwv_flow_api.g_varchar2_table(1758) := '4D7A41754F54497A49444930494449304C6A59794F4341794E4777744D544D754D6A51744C6A41774E6B4D314C6A41354F5341794D7934354F5451674D4341784F4334324D7A49674D4341784D6934774D444E544E5334774F546B674D4341784D53347A';
wwv_flow_api.g_varchar2_table(1759) := '4F446B674D4767784D7934794D7A6C36625330754D7A4179494451754D444931534445784C6A59344D6D4D744E4334774E7941774C5463754D7A593549444D754E5463304C5463754D7A5935494463754F546B33494441674E4334304D5467674D79347A';
wwv_flow_api.g_varchar2_table(1760) := '494467754D44417A494463754D7A63674F4334774D444E6F4D5449754E6A517A597A51754D446779494441674E79347A4E7A63744D7934314F4455674E79347A4E7A63744F4334774D444D674D4330304C6A51794D79307A4C6A49354E5330334C6A6B35';
wwv_flow_api.g_varchar2_table(1761) := '4E7930334C6A4D334E7930334C6A6B354E336F694C7A34384C334E325A7A343D293B0D0A20206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0D0A20206261636B67726F756E642D706F736974696F6E3A2063656E7465722063';
wwv_flow_api.g_varchar2_table(1762) := '656E7465723B0D0A202077696474683A20333670783B0D0A20206865696768743A20323470783B0D0A2020646973706C61793A20626C6F636B3B0D0A20206D617267696E2D6C6566743A203470783B0D0A20206D617267696E2D72696768743A20313270';
wwv_flow_api.g_varchar2_table(1763) := '783B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A20207A2D696E6465783A202D313B0D0A7D0D0A0D0A2F2A204C656674204E6176202A2F0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D';
wwv_flow_api.g_varchar2_table(1764) := '2D746F704C6576656C203E202E612D54726565566965772D636F6E74656E74202E612D54726565566965772D6C6162656C2C0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C203E20';
wwv_flow_api.g_varchar2_table(1765) := '2E612D54726565566965772D636F6E74656E74202E612D54726565566965772D6C6162656C207B0D0A2020666F6E742D7765696768743A203530303B0D0A7D0D0A0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F';
wwv_flow_api.g_varchar2_table(1766) := '64652D2D746F704C6576656C203E202E612D54726565566965772D636F6E74656E742E69732D63757272656E74202E612D54726565566965772D6C6162656C2C0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64';
wwv_flow_api.g_varchar2_table(1767) := '652D2D746F704C6576656C203E202E612D54726565566965772D636F6E74656E742E69732D63757272656E74202E612D54726565566965772D6C6162656C2C0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F6465';
wwv_flow_api.g_varchar2_table(1768) := '2D2D746F704C6576656C203E202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E612D54726565566965772D6C6162656C2C0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D';
wwv_flow_api.g_varchar2_table(1769) := '6E6F64652D2D746F704C6576656C203E202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E612D54726565566965772D6C6162656C207B0D0A2020666F6E742D7765696768743A203730303B0D0A7D0D0A0D0A';
wwv_flow_api.g_varchar2_table(1770) := '2F2A20436F6D6D656E7473202A2F0D0A2E742D436F6D6D656E74732D7573657249636F6E2C0D0A2E742D436F6D6D656E74732D75736572496D67207B0D0A2020626F726465722D7261646975733A203470783B0D0A7D0D0A0D0A2E742D436F6D6D656E74';
wwv_flow_api.g_varchar2_table(1771) := '732D2D63686174202E742D436F6D6D656E74732D636F6D6D656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20234543453945363B0D0A7D0D0A0D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D636F6D6D';
wwv_flow_api.g_varchar2_table(1772) := '656E743A6166746572207B0D0A2020626F726465722D72696768742D636F6C6F723A20234543453945363B0D0A7D0D0A0D0A2F2A204D656E75202A2F0D0A2E612D4D656E752D636F6E74656E74207B0D0A2020626F726465723A206E6F6E653B0D0A2020';
wwv_flow_api.g_varchar2_table(1773) := '626F782D736861646F773A203020313270782032347078202D31327078207267626128302C20302C20302C20302E33293B0D0A20206261636B67726F756E642D636F6C6F723A20234646463B0D0A2020626F726465722D7261646975733A203470783B0D';
wwv_flow_api.g_varchar2_table(1774) := '0A202070616464696E673A2038707820303B0D0A20206D696E2D77696474683A2032303070783B0D0A7D0D0A0D0A2E612D4D656E752D636F6E74656E74202E612D4D656E752D737461747573436F6C2C0D0A2E612D4D656E75202E612D4D656E752D6974';
wwv_flow_api.g_varchar2_table(1775) := '656D202E612D4D656E752D737461747573436F6C207B0D0A202070616464696E673A203130707820313670783B0D0A202077696474683A206175746F3B0D0A7D0D0A0D0A2E612D4D656E75202E612D4D656E752D6974656D207B0D0A20206C696E652D68';
wwv_flow_api.g_varchar2_table(1776) := '65696768743A20333670783B0D0A2020636F6C6F723A20233141313831363B0D0A7D0D0A0D0A2E612D4D656E75202E612D4D656E752D6974656D203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(1777) := '6C6F723A20696E68657269742021696D706F7274616E743B0D0A7D0D0A0D0A2E612D4D656E752D616363656C2C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D';
wwv_flow_api.g_varchar2_table(1778) := '656E752D616363656C2C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0D0A2E612D4D656E75202E612D4D656E752D697465';
wwv_flow_api.g_varchar2_table(1779) := '6D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C2C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E75';
wwv_flow_api.g_varchar2_table(1780) := '2D737461747573436F6C207B0D0A2020636F6C6F723A20726762612831362C2031352C2031342C20302E3630293B0D0A7D0D0A0D0A2E612D4D656E75202E612D4D656E752D6974656D202E612D4D656E752D7375624D656E75436F6C207B0D0A20206865';
wwv_flow_api.g_varchar2_table(1781) := '696768743A20333270783B0D0A202070616464696E673A20387078203470782038707820303B0D0A7D0D0A0D0A2E612D4D656E752D6974656D536570202E612D4D656E752D68536570617261746F72207B0D0A2020626F726465722D636F6C6F723A2072';
wwv_flow_api.g_varchar2_table(1782) := '67626128302C20302C20302C20302E31293B0D0A20206D617267696E2D746F703A203870783B0D0A202070616464696E672D746F703A203470783B0D0A202070616464696E672D626F74746F6D3A203470783B0D0A7D0D0A0D0A2367726F75705F736574';
wwv_flow_api.g_varchar2_table(1783) := '74696E67735F6D656E75202E612D4D656E752D6974656D536570202E612D4D656E752D68536570617261746F72207B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A0D0A2E612D4D656E7520';
wwv_flow_api.g_varchar2_table(1784) := '2E612D4D656E752D6974656D2E69732D657870616E6465642C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20234631463045423B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1785) := '6F756E643A20726762612834392C2034352C2034322C20302E3035293B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A0D0A68746D6C202E612D4D656E752D6974656D2E69732D666F6375736564207B0D0A20206F75746C696E653A206E6F';
wwv_flow_api.g_varchar2_table(1786) := '6E652021696D706F7274616E743B0D0A7D0D0A0D0A2F2A2050616765205469746C6520262042726561646372756D6273202A2F0D0A2E742D4865726F526567696F6E2D7469746C652C0D0A2E742D42726561646372756D62526567696F6E2D7469746C65';
wwv_flow_api.g_varchar2_table(1787) := '546578742C0D0A2E742D42726561646372756D62526567696F6E2D2D75736542726561646372756D625469746C65202E742D42726561646372756D622D6974656D2E69732D616374697665202E742D42726561646372756D622D6C6162656C207B0D0A20';
wwv_flow_api.g_varchar2_table(1788) := '20666F6E742D7765696768743A203730303B0D0A7D0D0A0D0A2F2A204469616C6F6773202A2F0D0A626F6479202E75692D6469616C6F67207B0D0A2020626F782D736861646F773A203020323470782034387078202D32347078207267626128302C2030';
wwv_flow_api.g_varchar2_table(1789) := '2C20302C20302E33292C20302030203020317078207267626128302C20302C20302C202E31293B0D0A2020626F726465723A20302021696D706F7274616E743B0D0A2020626F726465722D7261646975733A203670783B0D0A20206F766572666C6F773A';
wwv_flow_api.g_varchar2_table(1790) := '2068696464656E3B0D0A20206261636B67726F756E642D636F6C6F723A20234643464246413B0D0A7D0D0A0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D627574746F6E70616E65207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(1791) := '6F6C6F723A20234643464246413B0D0A2020626F726465722D746F702D636F6C6F723A207267626128302C20302C20302C202E31293B0D0A7D0D0A0D0A626F6479202E742D4469616C6F672D686561646572207B0D0A2020626F782D736861646F773A20';
wwv_flow_api.g_varchar2_table(1792) := '30203870782031367078202D387078207267626128302C20302C20302C20302E31293B0D0A7D0D0A0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722D636C6F7365207B0D0A202077696474683A2033347078';
wwv_flow_api.g_varchar2_table(1793) := '3B0D0A20206865696768743A20333470783B0D0A2020626F726465722D7261646975733A203470783B0D0A2020636F6C6F723A20233130304630453B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20207A2D';
wwv_flow_api.g_varchar2_table(1794) := '696E6465783A20313B0D0A7D0D0A0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722D636C6F73653A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612834392C2034352C20';
wwv_flow_api.g_varchar2_table(1795) := '34322C20302E3035290D0A7D0D0A0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722D636C6F73653A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612834392C2034352C';
wwv_flow_api.g_varchar2_table(1796) := '2034322C20302E3038290D0A7D0D0A0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722D636C6F73653A666F637573207B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A0D0A626F6479202E';
wwv_flow_api.g_varchar2_table(1797) := '75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722D636C6F7365202E75692D69636F6E2D636C6F7365746869636B207B0D0A20206D617267696E2D746F703A202D313270783B0D0A20206D617267696E2D6C6566743A202D313270';
wwv_flow_api.g_varchar2_table(1798) := '783B0D0A7D0D0A0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722D636C6F7365202E75692D69636F6E2D636C6F7365746869636B2C0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D';
wwv_flow_api.g_varchar2_table(1799) := '7469746C656261722D636C6F7365202E75692D69636F6E2D636C6F7365746869636B3A6265666F7265207B0D0A2020666F6E742D73697A653A20323070783B0D0A202077696474683A20323470783B0D0A20206865696768743A20323470783B0D0A2020';
wwv_flow_api.g_varchar2_table(1800) := '6C696E652D6865696768743A20323470783B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A7D0D0A0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65626172207B0D0A202070616464696E673A203136';
wwv_flow_api.g_varchar2_table(1801) := '70783B0D0A20206261636B67726F756E643A206E6F6E653B0D0A2020626F726465723A20303B0D0A7D0D0A0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0D0A2020666F6E742D7765696768743A203730303B';
wwv_flow_api.g_varchar2_table(1802) := '0D0A2020666F6E742D73697A653A20313870783B0D0A20206C696E652D6865696768743A20323670783B0D0A7D0D0A0D0A626F6479202E742D4469616C6F672D626F6479207B0D0A202070616464696E673A203136707820323070783B0D0A7D0D0A0D0A';
wwv_flow_api.g_varchar2_table(1803) := '626F6479202E742D4469616C6F672D666F6F746572202E742D427574746F6E526567696F6E207B0D0A2020626F726465723A20303B0D0A7D0D0A0D0A626F6479202E742D4469616C6F67526567696F6E202E742D427574746F6E526567696F6E2D636F6C';
wwv_flow_api.g_varchar2_table(1804) := '2D2D636F6E74656E742C0D0A626F6479202E742D4469616C6F67526567696F6E202E742D427574746F6E526567696F6E2D636F6C2D2D6C656674202E742D427574746F6E526567696F6E2D627574746F6E732C0D0A626F6479202E742D4469616C6F6752';
wwv_flow_api.g_varchar2_table(1805) := '6567696F6E202E742D427574746F6E526567696F6E2D636F6C2D2D7269676874202E742D427574746F6E526567696F6E2D627574746F6E73207B0D0A202070616464696E673A203132707820313670783B0D0A7D0D0A0D0A2F2A2054616273202A2F0D0A';
wwv_flow_api.g_varchar2_table(1806) := '2E742D546162732D6974656D2E69732D6163746976652C0D0A2E617065782D726473202E617065782D7264732D73656C6563746564207B0D0A2020666F6E742D7765696768743A203730303B0D0A7D0D0A0D0A2F2A204E617669676174696F6E20546162';
wwv_flow_api.g_varchar2_table(1807) := '73202A2F0D0A2E742D4E6176546162732D6974656D2E69732D616374697665207B0D0A2020666F6E742D7765696768743A203730303B0D0A7D0D0A0D0A2E742D4E6176546162732D6974656D207B0D0A2020626F726465722D77696474683A20303B0D0A';
wwv_flow_api.g_varchar2_table(1808) := '7D0D0A0D0A2E742D4E617654616273207B0D0A20206261636B67726F756E642D636F6C6F723A20233331324432413B0D0A7D0D0A0D0A2F2A204952522053656C656374202A2F0D0A2E612D4952522D73656C6563744C697374207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(1809) := '726F756E642D636F6C6F723A20234439443444303B0D0A2020626F726465722D636F6C6F723A20236265623962363B0D0A2020626F726465722D7261646975733A203470783B0D0A2020636F6C6F723A20233130306630650D0A7D0D0A';
null;
end;
/
begin
wwv_flow_api.create_theme_file(
 p_id=>wwv_flow_api.id(12304447219080765792)
,p_theme_id=>42
,p_file_name=>'12304446870329765778.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12618655483444111501)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND'
,p_display_name=>'Page Background'
,p_display_sequence=>20
,p_template_types=>'PAGE'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12618656325105111502)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT'
,p_display_name=>'Page Layout'
,p_display_sequence=>10
,p_template_types=>'PAGE'
,p_null_text=>'Floating (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12618671322631111516)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12618671647500111516)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12618672260073111516)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12618672661113111517)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12618976059051111520)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12618976464348111520)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12618978249887111523)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12618979100262111523)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12618980290218111524)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12618981499951111525)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12618981908734111525)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12618983850984111527)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12618987338304111530)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12618987654285111530)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_ICON_POSITION'
,p_display_name=>'Collapsible Icon Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the position of the expand and collapse toggle for the region.'
,p_null_text=>'Start'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12618988513707111530)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_BUTTON_ICONS'
,p_display_name=>'Collapsible Button Icons'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines which arrows to use to represent the icons for the collapse and expand button.'
,p_null_text=>'Arrows'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12618990538186111532)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12618991302422111532)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12618992622174111533)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12618993211024111534)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REGION'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Rounded Corners'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12618995125099111535)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12618996979642111536)
,p_theme_id=>42
,p_name=>'CALLOUT_POSITION'
,p_display_name=>'Callout Position'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Determines where the callout for the popup will be positioned relative to its parent.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619000862778111539)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER'
,p_display_name=>'Login Header'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the Login region header.'
,p_null_text=>'Icon and Title (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619009306496111546)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619009675664111546)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619010498283111547)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619012598536111548)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619013794887111550)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619014152532111550)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619016212981111552)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619018020219111553)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619019825775111554)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619020584545111555)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619021988930111556)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REPORT'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619023219151111557)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619024386834111557)
,p_theme_id=>42
,p_name=>'COL_ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>150
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619024783902111558)
,p_theme_id=>42
,p_name=>'CONTENT_ALIGNMENT'
,p_display_name=>'Content Alignment'
,p_display_sequence=>90
,p_template_types=>'REPORT'
,p_null_text=>'Center (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619025220681111558)
,p_theme_id=>42
,p_name=>'COL_CONTENT_DESCRIPTION'
,p_display_name=>'Description'
,p_display_sequence=>130
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619025644271111558)
,p_theme_id=>42
,p_name=>'COL_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>110
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619025946402111558)
,p_theme_id=>42
,p_name=>'COL_MISC'
,p_display_name=>'Misc'
,p_display_sequence=>140
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619026349449111559)
,p_theme_id=>42
,p_name=>'COL_SELECTION'
,p_display_name=>'Selection'
,p_display_sequence=>100
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619027032137111559)
,p_theme_id=>42
,p_name=>'COL_CONTENT_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>120
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619028971250111560)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619030828265111562)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619031389006111562)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619031750430111562)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619033754028111564)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619037619392111569)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619038762381111570)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619039953221111571)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619041769181111573)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619043842867111574)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619044409163111574)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619045787367111575)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'LIST'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619048035373111577)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619050228201111578)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619053770027111582)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE'
,p_display_name=>'Collapse Mode'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619059622765111587)
,p_theme_id=>42
,p_name=>'MOBILE'
,p_display_name=>'Mobile'
,p_display_sequence=>100
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a mobile-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619060202288111587)
,p_theme_id=>42
,p_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_sequence=>90
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a desktop-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619061164574111588)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619063161684111591)
,p_theme_id=>42
,p_name=>'ICON_HOVER_ANIMATION'
,p_display_name=>'Icon Hover Animation'
,p_display_sequence=>55
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619064194685111592)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619066687600111603)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619067052309111604)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619068706219111605)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619069051854111605)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619070690852111606)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619071080498111607)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619072648674111608)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619073124555111608)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619074688754111610)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619075089299111610)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619075512104111610)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619075873565111610)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619076266437111611)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619076655122111611)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619077104857111611)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619078504177111612)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619079881680111613)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619080906621111614)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619081330209111614)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619081652797111614)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619082103708111615)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619082733599111615)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619083544422111616)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619083925965111616)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619084274246111617)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619084705968111617)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Item Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for radio and check box items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12619085790877111618)
,p_theme_id=>42
,p_name=>'PAGINATION_DISPLAY'
,p_display_name=>'Pagination Display'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of pagination for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9696129841577340554)
,p_theme_id=>42
,p_name=>'ALIGNMENT_TOP'
,p_display_name=>'Top'
,p_display_sequence=>100
,p_report_template_id=>wwv_flow_api.id(9696129459962340549)
,p_css_classes=>'t-ContentRow--alignTop'
,p_group_id=>wwv_flow_api.id(12619024783902111558)
,p_template_types=>'REPORT'
,p_help_text=>'Aligns the content to the top of the row. This is useful when you expect that yours rows will vary in height (e.g. some rows will have longer descriptions than others).'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9696130204656340555)
,p_theme_id=>42
,p_name=>'ACTIONS_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(9696129459962340549)
,p_css_classes=>'t-ContentRow--hideActions'
,p_group_id=>wwv_flow_api.id(12619024386834111557)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Actions column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9696130664597340555)
,p_theme_id=>42
,p_name=>'DESCRIPTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(9696129459962340549)
,p_css_classes=>'t-ContentRow--hideDescription'
,p_group_id=>wwv_flow_api.id(12619025220681111558)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Description from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9696131028422340556)
,p_theme_id=>42
,p_name=>'ICON_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(9696129459962340549)
,p_css_classes=>'t-ContentRow--hideIcon'
,p_group_id=>wwv_flow_api.id(12619025644271111558)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Icon from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9696131463997340556)
,p_theme_id=>42
,p_name=>'MISC_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(9696129459962340549)
,p_css_classes=>'t-ContentRow--hideMisc'
,p_group_id=>wwv_flow_api.id(12619025946402111558)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Misc column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9696131852556340556)
,p_theme_id=>42
,p_name=>'SELECTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(9696129459962340549)
,p_css_classes=>'t-ContentRow--hideSelection'
,p_group_id=>wwv_flow_api.id(12619026349449111559)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Selection column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9696132239661340556)
,p_theme_id=>42
,p_name=>'TITLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(9696129459962340549)
,p_css_classes=>'t-ContentRow--hideTitle'
,p_group_id=>wwv_flow_api.id(12619027032137111559)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Title from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(9696132613256340557)
,p_theme_id=>42
,p_name=>'STYLE_COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(9696129459962340549)
,p_css_classes=>'t-ContentRow--styleCompact'
,p_group_id=>wwv_flow_api.id(12619016212981111552)
,p_template_types=>'REPORT'
,p_help_text=>'This option reduces the padding and font sizes to present a compact display of the same information.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618651072256111497)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(12618648378006111491)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618654234834111500)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(12618651196323111497)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618655675561111502)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_1'
,p_display_name=>'Background 1'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(12618654334910111500)
,p_css_classes=>'t-LoginPage--bg1'
,p_group_id=>wwv_flow_api.id(12618655483444111501)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618655894116111502)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_2'
,p_display_name=>'Background 2'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(12618654334910111500)
,p_css_classes=>'t-LoginPage--bg2'
,p_group_id=>wwv_flow_api.id(12618655483444111501)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618656114885111502)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_3'
,p_display_name=>'Background 3'
,p_display_sequence=>30
,p_page_template_id=>wwv_flow_api.id(12618654334910111500)
,p_css_classes=>'t-LoginPage--bg3'
,p_group_id=>wwv_flow_api.id(12618655483444111501)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618656515319111502)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT_SPLIT'
,p_display_name=>'Split'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(12618654334910111500)
,p_css_classes=>'t-LoginPage--split'
,p_group_id=>wwv_flow_api.id(12618656325105111502)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618659616229111504)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(12618656601537111502)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618662088291111506)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(12618659661155111504)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618663419078111507)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(12618662158027111506)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618663599354111507)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(12618662158027111506)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618666362444111509)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(12618663735593111508)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618668855342111511)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(12618666446766111509)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618670213941111512)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(12618669028501111511)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618670416228111512)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(12618669028501111511)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618671056791111515)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12618670466056111512)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618671493782111516)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618670466056111512)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(12618671322631111516)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618671860086111516)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618670466056111512)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(12618671647500111516)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618672051283111516)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618670466056111512)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(12618671647500111516)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618672471712111516)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618670466056111512)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(12618672260073111516)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618672927758111517)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618670466056111512)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(12618672661113111517)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618673089530111517)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12618670466056111512)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(12618671322631111516)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618973324791111517)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12618670466056111512)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(12618672260073111516)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618973488351111517)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12618670466056111512)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(12618671322631111516)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618973676805111518)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618670466056111512)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(12618672260073111516)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618973937197111518)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618670466056111512)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(12618671322631111516)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618974136186111518)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618670466056111512)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(12618672661113111517)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618976295279111520)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12618975222412111519)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(12618976059051111520)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618976708385111521)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(12618975222412111519)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(12618976464348111520)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618976890422111521)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(12618975222412111519)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(12618976059051111520)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618977120536111521)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(12618975222412111519)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(12618976464348111520)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618977327951111521)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618975222412111519)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618978469118111523)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(12618978249887111523)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618978732126111523)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(12618978249887111523)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618978879471111523)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(12618978249887111523)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618979345270111523)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(12618979100262111523)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618979505242111523)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(12618979100262111523)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618979681209111524)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(12618979100262111523)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618979926285111524)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(12618978249887111523)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618980079116111524)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(12618979100262111523)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618980473661111524)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(12618980290218111524)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618980733812111524)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(12618980290218111524)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618980904490111525)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(12618980290218111524)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618981112888111525)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(12618980290218111524)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618981249080111525)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(12618980290218111524)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618981686698111525)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(12618981499951111525)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618982080599111526)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(12618981908734111525)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618982344290111526)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(12618981499951111525)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618982521540111526)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618982718809111527)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(12618976059051111520)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618982929029111527)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618983136117111527)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(12618981908734111525)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618983315437111527)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618983493718111527)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618983685782111527)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618984124638111527)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(12618983850984111527)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618984328788111528)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(12618983850984111527)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618984464567111528)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618977360010111521)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(12618976059051111520)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618985470695111528)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618984597200111528)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(12618979100262111523)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618985708614111529)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618984597200111528)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(12618979100262111523)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618985890730111529)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12618984597200111528)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(12618979100262111523)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618986105778111529)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12618984597200111528)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(12618979100262111523)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618986314084111529)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618984597200111528)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(12618980290218111524)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618986513614111529)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618984597200111528)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(12618980290218111524)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618986697100111529)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12618984597200111528)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(12618980290218111524)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618986933436111529)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12618984597200111528)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(12618980290218111524)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618987046115111530)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(12618984597200111528)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(12618980290218111524)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618987456012111530)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618984597200111528)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(12618987338304111530)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618987915733111530)
,p_theme_id=>42
,p_name=>'CONRTOLS_POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12618984597200111528)
,p_css_classes=>'t-Region--controlsPosEnd'
,p_group_id=>wwv_flow_api.id(12618987654285111530)
,p_template_types=>'REGION'
,p_help_text=>'Position the expand / collapse button to the end of the region header.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618988063568111530)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618984597200111528)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(12618987338304111530)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618988330158111530)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618984597200111528)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(12618981908734111525)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618988647941111531)
,p_theme_id=>42
,p_name=>'ICONS_PLUS_OR_MINUS'
,p_display_name=>'Plus or Minus'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12618984597200111528)
,p_css_classes=>'t-Region--hideShowIconsMath'
,p_group_id=>wwv_flow_api.id(12618988513707111530)
,p_template_types=>'REGION'
,p_help_text=>'Use the plus and minus icons for the expand and collapse button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618988852768111531)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618984597200111528)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618989107826111531)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618984597200111528)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(12618976059051111520)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618989268164111531)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618984597200111528)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618989473095111531)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12618984597200111528)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(12618976059051111520)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618989656759111531)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618984597200111528)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(12618981908734111525)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618989883510111531)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618984597200111528)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(12618976059051111520)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618990288775111532)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618989958941111532)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618990724631111532)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618989958941111532)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(12618990538186111532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618990864225111532)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618989958941111532)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(12618990538186111532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618991063155111532)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12618989958941111532)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(12618990538186111532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618991462776111533)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618989958941111532)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(12618991302422111532)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618991732618111533)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618989958941111532)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(12618991302422111532)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618991852259111533)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12618989958941111532)
,p_css_classes=>'t-ContentBlock--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618992826073111533)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618991951443111533)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(12618992622174111533)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618993003109111534)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618991951443111533)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(12618976059051111520)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618993412256111534)
,p_theme_id=>42
,p_name=>'ICONS_CIRCULAR'
,p_display_name=>'Circle'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618991951443111533)
,p_css_classes=>'t-HeroRegion--iconsCircle'
,p_group_id=>wwv_flow_api.id(12618993211024111534)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a circle.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618993554530111534)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618991951443111533)
,p_css_classes=>'t-HeroRegion--iconsSquare'
,p_group_id=>wwv_flow_api.id(12618993211024111534)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a square.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618993844617111534)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618991951443111533)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618994042412111534)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618991951443111533)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(12618976059051111520)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618994692021111535)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12618994055892111534)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618994938796111535)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618994055892111534)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618995247781111535)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12618994055892111534)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(12618995125099111535)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618995539894111535)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618994055892111534)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(12618995125099111535)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618995736647111535)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618994055892111534)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618995908796111535)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(12618994055892111534)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618996128261111536)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12618994055892111534)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618996280398111536)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618994055892111534)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(12618995125099111535)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618997230384111537)
,p_theme_id=>42
,p_name=>'ABOVE'
,p_display_name=>'Above'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12618996400720111536)
,p_css_classes=>'js-popup-pos-above'
,p_group_id=>wwv_flow_api.id(12618996979642111536)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout above or typically on top of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618997399665111537)
,p_theme_id=>42
,p_name=>'AFTER'
,p_display_name=>'After'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618996400720111536)
,p_css_classes=>'js-popup-pos-after'
,p_group_id=>wwv_flow_api.id(12618996979642111536)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout after or typically to the right of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618997644596111537)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12618996400720111536)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618997778324111537)
,p_theme_id=>42
,p_name=>'BEFORE'
,p_display_name=>'Before'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618996400720111536)
,p_css_classes=>'js-popup-pos-before'
,p_group_id=>wwv_flow_api.id(12618996979642111536)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout before or typically to the left of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618997946162111537)
,p_theme_id=>42
,p_name=>'BELOW'
,p_display_name=>'Below'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12618996400720111536)
,p_css_classes=>'js-popup-pos-below'
,p_group_id=>wwv_flow_api.id(12618996979642111536)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout below or typically to the bottom of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618998191171111537)
,p_theme_id=>42
,p_name=>'DISPLAY_POPUP_CALLOUT'
,p_display_name=>'Display Popup Callout'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12618996400720111536)
,p_css_classes=>'js-popup-callout'
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add display a callout for the popup. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618998426148111537)
,p_theme_id=>42
,p_name=>'INSIDE'
,p_display_name=>'Inside'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(12618996400720111536)
,p_css_classes=>'js-popup-pos-inside'
,p_group_id=>wwv_flow_api.id(12618996979642111536)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout inside of the parent. This is useful when the parent is sufficiently large, such as a report or large region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618998569313111537)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12618996400720111536)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(12618995125099111535)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618998810949111538)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618996400720111536)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(12618995125099111535)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618999000672111538)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12618996400720111536)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_api.id(12618995125099111535)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618999224928111538)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618996400720111536)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618999380178111538)
,p_theme_id=>42
,p_name=>'REMOVE_PAGE_OVERLAY'
,p_display_name=>'Remove Page Overlay'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12618996400720111536)
,p_css_classes=>'js-popup-noOverlay'
,p_template_types=>'REGION'
,p_help_text=>'This option will display the inline dialog without an overlay on the background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618999580888111538)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618996400720111536)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(12618995125099111535)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618999948238111538)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12618999705964111538)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619000215680111538)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12618999705964111538)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619001053190111539)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12619000338227111539)
,p_css_classes=>'t-Login-region--headerIcon'
,p_group_id=>wwv_flow_api.id(12619000862778111539)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Icon in the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619001261062111539)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12619000338227111539)
,p_css_classes=>'t-Login-region--headerTitle'
,p_group_id=>wwv_flow_api.id(12619000862778111539)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Title in the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619001473853111540)
,p_theme_id=>42
,p_name=>'LOGO_HEADER_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12619000338227111539)
,p_css_classes=>'t-Login-region--headerHidden'
,p_group_id=>wwv_flow_api.id(12619000862778111539)
,p_template_types=>'REGION'
,p_help_text=>'Hides both the Region Icon and Title from the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619002472345111541)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(12618979100262111523)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619002717512111541)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(12618979100262111523)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619002917894111542)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(12618979100262111523)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619003052856111542)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(12618979100262111523)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619003342338111542)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(12618980290218111524)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619003492149111542)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(12618980290218111524)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619003705132111542)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(12618980290218111524)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619003850763111542)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(12618980290218111524)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619004073512111542)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(12618980290218111524)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619004332203111543)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(12618980290218111524)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619004525512111543)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(12618980290218111524)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619004721676111543)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(12618980290218111524)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619004917766111543)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(12618980290218111524)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619005106070111543)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(12618980290218111524)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619005268424111543)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(12618980290218111524)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619005464505111544)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(12618980290218111524)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619005743451111544)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(12618980290218111524)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619005898804111544)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(12618980290218111524)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619006087489111544)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(12618980290218111524)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619006324012111544)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(12618981499951111525)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619006529120111544)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(12618981908734111525)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619006655797111544)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(12618981499951111525)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619006870832111545)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619007073891111545)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(12618976059051111520)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619007343512111545)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(12618976059051111520)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619007469754111545)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(12618981908734111525)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619007720947111545)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619007939007111545)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619008135734111545)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(12618976059051111520)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619008250133111545)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12619001634680111540)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(12618976059051111520)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619009486661111546)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12619008375908111545)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(12619009306496111546)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619009869739111547)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12619008375908111545)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(12619009675664111546)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619010070466111547)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12619008375908111545)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619010253964111547)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12619008375908111545)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(12619009675664111546)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619010728240111547)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12619008375908111545)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(12619010498283111547)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619010914217111547)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12619008375908111545)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(12619010498283111547)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619011292830111547)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12619011011806111547)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(12618990538186111532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619011502256111548)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12619011011806111547)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619011722689111548)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12619011011806111547)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(12618990538186111532)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619011858680111548)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12619011011806111547)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619012798575111548)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12619012042040111548)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(12619012598536111548)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619013032765111548)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12619012042040111548)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(12619012598536111548)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619013201611111549)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12619012042040111548)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619013972585111550)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(12619013472693111550)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(12619013794887111550)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619014351687111551)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12619013472693111550)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(12619014152532111550)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619014614795111551)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12619013472693111550)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(12619013794887111550)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619014825944111551)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12619013472693111550)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(12619014152532111550)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619014985610111551)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12619013472693111550)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(12619013794887111550)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619015242200111551)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12619013472693111550)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(12619014152532111550)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619015397175111551)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(12619013472693111550)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(12619014152532111550)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619015560385111551)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12619013472693111550)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(12619013794887111550)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619015785861111551)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12619013472693111550)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(12619013794887111550)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619015988093111552)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12619013472693111550)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619016401271111552)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12619013472693111550)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(12619016212981111552)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619016611879111552)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(12619013472693111550)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(12619014152532111550)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619016746050111552)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(12619013472693111550)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(12619014152532111550)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619017014154111552)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(12619013472693111550)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(12619014152532111550)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619017179025111552)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12619013472693111550)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(12619016212981111552)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619017407163111552)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12619013472693111550)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(12619014152532111550)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619017834454111553)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(12619017483598111553)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(12619014152532111550)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619018193503111553)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12619017483598111553)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(12619018020219111553)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619018436844111553)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12619017483598111553)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(12619014152532111550)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619018548175111553)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12619017483598111553)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(12619018020219111553)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619018822909111553)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12619017483598111553)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(12619014152532111550)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619018965509111554)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12619017483598111553)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(12619018020219111553)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619019167323111554)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(12619017483598111553)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(12619014152532111550)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619019376571111554)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12619017483598111553)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(12619016212981111552)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619019584835111554)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12619017483598111553)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(12619016212981111552)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619020023253111554)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12619017483598111553)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(12619019825775111554)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619020227052111554)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12619017483598111553)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(12619019825775111554)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619020379053111555)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12619017483598111553)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(12619016212981111552)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619020817813111555)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12619017483598111553)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(12619020584545111555)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619020978451111555)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12619017483598111553)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(12619020584545111555)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619021189803111555)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12619017483598111553)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619021382241111555)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12619017483598111553)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(12619016212981111552)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619021624864111555)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(12619017483598111553)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(12619014152532111550)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619021773173111555)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(12619017483598111553)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(12619018020219111553)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619022177985111556)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12619017483598111553)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(12619021988930111556)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619022387595111556)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12619017483598111553)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(12619021988930111556)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619022642079111556)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(12619017483598111553)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(12619014152532111550)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619022805227111556)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12619017483598111553)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619023431871111557)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12619022912971111556)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(12619023219151111557)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619023618800111557)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12619022912971111556)
,p_css_classes=>'t-Comments--iconsRounded'
,p_group_id=>wwv_flow_api.id(12619021988930111556)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619023814619111557)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12619022912971111556)
,p_css_classes=>'t-Comments--iconsSquare'
,p_group_id=>wwv_flow_api.id(12619021988930111556)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619024039117111557)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12619022912971111556)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(12619023219151111557)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619024595728111558)
,p_theme_id=>42
,p_name=>'ACTIONS_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(12619024110459111557)
,p_css_classes=>'t-ContentRow--hideActions'
,p_group_id=>wwv_flow_api.id(12619024386834111557)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Actions column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619025014072111558)
,p_theme_id=>42
,p_name=>'ALIGNMENT_TOP'
,p_display_name=>'Top'
,p_display_sequence=>100
,p_report_template_id=>wwv_flow_api.id(12619024110459111557)
,p_css_classes=>'t-ContentRow--alignTop'
,p_group_id=>wwv_flow_api.id(12619024783902111558)
,p_template_types=>'REPORT'
,p_help_text=>'Aligns the content to the top of the row. This is useful when you expect that yours rows will vary in height (e.g. some rows will have longer descriptions than others).'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619025359815111558)
,p_theme_id=>42
,p_name=>'DESCRIPTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12619024110459111557)
,p_css_classes=>'t-ContentRow--hideDescription'
,p_group_id=>wwv_flow_api.id(12619025220681111558)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Description from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619025838059111558)
,p_theme_id=>42
,p_name=>'ICON_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12619024110459111557)
,p_css_classes=>'t-ContentRow--hideIcon'
,p_group_id=>wwv_flow_api.id(12619025644271111558)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Icon from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619026218440111558)
,p_theme_id=>42
,p_name=>'MISC_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(12619024110459111557)
,p_css_classes=>'t-ContentRow--hideMisc'
,p_group_id=>wwv_flow_api.id(12619025946402111558)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Misc column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619026609732111559)
,p_theme_id=>42
,p_name=>'SELECTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12619024110459111557)
,p_css_classes=>'t-ContentRow--hideSelection'
,p_group_id=>wwv_flow_api.id(12619026349449111559)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Selection column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619026808023111559)
,p_theme_id=>42
,p_name=>'STYLE_COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(12619024110459111557)
,p_css_classes=>'t-ContentRow--styleCompact'
,p_group_id=>wwv_flow_api.id(12619016212981111552)
,p_template_types=>'REPORT'
,p_help_text=>'This option reduces the padding and font sizes to present a compact display of the same information.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619027235693111559)
,p_theme_id=>42
,p_name=>'TITLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12619024110459111557)
,p_css_classes=>'t-ContentRow--hideTitle'
,p_group_id=>wwv_flow_api.id(12619027032137111559)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Title from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619027603046111559)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12619027281445111559)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(12619014152532111550)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619027757754111560)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12619027281445111559)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(12619014152532111550)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619028011301111560)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12619027281445111559)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(12619014152532111550)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619028169571111560)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12619027281445111559)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(12619014152532111550)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619028393983111560)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12619027281445111559)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619028557801111560)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12619027281445111559)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(12619021988930111556)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619028827381111560)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12619027281445111559)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(12619021988930111556)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619029156270111560)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12619027281445111559)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(12619028971250111560)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619029430583111561)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12619027281445111559)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619029614931111561)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12619027281445111559)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619029805565111561)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12619027281445111559)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619029948914111561)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(12619027281445111559)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(12619014152532111550)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619030229463111561)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(12619027281445111559)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_api.id(12619014152532111550)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619031022293111562)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12619030488845111561)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(12619030828265111562)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619031156041111562)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12619030488845111561)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(12619030828265111562)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619031548693111562)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12619030488845111561)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(12619031389006111562)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619032007834111562)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12619030488845111561)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(12619031750430111562)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619032158728111562)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12619030488845111561)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(12619031750430111562)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619032404334111563)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12619030488845111561)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(12619031750430111562)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619032559361111563)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12619030488845111561)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(12619031389006111562)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619032747722111563)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12619030488845111561)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619033034974111563)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12619030488845111561)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(12619031750430111562)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619033428144111564)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(12619033062887111564)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(12619016212981111552)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619034035459111565)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12619033455262111564)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(12619033754028111564)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619034217328111565)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12619033455262111564)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(12619033754028111564)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619034433265111565)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12619033455262111564)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(12619033754028111564)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619034619204111565)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12619033455262111564)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(12619014152532111550)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619034823607111566)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12619033455262111564)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(12619014152532111550)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619034983048111566)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(12619033455262111564)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(12619033754028111564)
,p_template_types=>'REPORT'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619035169651111566)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(12619033455262111564)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(12619033754028111564)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619035394959111566)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12619033455262111564)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(12619033754028111564)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619035784661111566)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12619035452501111566)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(12619033754028111564)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619035951397111566)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12619035452501111566)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(12619033754028111564)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619036166045111566)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12619035452501111566)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(12619033754028111564)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619036398311111567)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12619035452501111566)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(12619014152532111550)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619036570500111567)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12619035452501111566)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(12619014152532111550)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619036763266111567)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(12619035452501111566)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(12619033754028111564)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619037008356111567)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(12619035452501111566)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(12619033754028111564)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619037228944111568)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12619035452501111566)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(12619033754028111564)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619037797757111569)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12619037306772111568)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619038031771111569)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12619037306772111568)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619038152209111570)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(12619037306772111568)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619038346325111570)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(12619037306772111568)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619038577339111570)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619037306772111568)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619039025522111570)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12619037306772111568)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(12619038762381111570)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619039195726111571)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(12619037306772111568)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619039376028111571)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(12619037306772111568)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619039594866111571)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(12619037306772111568)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619039747860111571)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12619037306772111568)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(12619038762381111570)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619040175834111571)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12619037306772111568)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(12619039953221111571)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619040380982111571)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12619037306772111568)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(12619039953221111571)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619040557951111572)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619037306772111568)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(12619039953221111571)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619040770196111572)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619037306772111568)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619040992024111572)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(12619037306772111568)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(12619039953221111571)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619041174539111572)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(12619037306772111568)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(12619039953221111571)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619041595423111572)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619041253138111572)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619041994684111573)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619041253138111572)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(12619041769181111573)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619042199603111573)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12619041253138111572)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619042390674111573)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12619041253138111572)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(12619041769181111573)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619042591637111573)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12619041253138111572)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619042834084111573)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12619041253138111572)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(12619041769181111573)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619042958787111574)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(12619041253138111572)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619043215910111574)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619041253138111572)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(12619038762381111570)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619043397647111574)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(12619041253138111572)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(12619038762381111570)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619043618312111574)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(12619041253138111572)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619043963796111574)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619041253138111572)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(12619043842867111574)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619044163620111574)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12619041253138111572)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(12619038762381111570)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619044580113111574)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619041253138111572)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(12619044409163111574)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619044798115111575)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12619041253138111572)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(12619044409163111574)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619045011509111575)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12619041253138111572)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619045151479111575)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12619041253138111572)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(12619038762381111570)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619045391899111575)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(12619041253138111572)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619045554282111575)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(12619041253138111572)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(12619041769181111573)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619046035950111575)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619041253138111572)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(12619045787367111575)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619046160951111576)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12619041253138111572)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(12619045787367111575)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619046415058111576)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12619041253138111572)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(12619043842867111574)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619046587196111576)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(12619041253138111572)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619046757920111576)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619041253138111572)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619047237384111576)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619046893952111576)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(12619038762381111570)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619047365235111576)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12619046893952111576)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619047628068111577)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619046893952111576)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619047841924111577)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12619046893952111576)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619048219120111577)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12619046893952111576)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(12619048035373111577)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619048380687111577)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619046893952111576)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(12619048035373111577)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619048842904111577)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619048503125111577)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619048981579111578)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12619048503125111577)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619049221527111578)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12619048503125111577)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619049403297111578)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(12619048503125111577)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619049617890111578)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(12619048503125111577)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619049759580111578)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619048503125111577)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(12619045787367111575)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619049968436111578)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12619048503125111577)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(12619045787367111575)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619050419009111579)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619048503125111577)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(12619050228201111578)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619050568641111579)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12619048503125111577)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619050756019111579)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12619048503125111577)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619051012091111579)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619048503125111577)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619051149116111579)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(12619048503125111577)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619051618119111580)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(12619051321472111579)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619051838221111580)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619051321472111579)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619052027640111580)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(12619051321472111579)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619052245169111580)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12619051321472111579)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619052614222111581)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619052323958111580)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619052845244111581)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12619052323958111580)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619053230494111581)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619052929128111581)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619053556782111582)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619053250810111581)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619053955982111582)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12619053250810111581)
,p_css_classes=>'js-navCollapsed--hidden'
,p_group_id=>wwv_flow_api.id(12619053770027111582)
,p_template_types=>'LIST'
,p_help_text=>'Completely hide the navigation menu when it is collapsed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619054176361111582)
,p_theme_id=>42
,p_name=>'ICON_DEFAULT'
,p_display_name=>'Icon (Default)'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619053250810111581)
,p_css_classes=>'js-navCollapsed--default'
,p_group_id=>wwv_flow_api.id(12619053770027111582)
,p_template_types=>'LIST'
,p_help_text=>'Display icons when the navigation menu is collapsed for large screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619054433861111583)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12619053250810111581)
,p_css_classes=>'t-TreeNav--styleA'
,p_group_id=>wwv_flow_api.id(12619038762381111570)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation A'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619054607620111583)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12619053250810111581)
,p_css_classes=>'t-TreeNav--styleB'
,p_group_id=>wwv_flow_api.id(12619038762381111570)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation B'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619054798717111583)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Classic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619053250810111581)
,p_css_classes=>'t-TreeNav--classic'
,p_group_id=>wwv_flow_api.id(12619038762381111570)
,p_template_types=>'LIST'
,p_help_text=>'Classic Style'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619055171099111583)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12619054934966111583)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(12619044409163111574)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619055402450111583)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(12619054934966111583)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619055614848111584)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619054934966111583)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(12619044409163111574)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619055758662111584)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619054934966111583)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(12619050228201111578)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619056011150111584)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12619054934966111583)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(12619038762381111570)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619056240174111584)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619054934966111583)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(12619038762381111570)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619056423035111584)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(12619054934966111583)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(12619050228201111578)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619056760337111585)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619056539901111584)
,p_css_classes=>'t-MegaMenu--layout2Cols'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619057037569111585)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12619056539901111584)
,p_css_classes=>'t-MegaMenu--layout3Cols'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619057149813111585)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12619056539901111584)
,p_css_classes=>'t-MegaMenu--layout4Cols'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619057392861111585)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(12619056539901111584)
,p_css_classes=>'t-MegaMenu--layout5Cols'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619057622127111586)
,p_theme_id=>42
,p_name=>'CUSTOM'
,p_display_name=>'Custom'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(12619056539901111584)
,p_css_classes=>'t-MegaMenu--layoutCustom'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619057844718111586)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12619056539901111584)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Displays a callout arrow that points to where the menu was activated from.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619057984103111586)
,p_theme_id=>42
,p_name=>'FULL_WIDTH'
,p_display_name=>'Full Width'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619056539901111584)
,p_css_classes=>'t-MegaMenu--fullWidth'
,p_template_types=>'LIST'
,p_help_text=>'Stretches the menu to fill the width of the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619058201306111586)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(12619056539901111584)
,p_css_classes=>'t-MegaMenu--layoutStacked'
,p_group_id=>wwv_flow_api.id(12619037619392111569)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619058567693111586)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(12619058272989111586)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619058823731111586)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(12619058272989111586)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619059028001111586)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(12619058272989111586)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619059218566111587)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(12619058272989111586)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619059804811111587)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(12619059318381111587)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_api.id(12619059622765111587)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619059991276111587)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(12619059318381111587)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_api.id(12619059622765111587)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619060406506111587)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12619059318381111587)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_api.id(12619060202288111587)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619060553704111588)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619059318381111587)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_api.id(12619060202288111587)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619060816848111588)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12619059318381111587)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_api.id(12619060202288111587)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619061423783111588)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619060911602111588)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(12619061164574111588)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619061597601111588)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12619060911602111588)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(12619061164574111588)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619061815483111588)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12619060911602111588)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(12619061164574111588)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619061954021111589)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619060911602111588)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619062211791111589)
,p_theme_id=>42
,p_name=>'WIZARD_PROGRESS_LINKS'
,p_display_name=>'Make Wizard Steps Clickable'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(12619060911602111588)
,p_css_classes=>'js-wizardProgressLinks'
,p_template_types=>'LIST'
,p_help_text=>'This option will make the wizard steps clickable links.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619063431634111591)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(12619063026514111590)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(12619063161684111591)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619063550592111592)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(12619063026514111590)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(12619063161684111591)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619063979738111592)
,p_theme_id=>42
,p_name=>'HIDE_LABEL_ON_MOBILE'
,p_display_name=>'Hide Label on Mobile'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(12619063794326111592)
,p_css_classes=>'t-Button--mobileHideLabel'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button label on small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619064406143111592)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(12619063794326111592)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(12619064194685111592)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619064597022111592)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(12619063794326111592)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(12619063161684111591)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619064787107111592)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(12619063794326111592)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(12619064194685111592)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619064954632111593)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(12619063794326111592)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(12619063161684111591)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619066927771111604)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(12619066687600111603)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619067262369111604)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(12619067052309111604)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619067505750111604)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(12619066687600111603)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619067680074111604)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(12619067052309111604)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619067905368111605)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(12619066687600111603)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619068106416111605)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(12619067052309111604)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619068290857111605)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(12619066687600111603)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619068476188111605)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(12619067052309111604)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619068870637111605)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(12619068706219111605)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619069345495111605)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(12619069051854111605)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619069501611111606)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(12619068706219111605)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619069722739111606)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(12619069051854111605)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619069930058111606)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(12619068706219111605)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619070076783111606)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(12619069051854111605)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619070284136111606)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(12619068706219111605)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619070526096111606)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(12619069051854111605)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619070852282111606)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(12619070690852111606)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619071277526111607)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(12619071080498111607)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619071504450111607)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(12619070690852111606)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619071697453111607)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(12619071080498111607)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619071874358111607)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(12619070690852111606)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619072064340111607)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(12619071080498111607)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619072319005111607)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(12619070690852111606)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619072452701111608)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(12619071080498111607)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619072847364111608)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(12619072648674111608)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619073274849111608)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(12619073124555111608)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619073476607111608)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(12619072648674111608)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619073717642111609)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(12619073124555111608)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619073899680111609)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(12619072648674111608)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619074142141111609)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(12619073124555111608)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619074269474111609)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(12619072648674111608)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619074482498111609)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(12619073124555111608)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619074894356111610)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(12619074688754111610)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619075261376111610)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(12619075089299111610)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619075696159111610)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(12619075512104111610)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619076058472111610)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(12619075873565111610)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619076477774111611)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(12619076266437111611)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619076922964111611)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(12619076655122111611)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619077283616111611)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(12619077104857111611)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619077471478111611)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(12619077104857111611)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619077690941111612)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(12619075089299111610)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619077889641111612)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(12619075512104111610)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619078127016111612)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(12619075873565111610)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619078325319111612)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(12619076266437111611)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619078705561111612)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(12619078504177111612)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619078856387111612)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(12619078504177111612)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619079092292111612)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(12619078504177111612)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619079294740111613)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(12619074688754111610)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619079533732111613)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(12619077104857111611)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619079655599111613)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(12619076655122111611)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619080116260111613)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(12619079881680111613)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619080272957111613)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(12619074688754111610)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619080491730111613)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(12619076655122111611)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619080713803111613)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(12619074688754111610)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619081059030111614)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(12619080906621111614)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619081517258111614)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(12619081330209111614)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619081873720111615)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(12619081652797111614)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619082259095111615)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(12619082103708111615)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619082499651111615)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(12619082103708111615)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619082917701111615)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(12619082733599111615)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619083219744111615)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(12619081330209111614)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619083705253111616)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(12619083544422111616)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619084116908111616)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(12619083925965111616)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619084509298111617)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(12619084274246111617)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619084856980111617)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(12619084705968111617)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619085066769111617)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619085382654111617)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(12619083544422111616)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619086009431111618)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_api.id(12619085790877111618)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(12619088886783111631)
,p_build_option_name=>unistr('\6A5F\80FD: \60C5\5831\30DA\30FC\30B8')
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>unistr('\300C\3053\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306B\3064\3044\3066\300D\30DA\30FC\30B8\3002')
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(13209710387402387908)
,p_build_option_name=>unistr('\30B3\30FC\30EB\30BB\30F3\30BF\30FC\76F8\8AC7\4EF6\6570')
,p_build_option_status=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(13209712718223391405)
,p_build_option_name=>unistr('\53D7\8A3A\7A93\53E3\76F8\8AC7\4EF6\6570')
,p_build_option_status=>'EXCLUDE'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(13241462976791644300)
,p_build_option_name=>unistr('\81EA\52D5\30A2\30C3\30D7\30C7\30FC\30C8')
,p_build_option_status=>'EXCLUDE'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(12619089912390111634)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>unistr('\3053\306E\524A\9664\64CD\4F5C\3092\5B9F\884C\3057\307E\3059\304B\3002')
);
end;
/
prompt --application/shared_components/security/authentications/application_express認証
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(12618647265536111486)
,p_name=>unistr('Application Express\8A8D\8A3C')
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/security/authentications/no_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(12618859475591087884)
,p_name=>'No Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(12619086727601111623)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>unistr('\30C7\30B9\30AF\30C8\30C3\30D7')
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>0
,p_navigation_list_position=>'TOP'
,p_navigation_list_template_id=>wwv_flow_api.id(12619058272989111586)
,p_nav_list_template_options=>'#DEFAULT#:js-tabLike'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(12619086359380111621)
,p_nav_bar_list_template_id=>wwv_flow_api.id(12619052929128111581)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(12619086727601111623)
,p_name=>unistr('\30B0\30ED\30FC\30D0\30EB\30FB\30DA\30FC\30B8 - \30C7\30B9\30AF\30C8\30C3\30D7')
,p_step_title=>unistr('\30B0\30ED\30FC\30D0\30EB\30FB\30DA\30FC\30B8 - \30C7\30B9\30AF\30C8\30C3\30D7')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20200409095815'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(12619086727601111623)
,p_name=>unistr('\30DB\30FC\30E0')
,p_alias=>'HOME'
,p_step_title=>unistr('COVID19\60A3\8005\60C5\5831')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20200510002336'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11125546593254356390)
,p_plug_name=>unistr('\967D\6027\60A3\8005\306E\5C5E\6027')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12619001634680111540)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'COVID19_PATIENTS'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P1_MUNICIPALITY is null',
'or',
unistr('"\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = :P1_MUNICIPALITY')))
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1_MUNICIPALITY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\967D\6027\60A3\8005\306E\5C5E\6027')
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(11125546666270356391)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>4144673620385629031
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11125546821668356392)
,p_db_column_name=>'LINE_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'No'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11125546913022356393)
,p_db_column_name=>unistr('\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9')
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'000000'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11125546965851356394)
,p_db_column_name=>unistr('\90FD\9053\5E9C\770C\540D')
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('\90FD\9053\5E9C\770C\540D')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11125547107338356395)
,p_db_column_name=>unistr('\5E02\533A\753A\6751\540D')
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('\5E02\533A\753A\6751\540D')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11125547245619356396)
,p_db_column_name=>unistr('\516C\8868_\5E74\6708\65E5')
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('\516C\8868_\5E74\6708\65E5')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'YYYY-MM-DD'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11125547343231356397)
,p_db_column_name=>unistr('\66DC\65E5')
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('\66DC\65E5')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11125547409363356398)
,p_db_column_name=>unistr('\767A\75C7_\5E74\6708\65E5')
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('\767A\75C7_\5E74\6708\65E5')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'YYYY-MM-DD'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11125547509816356399)
,p_db_column_name=>unistr('\60A3\8005_\5C45\4F4F\5730')
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('\60A3\8005_\5C45\4F4F\5730')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11125547555418356400)
,p_db_column_name=>unistr('\60A3\8005_\5E74\4EE3')
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>unistr('\60A3\8005_\5E74\4EE3')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11125547714986356401)
,p_db_column_name=>unistr('\60A3\8005_\6027\5225')
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>unistr('\60A3\8005_\6027\5225')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6729315429327515530)
,p_db_column_name=>unistr('\60A3\8005_\8077\696D')
,p_display_order=>110
,p_column_identifier=>'S'
,p_column_label=>unistr('\60A3\8005_\8077\696D')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11125547921986356403)
,p_db_column_name=>unistr('\60A3\8005_\72B6\614B')
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>unistr('\60A3\8005_\72B6\614B')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11125547995070356404)
,p_db_column_name=>unistr('\60A3\8005_\75C7\72B6')
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>unistr('\60A3\8005_\75C7\72B6')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6729314852617515525)
,p_db_column_name=>unistr('\60A3\8005_\6E21\822A\6B74\306E\6709\7121\30D5\30E9\30B0')
,p_display_order=>150
,p_column_identifier=>'Q'
,p_column_label=>unistr('\60A3\8005_\6E21\822A\6B74\306E\6709\7121\30D5\30E9\30B0')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6729314931836515526)
,p_db_column_name=>unistr('\60A3\8005_\9000\9662\6E08\30D5\30E9\30B0')
,p_display_order=>160
,p_column_identifier=>'R'
,p_column_label=>unistr('\60A3\8005_\9000\9662\6E08\30D5\30E9\30B0')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11125548181164356406)
,p_db_column_name=>unistr('\5099\8003')
,p_display_order=>170
,p_column_identifier=>'O'
,p_column_label=>unistr('\5099\8003')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(12618967230235626621)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'56380942'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>unistr('\90FD\9053\5E9C\770C\540D:LINE_NO:\516C\8868_\5E74\6708\65E5:\66DC\65E5:\60A3\8005_\5C45\4F4F\5730:\60A3\8005_\5E74\4EE3:\60A3\8005_\6027\5225:\60A3\8005_\9000\9662\6E08\30D5\30E9\30B0:')
,p_sort_column_1=>unistr('\516C\8868_\5E74\6708\65E5')
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'LINE_NO'
,p_sort_direction_2=>'DESC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(12774122679909585262)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>unistr('\65B0\898F\967D\6027\60A3\8005\6570')
,p_report_seq=>10
,p_report_type=>'CHART'
,p_report_alias=>'57932497'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>unistr('LINE_NO:\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9:\90FD\9053\5E9C\770C\540D:\5E02\533A\753A\6751\540D:\516C\8868_\5E74\6708\65E5:\66DC\65E5:\767A\75C7_\5E74\6708\65E5:\60A3\8005_\5C45\4F4F\5730:\60A3\8005_\5E74\4EE3:\60A3\8005_\6027\5225:\60A3\8005_\72B6\614B:\60A3\8005_\75C7\72B6:\5099\8003')
,p_sort_column_1=>unistr('\516C\8868_\5E74\6708\65E5')
,p_sort_direction_1=>'DESC'
,p_chart_type=>'bar'
,p_chart_label_column=>unistr('\516C\8868_\5E74\6708\65E5')
,p_chart_value_column=>'LINE_NO'
,p_chart_aggregate=>'COUNT'
,p_chart_value_title=>unistr('\65B0\898F\611F\67D3\8005\6570')
,p_chart_sorting=>'LABEL_ASC'
,p_chart_orientation=>'vertical'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(12800668996454814305)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>unistr('\967D\6027\60A3\8005\7537\5973\6BD4')
,p_report_seq=>10
,p_report_type=>'CHART'
,p_report_alias=>'58197960'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>unistr('LINE_NO:\516C\8868_\5E74\6708\65E5:\66DC\65E5:\60A3\8005_\5C45\4F4F\5730:\60A3\8005_\5E74\4EE3:\60A3\8005_\6027\5225')
,p_sort_column_1=>'LINE_NO'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>unistr('\516C\8868_\5E74\6708\65E5')
,p_sort_direction_2=>'DESC'
,p_chart_type=>'pie'
,p_chart_label_column=>unistr('\60A3\8005_\6027\5225')
,p_chart_value_column=>'LINE_NO'
,p_chart_aggregate=>'COUNT'
,p_chart_sorting=>'DEFAULT'
,p_chart_orientation=>'vertical'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(13210856665301821380)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>unistr('\5E74\4EE3\5225\967D\6027\60A3\8005\6570')
,p_report_seq=>10
,p_report_type=>'CHART'
,p_report_alias=>'62299837'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>unistr('LINE_NO:\516C\8868_\5E74\6708\65E5:\66DC\65E5:\60A3\8005_\5C45\4F4F\5730:\60A3\8005_\5E74\4EE3:\60A3\8005_\6027\5225')
,p_sort_column_1=>'LINE_NO'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>unistr('\516C\8868_\5E74\6708\65E5')
,p_sort_direction_2=>'DESC'
,p_chart_type=>'pie'
,p_chart_label_column=>unistr('\60A3\8005_\5E74\4EE3')
,p_chart_value_column=>'LINE_NO'
,p_chart_aggregate=>'COUNT'
,p_chart_sorting=>'LABEL_ASC'
,p_chart_orientation=>'vertical'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7840994180511778448)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11125546593254356390)
,p_button_name=>'B_OPEN_HOME'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12619063719926111592)
,p_button_image_alt=>unistr('\81EA\6CBB\4F53\306E\30B5\30A4\30C8\3092\958B\304F')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14035730832425662304)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(11125546593254356390)
,p_button_name=>'B_OPEN_DATA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12619063719926111592)
,p_button_image_alt=>unistr('\30C7\30FC\30BF\63B2\8F09\5148\3092\958B\304F')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13710185586729242862)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(11125546593254356390)
,p_button_name=>'B_CSV'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12619063719926111592)
,p_button_image_alt=>'CSV'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13710185735434242863)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(11125546593254356390)
,p_button_name=>'B_JSON'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12619063719926111592)
,p_button_image_alt=>'JSON'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7840992838316778435)
,p_name=>'P1_LAST_UPDATE_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(11125546593254356390)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\6700\7D42\30A2\30C3\30D7\30C7\30FC\30C8')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LAST_UPDATE_DATE',
'from COVID19_MUNICIPALITIES',
'where ',
'CODE = :P1_MUNICIPALITY'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(12619062584277111590)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12773926191492551968)
,p_name=>'P1_PATIENTS_LAST_REFRESH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(11125546593254356390)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\6700\65B0\30C7\30FC\30BF')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select max("\516C\8868_\5E74\6708\65E5") as latest_data'),
'from COVID19_PATIENTS',
'where ',
unistr('"\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = :P1_MUNICIPALITY')))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(12619062584277111590)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12773927188499551978)
,p_name=>'P1_MUNICIPALITY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11125546593254356390)
,p_item_default=>'130001'
,p_prompt=>unistr('\90FD\9053\5E9C\770C')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name || '' - '' || to_char(code, ''000000'') as disp_value,',
'       code as ret_value',
'from COVID19_MUNICIPALITIES',
'order by code',
' '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>unistr('- \672A\6307\5B9A -')
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(12619062584277111590)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14035730558971662301)
,p_name=>'P1_HOME_URL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(11125546593254356390)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14035730708100662303)
,p_name=>'P1_DATA_URL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(11125546593254356390)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13710185779172242864)
,p_name=>unistr('CSV\30C0\30A6\30F3\30ED\30FC\30C9')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(13710185586729242862)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13710185852737242865)
,p_event_id=>wwv_flow_api.id(13710185779172242864)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.open("/pls/apex/covid19jp/patients/csv/" + apex.item("P1_MUNICIPALITY").getValue(),',
'            "_blank");'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13710185954882242866)
,p_name=>unistr('JSON\30C0\30A6\30F3\30ED\30FC\30C9')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(13710185735434242863)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13710186063446242867)
,p_event_id=>wwv_flow_api.id(13710185954882242866)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.open("/pls/apex/covid19jp/patients/json/" + apex.item("P1_MUNICIPALITY").getValue(),',
'            "_blank");'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7840992574192778432)
,p_name=>unistr('\30EC\30DD\30FC\30C8\306E\66F4\65B0')
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_MUNICIPALITY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7840992607992778433)
,p_event_id=>wwv_flow_api.id(7840992574192778432)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11125546593254356390)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7840992793521778434)
,p_event_id=>wwv_flow_api.id(7840992574192778432)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_PATIENTS_LAST_REFRESH'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select max("\516C\8868_\5E74\6708\65E5") as latest_data'),
'from COVID19_PATIENTS',
'where ',
unistr('"\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = :P1_MUNICIPALITY')))
,p_attribute_07=>'P1_MUNICIPALITY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7840992967365778436)
,p_event_id=>wwv_flow_api.id(7840992574192778432)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_LAST_UPDATE_DATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select last_update_date',
'from COVID19_MUNICIPALITIES',
'where ',
'code = :P1_MUNICIPALITY'))
,p_attribute_07=>'P1_MUNICIPALITY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14035730632687662302)
,p_event_id=>wwv_flow_api.id(7840992574192778432)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_HOME_URL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select home_url from covid19_municipalities where code = :P1_MUNICIPALITY'
,p_attribute_07=>'P1_MUNICIPALITY'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14035730915619662305)
,p_event_id=>wwv_flow_api.id(7840992574192778432)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_DATA_URL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select official_site_url from covid19_municipalities where code = :P1_MUNICIPALITY'
,p_attribute_07=>'P1_MUNICIPALITY'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7840994206946778449)
,p_name=>unistr('\30DB\30FC\30E0\3092\958B\304F')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7840994180511778448)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7840994376695778450)
,p_event_id=>wwv_flow_api.id(7840994206946778449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(apex.item("P1_HOME_URL").getValue());'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14035731099272662306)
,p_name=>unistr('\30C7\30FC\30BF\3092\958B\304F')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(14035730832425662304)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14035731136019662307)
,p_event_id=>wwv_flow_api.id(14035731099272662306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(apex.item("P1_DATA_URL").getValue());'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(12619086727601111623)
,p_name=>unistr('\90FD\9053\5E9C\770C\30C7\30FC\30BF\4E00\89A7')
,p_alias=>'UPDATE_DATA'
,p_step_title=>unistr('\90FD\9053\5E9C\770C\30C7\30FC\30BF\4E00\89A7')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'div.urlbox {',
'  width: 60em;',
'  height: 2em;',
'  overflow: scroll;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20200505004438'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(8546984285288391917)
,p_name=>unistr('\90FD\9053\5E9C\770C\30C7\30FC\30BF\4E00\89A7')
,p_template=>wwv_flow_api.id(12618999705964111538)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"CODE",',
'"NAME" as "TITLE",',
'"NOTE" as "DESCRIPTION",',
'"OPEN_DATA_URL",',
'"LOAD_PROC_NAME",',
'"OFFICIAL_SITE_URL",',
'case when "LOAD_PROC_NAME" is not null then',
'apex_page.get_url(p_page => 2,',
'                  p_items => ''P2_MUNIC_CODE,P2_PROC_NAME,P2_URL'',',
'                  p_clear_cache => 2,',
'                  p_values => "CODE" || '','' || "LOAD_PROC_NAME" ',
'                  || '','' || "OPEN_DATA_URL")',
'else',
'    null',
'end "ACTIONS",',
'apex_page.get_url(p_page => 3,',
'                 p_items => ''P3_CODE'',',
'                 p_clear_cache => 3,',
'                 p_values => "CODE")',
'as "EDIT_LINK",',
'sys.dbms_lob.getlength("CONTENT_BLOB") "CONTENT_BLOB"',
'from "COVID19_MUNICIPALITIES"'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(9696129459962340549)
,p_query_num_rows=>47
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'Y'
,p_csv_output_link_text=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9')
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8546984690088391917)
,p_query_column_id=>1
,p_column_alias=>'CODE'
,p_column_display_sequence=>1
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_CODE:\#CODE#\'
,p_column_linktext=>'<span aria-label="&#x7DE8;&#x96C6;"><span class="fa fa-edit" aria-hidden="true" title="&#x7DE8;&#x96C6;"></span></span>'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7840991155292778418)
,p_query_column_id=>2
,p_column_alias=>'TITLE'
,p_column_display_sequence=>6
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7840991243086778419)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>7
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'MARKDOWN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8546985884102391921)
,p_query_column_id=>4
,p_column_alias=>'OPEN_DATA_URL'
,p_column_display_sequence=>3
,p_column_heading=>'Open Data Url'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_report_column_width=>50
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8546986294627391921)
,p_query_column_id=>5
,p_column_alias=>'LOAD_PROC_NAME'
,p_column_display_sequence=>4
,p_column_heading=>unistr('\30C7\30FC\30BF\30ED\30FC\30C9\30FB\30D7\30ED\30B7\30FC\30B8\30E3\30FC\540D')
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8546986607804391922)
,p_query_column_id=>6
,p_column_alias=>'OFFICIAL_SITE_URL'
,p_column_display_sequence=>2
,p_column_heading=>unistr('\30C7\30FC\30BF\63B2\8F09\5143URL')
,p_use_as_row_header=>'N'
,p_column_link=>'#OFFICIAL_SITE_URL#'
,p_column_linktext=>'#OFFICIAL_SITE_URL#'
,p_column_link_attr=>'target="_blank"'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7840991943772778426)
,p_query_column_id=>7
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>8
,p_column_heading=>'Actions'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7840992165041778428)
,p_query_column_id=>8
,p_column_alias=>'EDIT_LINK'
,p_column_display_sequence=>9
,p_column_heading=>'Edit Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8546987402220391922)
,p_query_column_id=>9
,p_column_alias=>'CONTENT_BLOB'
,p_column_display_sequence=>5
,p_column_heading=>'BLOB'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:COVID19_MUNICIPALITIES:CONTENT_BLOB:CODE::::::attachment::'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7840990832672778415)
,p_name=>'P2_PROC_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8546984285288391917)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7840990911924778416)
,p_name=>'P2_URL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8546984285288391917)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7840991068944778417)
,p_name=>'P2_MUNIC_CODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(8546984285288391917)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8546988260077391923)
,p_name=>unistr('\30EC\30DD\30FC\30C8\306E\7DE8\96C6 - \30C0\30A4\30A2\30ED\30B0\306E\30AF\30ED\30FC\30BA')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(8546984285288391917)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8546988743391391924)
,p_event_id=>wwv_flow_api.id(8546988260077391923)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(8546984285288391917)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7840992074221778427)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30A2\30C3\30D7\30C7\30FC\30C8')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_sql varchar2(400);',
'  p_proc_name varchar2(200);',
'  p_url       varchar2(400);',
'  p_municipality number;',
'begin',
'  p_proc_name := :P2_PROC_NAME;',
'  p_url       := :P2_URL;',
'  p_municipality := to_number(:P2_MUNIC_CODE);',
'  l_sql := ''begin '' || p_proc_name || ''(:1, :2); end;'';',
'  execute immediate l_sql using p_municipality, p_url;',
'  update covid19_municipalities set last_update_date = sysdate',
'  where code = p_municipality;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P2_PROC_NAME'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(12619086727601111623)
,p_name=>unistr('\90FD\9053\5E9C\770C\30C7\30FC\30BF\7DE8\96C6')
,p_alias=>'EDIT_PREF'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\90FD\9053\5E9C\770C\30C7\30FC\30BF\7DE8\96C6')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20200509072427'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8546973017815391904)
,p_plug_name=>unistr('\90FD\9053\5E9C\770C\30C7\30FC\30BF\7DE8\96C6')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12618974192448111518)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'COVID19_MUNICIPALITIES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8546979659418391911)
,p_plug_name=>unistr('\30DC\30BF\30F3')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12618975222412111519)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8546980030680391911)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8546979659418391911)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12619063719926111592)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8546981648597391913)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8546979659418391911)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12619063719926111592)
,p_button_image_alt=>unistr('\524A\9664')
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P3_CODE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8546982043343391914)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(8546979659418391911)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12619063719926111592)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5909\66F4\306E\9069\7528')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P3_CODE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8546982471532391914)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(8546979659418391911)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12619063719926111592)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4F5C\6210')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P3_CODE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7840993892741778445)
,p_name=>'P3_LAST_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(8546973017815391904)
,p_item_source_plug_id=>wwv_flow_api.id(8546973017815391904)
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7840993953695778446)
,p_name=>'P3_HOME_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(8546973017815391904)
,p_item_source_plug_id=>wwv_flow_api.id(8546973017815391904)
,p_prompt=>unistr('\81EA\6CBB\4F53\30DB\30FC\30E0URL')
,p_source=>'HOME_URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>400
,p_field_template=>wwv_flow_api.id(12619062584277111590)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8546973335533391904)
,p_name=>'P3_CODE'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8546973017815391904)
,p_item_source_plug_id=>wwv_flow_api.id(8546973017815391904)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Code'
,p_source=>'CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(12619062584277111590)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8546973754888391905)
,p_name=>'P3_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8546973017815391904)
,p_item_source_plug_id=>wwv_flow_api.id(8546973017815391904)
,p_prompt=>unistr('\90FD\9053\5E9C\770C\540D')
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(12619062584277111590)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8546974580870391905)
,p_name=>'P3_OPEN_DATA_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(8546973017815391904)
,p_item_source_plug_id=>wwv_flow_api.id(8546973017815391904)
,p_prompt=>unistr('\30AA\30FC\30D7\30F3\30FB\30C7\30FC\30BFURL')
,p_source=>'OPEN_DATA_URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>400
,p_cHeight=>2
,p_field_template=>wwv_flow_api.id(12619062584277111590)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8546974940546391906)
,p_name=>'P3_LOAD_PROC_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(8546973017815391904)
,p_item_source_plug_id=>wwv_flow_api.id(8546973017815391904)
,p_prompt=>unistr('\30C7\30FC\30BF\30ED\30FC\30C9\30FB\30D7\30ED\30B7\30FC\30B8\30E3\30FC\540D')
,p_source=>'LOAD_PROC_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_field_template=>wwv_flow_api.id(12619062584277111590)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8546975383567391906)
,p_name=>'P3_OFFICIAL_SITE_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(8546973017815391904)
,p_item_source_plug_id=>wwv_flow_api.id(8546973017815391904)
,p_prompt=>unistr('\30C7\30FC\30BF\63B2\8F09\5143URL')
,p_source=>'OFFICIAL_SITE_URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>400
,p_field_template=>wwv_flow_api.id(12619062584277111590)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8546975709881391906)
,p_name=>'P3_NOTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(8546973017815391904)
,p_item_source_plug_id=>wwv_flow_api.id(8546973017815391904)
,p_prompt=>unistr('\8AAC\660E')
,p_source=>'NOTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_MARKDOWN_EDITOR'
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(12619062584277111590)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'SIMPLE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8546976108265391907)
,p_name=>'P3_CONTENT_BLOB'
,p_source_data_type=>'BLOB'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(8546973017815391904)
,p_item_source_plug_id=>wwv_flow_api.id(8546973017815391904)
,p_prompt=>unistr('\30AD\30E3\30C3\30B7\30E5\3055\308C\305F\30D5\30A1\30A4\30EB')
,p_source=>'CONTENT_BLOB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(12619062584277111590)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8546980101340391911)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(8546980030680391911)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8546980900224391912)
,p_event_id=>wwv_flow_api.id(8546980101340391911)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8546983257736391915)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(8546973017815391904)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\30D7\30ED\30BB\30B9\30FB\30D5\30A9\30FC\30E0\90FD\9053\5E9C\770C\30C7\30FC\30BF\7DE8\96C6')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8546983652351391916)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\30C0\30A4\30A2\30ED\30B0\3092\9589\3058\308B')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8546982873904391914)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(8546973017815391904)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\671F\5316\30D5\30A9\30FC\30E0\90FD\9053\5E9C\770C\30C7\30FC\30BF\7DE8\96C6')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(12619086727601111623)
,p_name=>unistr('\30ED\30B0\30A4\30F3\30FB\30DA\30FC\30B8')
,p_alias=>'LOGIN'
,p_step_title=>unistr('\6771\4EAC\90FD\65B0\578B\30B3\30ED\30CA\60C5\5831 - \30B5\30A4\30F3\30A4\30F3')
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(12618654334910111500)
,p_page_template_options=>'#DEFAULT#:t-LoginPage--split:t-LoginPage--bg1'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20200505043318'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12619090950021111640)
,p_plug_name=>unistr('COVID19\60A3\8005\60C5\5831')
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12619000338227111539)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12619095929766111683)
,p_plug_name=>unistr('\8A00\8A9E\30BB\30EC\30AF\30BF')
,p_parent_plug_id=>wwv_flow_api.id(12619090950021111640)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12618974192448111518)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12619093957360111681)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(12619090950021111640)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12619063719926111592)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\30B5\30A4\30F3\30A4\30F3')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12619091432996111642)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12619090950021111640)
,p_prompt=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_placeholder=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(12619062291620111589)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12619092104043111643)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12619090950021111640)
,p_prompt=>unistr('\30D1\30B9\30EF\30FC\30C9')
,p_placeholder=>unistr('\30D1\30B9\30EF\30FC\30C9')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(12619062291620111589)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12619093143692111680)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12619090950021111640)
,p_prompt=>unistr('\30E6\30FC\30B6\30FC\540D\3092\8A18\61B6')
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(12619092421805111643)||'.'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_field_template=>wwv_flow_api.id(12619062291620111589)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
unistr('\3053\306E\30C1\30A7\30C3\30AF\30FB\30DC\30C3\30AF\30B9\3092\9078\629E\3059\308B\3068\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\3067\306F\3001"LOGIN_USERNAME_COOKIE"\3068\3044\3046\540D\524D\306E\6C38\7D9A\7684\306A\30D6\30E9\30A6\30B6cookie\306B\30E6\30FC\30B6\30FC\540D\304C\4FDD\5B58\3055\308C\307E\3059\3002'),
unistr('\6B21\56DE\30ED\30B0\30A4\30F3\30FB\30DA\30FC\30B8\306B\30A2\30AF\30BB\30B9\3059\308B\3068\3001'),
unistr('\30E6\30FC\30B6\30FC\540D\30D5\30A3\30FC\30EB\30C9\306B\3053\306E\5024\304C\81EA\52D5\7684\306B\79FB\5165\3055\308C\307E\3059\3002'),
'</p>',
'<p>',
unistr('\3053\306E\30C1\30A7\30C3\30AF\30FB\30DC\30C3\30AF\30B9\306E\9078\629E\3092\89E3\9664\3057\3001\30E6\30FC\30B6\30FC\540D\304C\3059\3067\306Bcookie\306B\4FDD\5B58\3055\308C\3066\3044\308B\5834\5408\3001'),
unistr('\7A7A\306E\5024\3067\4E0A\66F8\3055\308C\307E\3059\3002'),
unistr('\30D6\30E9\30A6\30B6\306E\958B\767A\8005\30C4\30FC\30EB\3092\4F7F\7528\3057\3066\3001cookie\3092\5B8C\5168\306B\524A\9664\3059\308B\3053\3068\3082\3067\304D\307E\3059\3002'),
'</p>'))
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12619094809271111682)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Cookie\306E\30E6\30FC\30B6\30FC\540D\3092\8A2D\5B9A')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12619094413734111682)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12619095623866111683)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>unistr('\30DA\30FC\30B8\30FB\30AD\30E3\30C3\30B7\30E5\306E\30AF\30EA\30A2')
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12619095186231111683)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Cookie\306E\30E6\30FC\30B6\30FC\540D\3092\53D6\5F97')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_api.create_page(
 p_id=>10010
,p_user_interface_id=>wwv_flow_api.id(12619086727601111623)
,p_name=>unistr('\60C5\5831')
,p_alias=>'HELP'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\60C5\5831')
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(12619090082601111635)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(12619088886783111631)
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\3053\306E\30DA\30FC\30B8\304B\3089\3059\3079\3066\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\30FB\30D8\30EB\30D7\30FB\30C6\30AD\30B9\30C8\306B\30A2\30AF\30BB\30B9\3067\304D\307E\3059\3002\300C\30C9\30AD\30E5\30E1\30F3\30C8\300D\30EA\30FC\30B8\30E7\30F3\306E\30EA\30F3\30AF\3092\4F7F\7528\3059\308B\3068\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\6A5F\80FD\3068\7279\5FB4\306E\3088\308A\8A73\7D30\306A\8AAC\660E\3092\53C2\7167\3067\304D\307E\3059\3002')
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20200505100437'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12619099101918111702)
,p_plug_name=>unistr('\60C5\5831\30DA\30FC\30B8')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12618974192448111518)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<div align="center">\514D\8CAC\4E8B\9805</div>'),
'<br/>',
'<p>',
unistr('\305D\308C\305E\308C\306E\90FD\9053\5E9C\770C\304C\516C\958B\3057\3066\3044\308B\3001\65B0\578B\30B3\30ED\30CA\30A6\30A4\30EB\30B9\611F\67D3\8005\306E\60C5\5831\3092\3067\304D\308B\3060\3051\305D\306E\307E\307E\53D6\308A\8FBC\3093\3067\3044\307E\3059\304C\3001\5FC5\305A\3057\3082\4E00\81F4\3057\3066\3044\308B\3053\3068\306F\4FDD\8A3C\3057\305F\3057\307E\305B\3093\3002\5FC5\305A\30C7\30FC\30BF\306E\63D0\4F9B\5143\3067\3042\308B\3001\5404\81EA\6CBB\4F53\306E\60C5\5831\3092\53C2\7167\3057\3066\304F\3060\3055\3044\3002\672C\30C7\30FC\30BF\306E\5229\7528\306B\3088\3063\3066\751F\3058\305F\3001\3042\3089\3086\308B\640D\5BB3\7B49\306B\95A2\3057\3066\958B\767A\8005\306F\4E00\5207\306E\8CAC\4EFB\3092\8CA0\3044\307E\305B\3093\3002'),
'</p>',
'<br/>',
'GitHub: <a href="https://github.com/ujnak/JPCOVIT19ETL">https://github.com/ujnak/JPCOVIT19ETL</a>',
'<br/>',
'<br/>',
unistr('<h3>\53C2\7167\30B5\30A4\30C8</h3>'),
unistr('\653F\5E9CCIO\30DD\30FC\30BF\30EB<br/>'),
unistr('\6771\4EAC\90FD\306E\30AA\30FC\30D7\30F3\30BD\30FC\30B9\3092\6D3B\7528\3057\305F\65B0\578B\30B3\30ED\30CA\30A6\30A4\30EB\30B9\611F\67D3\75C7\5BFE\7B56\30B5\30A4\30C8\306E\7D39\4ECB<br/>'),
'<a href="https://cio.go.jp/node/2581" target="_blank">https://cio.go.jp/node/2581</a>',
'<br/>',
unistr('\81EA\6CBB\4F53\5B9F\65BD\72B6\6CC1\3068\308A\307E\3068\3081\FF08\653F\5E9C\5916\30B5\30A4\30C8\3001\81EA\6CBB\4F53\975E\516C\5F0F\30B5\30A4\30C8\3092\542B\3080\FF09'),
'<br/>',
'<a href="https://hackmd.io/@homata/ryHz3P4BI" target="_blank">https://hackmd.io/@homata/ryHz3P4BI</a>',
'<br/>',
unistr('\65B0\578B\30B3\30ED\30CA\30A6\30A4\30EB\30B9\611F\67D3\75C7\5BFE\7B56\30B5\30A4\30C8\306E\305F\3081\306E\30C7\30FC\30BF\516C\958B\652F\63F4 (Code for Japan)'),
'<br/>',
'<a href="https://www.code4japan.org/activity/stopcovid19" target="_blank">https://www.code4japan.org/activity/stopcovid19</a>',
''))
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
end;
/
prompt --application/pages/page_10011
begin
wwv_flow_api.create_page(
 p_id=>10011
,p_user_interface_id=>wwv_flow_api.id(12619086727601111623)
,p_name=>unistr('\30D8\30EB\30D7')
,p_alias=>'PAGE_HELP'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30D8\30EB\30D7')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(12619088886783111631)
,p_dialog_chained=>'N'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20200409095816'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12619099800723111702)
,p_plug_name=>unistr('\691C\7D22\30C0\30A4\30A2\30ED\30B0\30FB\30DC\30C3\30AF\30B9')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12618974192448111518)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in ',
'(',
'    select page_title, help_text ',
'      from apex_application_pages',
'     where page_id = :P10011_PAGE_ID ',
'       and application_id = :APP_ID',
')',
'loop',
'    if c1.help_text is null then',
unistr('        sys.htp.p(''\3053\306E\30DA\30FC\30B8\3067\4F7F\7528\53EF\80FD\306A\30D8\30EB\30D7\306F\3042\308A\307E\305B\3093\3002'');'),
'    else',
'        if substr(c1.help_text, 1, 3) != ''<p>'' then',
'            sys.htp.p(''<p>'');',
'        end if;',
'',
'        sys.htp.p(apex_application.do_substitutions(c1.help_text));',
'',
'        if substr(trim(c1.help_text), -4) != ''</p>'' then',
'            sys.htp.p(''</p>'');',
'        end if;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12619100216995111703)
,p_name=>'P10011_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12619099800723111702)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(13961540575343415529)
);
end;
/
prompt --application/deployment/install/install_sequence
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(13961034876521900307)
,p_install_id=>wwv_flow_api.id(13961540575343415529)
,p_name=>'sequence'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' CREATE SEQUENCE  "COVID19_PDF_FILES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
''))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(13961035028338900310)
,p_script_id=>wwv_flow_api.id(13961034876521900307)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'COVID19_PDF_FILES_SEQ'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_updated_on=>to_date('20200415001459','YYYYMMDDHH24MISS')
,p_created_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_created_on=>to_date('20200415001459','YYYYMMDDHH24MISS')
);
end;
/
prompt --application/deployment/install/install_tables
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(13961135532431462597)
,p_install_id=>wwv_flow_api.id(13961540575343415529)
,p_name=>'tables'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE TABLE "COVID19_LAST_REFRESH" ',
'   (	"TABLE_NAME" VARCHAR2(128) NOT NULL ENABLE, ',
'	"LAST_REFRESH_TIME" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"MUNICIPALITY_CODE" NUMBER',
'   ) ;',
'',
'CREATE TABLE "COVID19_PDF_FILES" ',
'   (	"ID" NUMBER, ',
'	"FILE_NAME" VARCHAR2(200), ',
'	"CONTENT_TYPE" VARCHAR2(80), ',
'	"CHARSET" VARCHAR2(40), ',
'	"CONTENT_DATA" BLOB, ',
'	"TEXT_DATA" CLOB, ',
'	 CONSTRAINT "COVID19_PDF_FILES_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "COVID19_PATIENTS" ',
'   (	"LINE_NO" NUMBER, ',
unistr('	"\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" NUMBER, '),
unistr('	"\90FD\9053\5E9C\770C\540D" VARCHAR2(2000), '),
unistr('	"\5E02\533A\753A\6751\540D" VARCHAR2(2000), '),
unistr('	"\516C\8868_\5E74\6708\65E5" DATE, '),
unistr('	"\66DC\65E5" VARCHAR2(8), '),
unistr('	"\767A\75C7_\5E74\6708\65E5" DATE, '),
unistr('	"\60A3\8005_\5C45\4F4F\5730" VARCHAR2(2000), '),
unistr('	"\60A3\8005_\5E74\4EE3" VARCHAR2(80), '),
unistr('	"\60A3\8005_\6027\5225" VARCHAR2(80), '),
unistr('	"\60A3\8005_\5C5E\6027" VARCHAR2(2000), '),
unistr('	"\60A3\8005_\72B6\614B" VARCHAR2(2000), '),
unistr('	"\60A3\8005_\75C7\72B6" VARCHAR2(2000), '),
unistr('	"\60A3\8005_\6E21\822A\6B74\306E\6709\7121\30D5\30E9\30B0" VARCHAR2(2000), '),
unistr('	"\5099\8003" VARCHAR2(2000), '),
unistr('	"\9000\9662\6E08\30D5\30E9\30B0" VARCHAR2(8)'),
'   ) ;',
'',
'CREATE TABLE "COVID19_COMBINED_TELEPHONE_ADVICE_CENTER" ',
unistr('   (	"\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" NUMBER, '),
unistr('	"\90FD\9053\5E9C\770C\540D" VARCHAR2(2000), '),
unistr('	"\5E02\533A\753A\6751\540D" VARCHAR2(2000), '),
unistr('	"\53D7\4ED8_\5E74\6708\65E5" DATE, '),
unistr('	"\66DC\65E5" VARCHAR2(8), '),
unistr('	"\76F8\8AC7\4EF6\6570" NUMBER'),
'   ) ;',
'',
'CREATE TABLE "COVID19_REFRESH_LOG" ',
'   (	"TABLE_NAME" VARCHAR2(128) NOT NULL ENABLE, ',
'	"REFRESH_TIME" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"MUNICIPALITY_CODE" NUMBER',
'   ) ;',
'',
'CREATE TABLE "COVID19_MUNICIPALITY_CODES" ',
'   (	"CODE" NUMBER, ',
'	"NAME" VARCHAR2(40), ',
'	"FORM_PAGE_ALIAS" VARCHAR2(80), ',
'	 CONSTRAINT "COVID19_MUNICIPALITY_CODES_PK" PRIMARY KEY ("CODE")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "COVID19_CALL_CENTER" ',
unistr('   (	"\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" NUMBER, '),
unistr('	"\90FD\9053\5E9C\770C\540D" VARCHAR2(2000), '),
unistr('	"\5E02\533A\753A\6751\540D" VARCHAR2(2000), '),
unistr('	"\53D7\4ED8_\5E74\6708\65E5" DATE, '),
unistr('	"\66DC\65E5" VARCHAR2(8), '),
unistr('	"\76F8\8AC7\4EF6\6570" NUMBER'),
'   ) ;',
'',
''))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(13961136200100462603)
,p_script_id=>wwv_flow_api.id(13961135532431462597)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'COVID19_CALL_CENTER'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_updated_on=>to_date('20200415001645','YYYYMMDDHH24MISS')
,p_created_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_created_on=>to_date('20200415001645','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(13961136038615462603)
,p_script_id=>wwv_flow_api.id(13961135532431462597)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'COVID19_COMBINED_TELEPHONE_ADVICE_CENTER'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_updated_on=>to_date('20200415001645','YYYYMMDDHH24MISS')
,p_created_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_created_on=>to_date('20200415001645','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(13961135795012462603)
,p_script_id=>wwv_flow_api.id(13961135532431462597)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'COVID19_LAST_REFRESH'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_updated_on=>to_date('20200415001645','YYYYMMDDHH24MISS')
,p_created_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_created_on=>to_date('20200415001645','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(13961135547286462602)
,p_script_id=>wwv_flow_api.id(13961135532431462597)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'COVID19_MUNICIPALITY_CODES'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_updated_on=>to_date('20200415001645','YYYYMMDDHH24MISS')
,p_created_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_created_on=>to_date('20200415001645','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(13961136436524462603)
,p_script_id=>wwv_flow_api.id(13961135532431462597)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'COVID19_PATIENTS'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_updated_on=>to_date('20200415001645','YYYYMMDDHH24MISS')
,p_created_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_created_on=>to_date('20200415001645','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(13961136835527462604)
,p_script_id=>wwv_flow_api.id(13961135532431462597)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'COVID19_PDF_FILES'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_updated_on=>to_date('20200415001645','YYYYMMDDHH24MISS')
,p_created_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_created_on=>to_date('20200415001645','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(13961136596852462603)
,p_script_id=>wwv_flow_api.id(13961135532431462597)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'COVID19_REFRESH_LOG'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_updated_on=>to_date('20200415001645','YYYYMMDDHH24MISS')
,p_created_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_created_on=>to_date('20200415001645','YYYYMMDDHH24MISS')
);
end;
/
prompt --application/deployment/install/install_triggers
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(13961142494178466085)
,p_install_id=>wwv_flow_api.id(13961540575343415529)
,p_name=>'triggers'
,p_sequence=>30
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE OR REPLACE TRIGGER "BI_COVID19_PDF_FILES" ',
'  before insert on "COVID19_PDF_FILES"               ',
'  for each row  ',
'begin   ',
'  if :NEW."ID" is null then ',
'    select "COVID19_PDF_FILES_SEQ".nextval into :NEW."ID" from sys.dual; ',
'  end if; ',
'end; ',
'',
'/',
'',
'',
'ALTER TRIGGER "BI_COVID19_PDF_FILES" ENABLE;',
'',
''))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(13961142623967466086)
,p_script_id=>wwv_flow_api.id(13961142494178466085)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'BI_COVID19_PDF_FILES'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_updated_on=>to_date('20200415001720','YYYYMMDDHH24MISS')
,p_created_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_created_on=>to_date('20200415001720','YYYYMMDDHH24MISS')
);
end;
/
prompt --application/deployment/install/install_packages
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(13961166604591469402)
,p_install_id=>wwv_flow_api.id(13961540575343415529)
,p_name=>'packages'
,p_sequence=>40
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE OR REPLACE PACKAGE "COVID19_UTIL" as',
'',
'procedure update_patients (',
'    p_municipality_code number,',
'    p_url               varchar2',
');',
'',
'procedure update_call_center (',
'    p_municipality_code number,',
'    p_url               varchar2);',
'',
'procedure update_advice (',
'    p_municipality_code number,',
'    p_url               varchar2);',
'',
'procedure update_patients_kanagawa (',
'    p_municipality_code number default 140007,',
'    p_url                varchar2',
');',
'',
'procedure update_patients_saitama (',
'    p_municipality_code number default 110001,',
'    p_url                varchar2',
');',
'',
'procedure update_patients_fukui (',
'    p_municipality_code number default 180009,',
'    p_url                varchar2',
');',
'',
'procedure update_patients_hokkaido (',
'    p_municipality_code number default 100006,',
'    p_url                varchar2',
');',
'',
'procedure update_patients_osaka (',
'    p_municipality_code number default 270008,',
'    p_url               varchar2',
');',
'',
'procedure update_patients_hyogo (',
'    p_municipality_code number default 280003,',
'    p_url               varchar2',
');',
'',
'end;',
'/',
'',
'',
'CREATE OR REPLACE PACKAGE BODY "COVID19_UTIL" is',
'',
'type munics_t is table of number index by pls_integer;',
'',
'/*',
unistr(' * \66F4\65B0\5C65\6B74\3092\66F8\304D\8FBC\3080\3002'),
' */',
'procedure mark_update(',
'   p_table_name in varchar2 default ''covid19_patients'',',
'   p_municipality_code in number',
')',
'as',
'begin',
unistr('  -- \66F4\65B0\30DE\30FC\30AF\3092\73FE\5728\6642\523B\306B\3059\308B\3002'),
'  merge into covid19_last_refresh r',
'  using (select p_table_name as table_name,',
'         p_municipality_code as municipality_code,',
'         systimestamp as last_refresh_time from dual) c',
'  on (r.table_name = c.table_name and r.municipality_code = c.municipality_code)',
'  when matched then',
'      update set r.last_refresh_time = c.last_refresh_time',
'  when not matched then',
'      insert(table_name, municipality_code, last_refresh_time) ',
'      values(c.table_name, c.municipality_code, c.last_refresh_time);',
unistr('  -- \66F4\65B0\30ED\30B0\3092\66F8\304D\8FBC\3080\3002'),
'  insert into covid19_refresh_log(table_name, municipality_code, refresh_time) ',
'      values(p_table_name, p_municipality_code, systimestamp);',
'end mark_update;',
'',
'/*',
unistr(' * \65B0\578B\30B3\30ED\30CA\30A6\30A4\30EB\30B9\611F\67D3\75C7\306E\967D\6027\60A3\8005\306E\5C5E\6027\3092\53D6\308A\8FBC\3080\3002'),
unistr(' * Code for Japan\63A8\5968\306E\30D5\30A9\30FC\30DE\30C3\30C8\306ECSV\30D5\30A1\30A4\30EB\3067\3042\308B\3053\3068\3002'),
' */',
'procedure UPDATE_PATIENTS(',
'    P_MUNICIPALITY_CODE IN NUMBER,',
'    P_URL IN VARCHAR2)',
'as',
'  pragma autonomous_transaction;',
'  l_munics munics_t;',
'  l_file_name varchar2(200) := substr(p_url,instr(p_url,''/'',-1)+1);',
'begin',
unistr('  -- \5909\66F4\5BFE\8C61\306E\5730\65B9\81EA\6CBB\4F53\60C5\5831\3092\30ED\30C3\30AF\3002'),
unistr('  select "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" bulk collect into l_munics from covid19_patients '),
unistr('  where "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = p_municipality_code for update nowait;'),
unistr('  -- \53D6\5F97\3057\305F\30C7\30FC\30BF\306E\3046\3061\3001\5909\66F4\5206\306E\307F\3092\9069\7528\3002'),
'  merge into covid19_patients p',
'  using',
'  (',
'      select',
'          to_number(col001) as LINE_NO,',
unistr('          to_number(col002) as "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9",'),
unistr('          col003 as "\90FD\9053\5E9C\770C\540D", col004 as "\5E02\533A\753A\6751\540D",'),
unistr('          to_date(col005, ''YYYY-MM-DD'') as "\516C\8868_\5E74\6708\65E5",'),
unistr('          col006 as "\66DC\65E5", to_date(col007, ''YYYY-MM-DD'') as "\767A\75C7_\5E74\6708\65E5",'),
unistr('          col008 as "\60A3\8005_\5C45\4F4F\5730", col009 as "\60A3\8005_\5E74\4EE3", col010 as "\60A3\8005_\6027\5225",'),
unistr('          col011 as "\60A3\8005_\5C5E\6027", col012 as "\60A3\8005_\72B6\614B", col013 as "\60A3\8005_\75C7\72B6",'),
unistr('          col014 as "\60A3\8005_\6E21\822A\6B74\306E\6709\7121\30D5\30E9\30B0", col015 as "\5099\8003", col016 as "\9000\9662\6E08\30D5\30E9\30B0"'),
'      from table(',
'          apex_data_parser.parse(',
'              p_content => apex_web_service.make_rest_request_b(',
'              p_url,',
'              ''GET''',
'              ),',
'              p_file_name => l_file_name,',
'              p_skip_rows => 1',
'          )',
'      )',
'      minus',
'      select ',
unistr('          LINE_NO,"\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9","\90FD\9053\5E9C\770C\540D","\5E02\533A\753A\6751\540D","\516C\8868_\5E74\6708\65E5","\66DC\65E5",'),
unistr('          "\767A\75C7_\5E74\6708\65E5","\60A3\8005_\5C45\4F4F\5730","\60A3\8005_\5E74\4EE3","\60A3\8005_\6027\5225","\60A3\8005_\5C5E\6027","\60A3\8005_\72B6\614B",'),
unistr('          "\60A3\8005_\75C7\72B6","\60A3\8005_\6E21\822A\6B74\306E\6709\7121\30D5\30E9\30B0","\5099\8003","\9000\9662\6E08\30D5\30E9\30B0"'),
'      from covid19_patients',
unistr('      where "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = p_municipality_code'),
'  ) n',
unistr('  on (p.LINE_NO = n.LINE_NO and p."\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = n."\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9")'),
'  when matched then',
'      update set',
unistr('          p."\5E02\533A\753A\6751\540D" = n."\5E02\533A\753A\6751\540D",'),
unistr('          p."\516C\8868_\5E74\6708\65E5" = n."\516C\8868_\5E74\6708\65E5",'),
unistr('          p."\66DC\65E5" = n."\66DC\65E5",'),
unistr('          p."\767A\75C7_\5E74\6708\65E5" = n."\767A\75C7_\5E74\6708\65E5",'),
unistr('          p."\60A3\8005_\5C45\4F4F\5730" = n."\60A3\8005_\5C45\4F4F\5730",'),
unistr('          p."\60A3\8005_\5E74\4EE3" = n."\60A3\8005_\5E74\4EE3",'),
unistr('          p."\60A3\8005_\6027\5225" = n."\60A3\8005_\6027\5225",'),
unistr('          p."\60A3\8005_\5C5E\6027" = n."\60A3\8005_\5C5E\6027",'),
unistr('          p."\60A3\8005_\72B6\614B" = n."\60A3\8005_\72B6\614B",'),
unistr('          p."\60A3\8005_\75C7\72B6" = n."\60A3\8005_\75C7\72B6",'),
unistr('          p."\60A3\8005_\6E21\822A\6B74\306E\6709\7121\30D5\30E9\30B0" = n."\60A3\8005_\6E21\822A\6B74\306E\6709\7121\30D5\30E9\30B0",'),
unistr('          p."\5099\8003" = n."\5099\8003",'),
unistr('          p."\9000\9662\6E08\30D5\30E9\30B0" = n."\9000\9662\6E08\30D5\30E9\30B0"'),
'  when not matched then',
'      insert(',
unistr('          LINE_NO, "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9","\90FD\9053\5E9C\770C\540D","\5E02\533A\753A\6751\540D",'),
unistr('          "\516C\8868_\5E74\6708\65E5","\66DC\65E5","\767A\75C7_\5E74\6708\65E5","\60A3\8005_\5C45\4F4F\5730","\60A3\8005_\5E74\4EE3",'),
unistr('          "\60A3\8005_\6027\5225","\60A3\8005_\5C5E\6027","\60A3\8005_\72B6\614B","\60A3\8005_\75C7\72B6",'),
unistr('          "\60A3\8005_\6E21\822A\6B74\306E\6709\7121\30D5\30E9\30B0","\5099\8003","\9000\9662\6E08\30D5\30E9\30B0"'),
'      )',
'      values(',
unistr('          n.LINE_NO, n."\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9", n."\90FD\9053\5E9C\770C\540D",n."\5E02\533A\753A\6751\540D",'),
unistr('          n."\516C\8868_\5E74\6708\65E5",n."\66DC\65E5",n."\767A\75C7_\5E74\6708\65E5",n."\60A3\8005_\5C45\4F4F\5730",n."\60A3\8005_\5E74\4EE3",'),
unistr('          n."\60A3\8005_\6027\5225",n."\60A3\8005_\5C5E\6027",n."\60A3\8005_\72B6\614B",n."\60A3\8005_\75C7\72B6",'),
unistr('          n."\60A3\8005_\6E21\822A\6B74\306E\6709\7121\30D5\30E9\30B0",n."\5099\8003",n."\9000\9662\6E08\30D5\30E9\30B0"'),
'      );',
unistr('  -- \66F4\65B0\30DE\30FC\30AF\3092\73FE\5728\6642\523B\306B\3059\308B\3002'),
'  mark_update(p_municipality_code => p_municipality_code);',
'  commit;',
'end UPDATE_PATIENTS;',
'',
'/*',
unistr(' * \65B0\578B\30B3\30ED\30CA\53D7\8A3A\76F8\8AC7\7A93\53E3\76F8\8AC7\4EF6\6570\3092\53D6\308A\8FBC\3080\3002'),
unistr(' * Code for Japan\63A8\5968\306E\30D5\30A9\30FC\30DE\30C3\30C8\306ECSV\30D5\30A1\30A4\30EB\3067\3042\308B\3053\3068\3002'),
' */',
'procedure UPDATE_ADVICE(',
'    P_MUNICIPALITY_CODE IN NUMBER,',
'    P_URL IN VARCHAR2',
')',
'as',
'  pragma autonomous_transaction;',
'  l_munics munics_t;',
'  l_file_name varchar2(200) := substr(p_url,instr(p_url,''/'',-1)+1);',
'begin',
unistr('  -- \5909\66F4\5BFE\8C61\306E\5730\65B9\81EA\6CBB\4F53\60C5\5831\3092\30ED\30C3\30AF\3002'),
unistr('  select "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" bulk collect into l_munics from covid19_combined_telephone_advice_center '),
unistr('  where "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = p_municipality_code for update nowait;'),
unistr('  -- \53D6\5F97\3057\305F\30C7\30FC\30BF\306E\3046\3061\3001\5909\66F4\5206\306E\307F\3092\9069\7528\3002'),
'  merge into covid19_combined_telephone_advice_center p',
'  using',
'  (',
'      select',
unistr('          to_number(col001) as "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9",'),
unistr('          col002 as "\90FD\9053\5E9C\770C\540D", col003 as "\5E02\533A\753A\6751\540D",'),
unistr('          to_date(col004, ''YYYY-MM-DD'') as "\53D7\4ED8_\5E74\6708\65E5",'),
unistr('          col005 as "\66DC\65E5", to_number(col006) as "\76F8\8AC7\4EF6\6570"'),
'      from table(',
'          apex_data_parser.parse(',
'              p_content => apex_web_service.make_rest_request_b(',
'              p_url,',
'              ''GET''',
'              ),',
'              p_file_name => l_file_name,',
'              p_skip_rows => 1',
'          )',
'      )',
'      minus',
'      select ',
unistr('          "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9","\90FD\9053\5E9C\770C\540D","\5E02\533A\753A\6751\540D","\53D7\4ED8_\5E74\6708\65E5","\66DC\65E5","\76F8\8AC7\4EF6\6570"'),
'      from covid19_combined_telephone_advice_center',
unistr('      where "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = p_municipality_code'),
'  ) n',
unistr('  on (p."\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = n."\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" and p."\53D7\4ED8_\5E74\6708\65E5" = n."\53D7\4ED8_\5E74\6708\65E5")'),
'  when matched then',
'      update set',
unistr('          p."\5E02\533A\753A\6751\540D" = n."\5E02\533A\753A\6751\540D",'),
unistr('          p."\66DC\65E5" = n."\66DC\65E5",'),
unistr('          p."\76F8\8AC7\4EF6\6570" = n."\76F8\8AC7\4EF6\6570"'),
'  when not matched then',
'      insert(',
unistr('          "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9","\90FD\9053\5E9C\770C\540D","\5E02\533A\753A\6751\540D",'),
unistr('          "\53D7\4ED8_\5E74\6708\65E5","\66DC\65E5","\76F8\8AC7\4EF6\6570"'),
'      )',
'      values(',
unistr('          n."\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9", n."\90FD\9053\5E9C\770C\540D",n."\5E02\533A\753A\6751\540D",'),
unistr('          n."\53D7\4ED8_\5E74\6708\65E5",n."\66DC\65E5",n."\76F8\8AC7\4EF6\6570"'),
'      );',
unistr('  -- \66F4\65B0\30DE\30FC\30AF\3092\73FE\5728\6642\523B\306B\3059\308B\3002'),
'  mark_update(p_table_name => ''covid19_combined_telephone_advice_center'',',
'             p_municipality_code => p_municipality_code);',
'  commit;',
'end UPDATE_ADVICE;',
'',
'/*',
unistr(' * \65B0\578B\30B3\30ED\30CA\30B3\30FC\30EB\30BB\30F3\30BF\30FC\76F8\8AC7\4EF6\6570\3092\53D6\308A\8FBC\3080\3002'),
unistr(' * Code for Japan\63A8\5968\306E\30D5\30A9\30FC\30DE\30C3\30C8\306ECSV\30D5\30A1\30A4\30EB\3067\3042\308B\3053\3068\3002'),
' */',
'procedure UPDATE_CALL_CENTER(',
'    P_MUNICIPALITY_CODE IN NUMBER,',
'    P_URL IN VARCHAR2',
')',
'as',
'  pragma autonomous_transaction;',
'  l_munics munics_t;',
'  l_file_name varchar2(200) := substr(p_url,instr(p_url,''/'',-1)+1);',
'begin',
unistr('  -- \5909\66F4\5BFE\8C61\306E\5730\65B9\81EA\6CBB\4F53\60C5\5831\3092\30ED\30C3\30AF\3002'),
unistr('  select "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" bulk collect into l_munics from covid19_call_center '),
unistr('  where "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = p_municipality_code for update nowait;'),
unistr('  -- \53D6\5F97\3057\305F\30C7\30FC\30BF\306E\3046\3061\3001\5909\66F4\5206\306E\307F\3092\9069\7528\3002'),
'  merge into covid19_call_center p',
'  using',
'  (',
'      select',
unistr('          to_number(col001) as "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9",'),
unistr('          col002 as "\90FD\9053\5E9C\770C\540D", col003 as "\5E02\533A\753A\6751\540D",'),
unistr('          to_date(col004, ''YYYY-MM-DD'') as "\53D7\4ED8_\5E74\6708\65E5",'),
unistr('          col005 as "\66DC\65E5", to_number(col006) as "\76F8\8AC7\4EF6\6570"'),
'      from table(',
'          apex_data_parser.parse(',
'              p_content => apex_web_service.make_rest_request_b(',
'              p_url,',
'              ''GET''',
'              ),',
'              p_file_name => l_file_name,',
'              p_skip_rows => 1',
'          )',
'      )',
'      minus',
'      select ',
unistr('          "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9","\90FD\9053\5E9C\770C\540D","\5E02\533A\753A\6751\540D","\53D7\4ED8_\5E74\6708\65E5","\66DC\65E5","\76F8\8AC7\4EF6\6570"'),
'      from covid19_call_center',
unistr('      where "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = p_municipality_code'),
'  ) n',
unistr('  on (p."\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = n."\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" and p."\53D7\4ED8_\5E74\6708\65E5" = n."\53D7\4ED8_\5E74\6708\65E5")'),
'  when matched then',
'      update set',
unistr('          p."\5E02\533A\753A\6751\540D" = n."\5E02\533A\753A\6751\540D",'),
unistr('          p."\66DC\65E5" = n."\66DC\65E5",'),
unistr('          p."\76F8\8AC7\4EF6\6570" = n."\76F8\8AC7\4EF6\6570"'),
'  when not matched then',
'      insert(',
unistr('        "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9","\90FD\9053\5E9C\770C\540D","\5E02\533A\753A\6751\540D",'),
unistr('        "\53D7\4ED8_\5E74\6708\65E5","\66DC\65E5","\76F8\8AC7\4EF6\6570"'),
'      )',
unistr('      values(n."\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9", n."\90FD\9053\5E9C\770C\540D",n."\5E02\533A\753A\6751\540D",'),
unistr('             n."\53D7\4ED8_\5E74\6708\65E5",n."\66DC\65E5",n."\76F8\8AC7\4EF6\6570");'),
unistr('  -- \66F4\65B0\30DE\30FC\30AF\3092\73FE\5728\6642\523B\306B\3059\308B\3002'),
'  mark_update(p_table_name => ''covid19_call_center'',',
'              p_municipality_code => p_municipality_code);',
'  commit;',
'end UPDATE_CALL_CENTER;',
'',
'/*',
unistr(' * \65B0\578B\30B3\30ED\30CA\30A6\30A4\30EB\30B9\611F\67D3\75C7\306E\967D\6027\60A3\8005\306E\5C5E\6027\3092\53D6\308A\8FBC\3080\3002(\795E\5948\5DDD\770C\7248)'),
' */',
'procedure UPDATE_PATIENTS_KANAGAWA(',
'    P_MUNICIPALITY_CODE IN NUMBER DEFAULT 140007,',
'    P_URL IN VARCHAR2',
')',
'as',
'  pragma autonomous_transaction;',
'  l_munics munics_t;',
'  l_file_name varchar2(200) := substr(p_url,instr(p_url,''/'',-1)+1);',
'begin',
unistr('  -- \5909\66F4\5BFE\8C61\306E\5730\65B9\81EA\6CBB\4F53\60C5\5831\3092\30ED\30C3\30AF\3002'),
unistr('  select "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" bulk collect into l_munics from covid19_patients '),
unistr('  where "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = p_municipality_code for update nowait;'),
unistr('  -- \53D6\5F97\3057\305F\30C7\30FC\30BF\306E\3046\3061\3001\5909\66F4\5206\306E\307F\3092\9069\7528\3002'),
unistr('  -- \795E\5948\5DDD\306E\30C7\30FC\30BF\306FNo\304C\306A\3044\306E\3067\884C\3092\7279\5B9A\3067\304D\306A\3044\3002\306A\306E\3067\524A\9664/\633F\5165\3067\5168\5165\308C\66FF\3048\3002'),
unistr('  delete from covid19_patients where "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = p_municipality_code;'),
'  insert into covid19_patients(',
unistr('      LINE_NO,"\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9","\90FD\9053\5E9C\770C\540D","\516C\8868_\5E74\6708\65E5","\66DC\65E5",'),
unistr('      "\60A3\8005_\5C45\4F4F\5730","\60A3\8005_\5E74\4EE3","\60A3\8005_\6027\5225"'),
'  )',
'  select',
'      rownum as LINE_NO,',
unistr('      p_municipality_code as "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9",'),
unistr('      ''\795E\5948\5DDD\770C'' as "\90FD\9053\5E9C\770C\540D",'),
unistr('      to_date(col001, ''YYYY/MM/DD'') as "\516C\8868_\5E74\6708\65E5",'),
unistr('      to_char(to_date(col001, ''YYYY/MM/DD''), ''DY'') as "\66DC\65E5", '),
unistr('      col002 as "\60A3\8005_\5C45\4F4F\5730", col003 as "\60A3\8005_\5E74\4EE3", col004 as "\60A3\8005_\6027\5225"'),
'  from table(',
'      apex_data_parser.parse(',
'          p_content => apex_web_service.make_rest_request_b(',
'          p_url,',
'          ''GET''',
'          ),',
'          p_file_name => l_file_name,',
'          p_file_charset => ''JA16SJIS'',',
'          p_skip_rows => 1',
'      )',
'  );',
unistr('  -- \66F4\65B0\30DE\30FC\30AF\3092\73FE\5728\6642\523B\306B\3059\308B\3002'),
'  mark_update(p_municipality_code => p_municipality_code);',
'  commit;',
'end UPDATE_PATIENTS_KANAGAWA;',
'',
'/*',
unistr(' * \65B0\578B\30B3\30ED\30CA\30A6\30A4\30EB\30B9\611F\67D3\75C7\306E\967D\6027\60A3\8005\306E\5C5E\6027\3092\53D6\308A\8FBC\3080\3002(\57FC\7389\770C\7248)'),
' */',
'procedure UPDATE_PATIENTS_SAITAMA(',
'    P_MUNICIPALITY_CODE IN NUMBER DEFAULT 110001,',
'    P_URL IN VARCHAR2',
')',
'as',
'  pragma autonomous_transaction;',
'  l_munics munics_t;',
'  l_file_name varchar2(200) := substr(p_url,instr(p_url,''/'',-1)+1);',
'begin',
unistr('  -- \5909\66F4\5BFE\8C61\306E\5730\65B9\81EA\6CBB\4F53\60C5\5831\3092\30ED\30C3\30AF\3002'),
unistr('  select "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" bulk collect into l_munics from covid19_patients '),
unistr('  where "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = p_municipality_code for update nowait;'),
unistr('  -- \53D6\5F97\3057\305F\30C7\30FC\30BF\306E\3046\3061\3001\5909\66F4\5206\306E\307F\3092\9069\7528\3002'),
'  merge into covid19_patients p',
'  using',
'  (',
'      select',
'          to_number(col001) as LINE_NO,',
unistr('          p_municipality_code as "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9",'),
unistr('          ''\57FC\7389\770C'' as "\90FD\9053\5E9C\770C\540D",'),
'          case when regexp_like(col002,''^\d+/\d+/\d+$'') then ',
'              to_date(col002, ''YYYY/MM/DD'') ',
'          else',
'              null',
unistr('          end as "\516C\8868_\5E74\6708\65E5",'),
'          case when regexp_like(col002,''^\d+/\d+/\d+$'') then ',
'              to_char(to_date(col002,''YYYY/MM/DD''),''DY'')',
'          else',
'              null',
unistr('          end as "\66DC\65E5",'),
unistr('          col005 as "\60A3\8005_\5C45\4F4F\5730", col003 as "\60A3\8005_\5E74\4EE3", col004 as "\60A3\8005_\6027\5225"'),
'      from table(',
'          apex_data_parser.parse(',
'              p_content => apex_web_service.make_rest_request_b(',
'              p_url,',
'              ''GET''',
'              ),',
'              p_file_name => l_file_name,',
'              p_file_charset => ''JA16SJIS'',',
'              p_skip_rows => 1',
'          )',
'      )',
'      minus',
'      select ',
unistr('          LINE_NO,"\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9","\90FD\9053\5E9C\770C\540D",'),
unistr('          "\516C\8868_\5E74\6708\65E5","\66DC\65E5","\60A3\8005_\5C45\4F4F\5730","\60A3\8005_\5E74\4EE3","\60A3\8005_\6027\5225"'),
'      from covid19_patients',
unistr('      where "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = p_municipality_code'),
'  ) n',
unistr('  on (p.LINE_NO = n.LINE_NO and p."\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = n."\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9")'),
'  when matched then',
'      update set',
unistr('          p."\516C\8868_\5E74\6708\65E5" = n."\516C\8868_\5E74\6708\65E5",'),
unistr('          p."\66DC\65E5" = n."\66DC\65E5",'),
unistr('          p."\60A3\8005_\5C45\4F4F\5730" = n."\60A3\8005_\5C45\4F4F\5730",'),
unistr('          p."\60A3\8005_\5E74\4EE3" = n."\60A3\8005_\5E74\4EE3",'),
unistr('          p."\60A3\8005_\6027\5225" = n."\60A3\8005_\6027\5225"'),
'  when not matched then',
'      insert(',
unistr('          LINE_NO, "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9","\90FD\9053\5E9C\770C\540D",'),
unistr('          "\516C\8868_\5E74\6708\65E5","\66DC\65E5","\60A3\8005_\5C45\4F4F\5730","\60A3\8005_\5E74\4EE3","\60A3\8005_\6027\5225"'),
'      )',
'      values(',
unistr('          n.LINE_NO, n."\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9", n."\90FD\9053\5E9C\770C\540D",'),
unistr('          n."\516C\8868_\5E74\6708\65E5",n."\66DC\65E5",n."\60A3\8005_\5C45\4F4F\5730",n."\60A3\8005_\5E74\4EE3",n."\60A3\8005_\6027\5225"'),
'      );',
unistr('  -- \66F4\65B0\30DE\30FC\30AF\3092\73FE\5728\6642\523B\306B\3059\308B\3002'),
'  mark_update(p_municipality_code => p_municipality_code);',
'  commit;',
'end UPDATE_PATIENTS_SAITAMA;',
'',
'/*',
unistr(' * \798F\4E95\770C\306FCode for Japan\63A8\5968\306E\30D5\30A9\30FC\30DE\30C3\30C8\306ECSV\306B\307B\307C\540C\3058\3060\304C'),
unistr(' * \66DC\65E5\304C\306A\3044\306E\3068\5099\8003\3068\9000\9662\6E08\307F\30D5\30E9\30B0\306E\4F4D\7F6E\304C\7570\306A\308B\3002'),
' */',
'procedure UPDATE_PATIENTS_FUKUI(',
'    P_MUNICIPALITY_CODE IN NUMBER,',
'    P_URL IN VARCHAR2',
')',
'as',
'  pragma autonomous_transaction;',
'  l_munics munics_t;',
'  l_file_name varchar2(200) := substr(p_url,instr(p_url,''/'',-1)+1);',
'begin',
unistr('  -- \5909\66F4\5BFE\8C61\306E\5730\65B9\81EA\6CBB\4F53\60C5\5831\3092\30ED\30C3\30AF\3002'),
unistr('  select "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" bulk collect into l_munics from covid19_patients '),
unistr('  where "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = p_municipality_code for update nowait;'),
unistr('  -- \53D6\5F97\3057\305F\30C7\30FC\30BF\306E\3046\3061\3001\5909\66F4\5206\306E\307F\3092\9069\7528\3002'),
'  merge into covid19_patients p',
'  using',
'  (',
'      select',
'          to_number(col001) as LINE_NO,',
unistr('          to_number(col002) as "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9",'),
unistr('          col003 as "\90FD\9053\5E9C\770C\540D", col004 as "\5E02\533A\753A\6751\540D",'),
unistr('          to_date(col005, ''YYYY-MM-DD'') as "\516C\8868_\5E74\6708\65E5",'),
unistr('          to_char(to_date(col005,''YYYY-MM-DD''), ''DY'') as "\66DC\65E5", '),
unistr('          to_date(col006, ''YYYY-MM-DD'') as "\767A\75C7_\5E74\6708\65E5",'),
unistr('          col007 as "\60A3\8005_\5C45\4F4F\5730", col008 as "\60A3\8005_\5E74\4EE3", col009 as "\60A3\8005_\6027\5225",'),
unistr('          col010 as "\60A3\8005_\5C5E\6027", col011 as "\60A3\8005_\72B6\614B", col012 as "\60A3\8005_\75C7\72B6",'),
unistr('          col013 as "\60A3\8005_\6E21\822A\6B74\306E\6709\7121\30D5\30E9\30B0", col014 as "\9000\9662\6E08\30D5\30E9\30B0", col015 as "\5099\8003"'),
'      from table(',
'          apex_data_parser.parse(',
'              p_content => apex_web_service.make_rest_request_b(',
'              p_url,',
'              ''GET''',
'              ),',
'              p_file_name => l_file_name,',
'              p_skip_rows => 1',
'          )',
'      )',
'      minus',
'      select ',
unistr('          LINE_NO,"\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9","\90FD\9053\5E9C\770C\540D","\5E02\533A\753A\6751\540D","\516C\8868_\5E74\6708\65E5","\66DC\65E5",'),
unistr('          "\767A\75C7_\5E74\6708\65E5","\60A3\8005_\5C45\4F4F\5730","\60A3\8005_\5E74\4EE3","\60A3\8005_\6027\5225","\60A3\8005_\5C5E\6027","\60A3\8005_\72B6\614B",'),
unistr('          "\60A3\8005_\75C7\72B6","\60A3\8005_\6E21\822A\6B74\306E\6709\7121\30D5\30E9\30B0","\9000\9662\6E08\30D5\30E9\30B0","\5099\8003"'),
'      from covid19_patients',
unistr('      where "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = p_municipality_code'),
'  ) n',
unistr('  on (p.LINE_NO = n.LINE_NO and p."\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = n."\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9")'),
'  when matched then',
'      update set',
unistr('          p."\5E02\533A\753A\6751\540D" = n."\5E02\533A\753A\6751\540D",'),
unistr('          p."\516C\8868_\5E74\6708\65E5" = n."\516C\8868_\5E74\6708\65E5",'),
unistr('          p."\66DC\65E5" = n."\66DC\65E5",'),
unistr('          p."\767A\75C7_\5E74\6708\65E5" = n."\767A\75C7_\5E74\6708\65E5",'),
unistr('          p."\60A3\8005_\5C45\4F4F\5730" = n."\60A3\8005_\5C45\4F4F\5730",'),
unistr('          p."\60A3\8005_\5E74\4EE3" = n."\60A3\8005_\5E74\4EE3",'),
unistr('          p."\60A3\8005_\6027\5225" = n."\60A3\8005_\6027\5225",'),
unistr('          p."\60A3\8005_\5C5E\6027" = n."\60A3\8005_\5C5E\6027",'),
unistr('          p."\60A3\8005_\72B6\614B" = n."\60A3\8005_\72B6\614B",'),
unistr('          p."\60A3\8005_\75C7\72B6" = n."\60A3\8005_\75C7\72B6",'),
unistr('          p."\60A3\8005_\6E21\822A\6B74\306E\6709\7121\30D5\30E9\30B0" = n."\60A3\8005_\6E21\822A\6B74\306E\6709\7121\30D5\30E9\30B0",'),
unistr('          p."\9000\9662\6E08\30D5\30E9\30B0" = n."\9000\9662\6E08\30D5\30E9\30B0",'),
unistr('          p."\5099\8003" = n."\5099\8003"'),
'  when not matched then',
'      insert(',
unistr('          LINE_NO, "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9","\90FD\9053\5E9C\770C\540D","\5E02\533A\753A\6751\540D",'),
unistr('          "\516C\8868_\5E74\6708\65E5","\66DC\65E5","\767A\75C7_\5E74\6708\65E5","\60A3\8005_\5C45\4F4F\5730","\60A3\8005_\5E74\4EE3",'),
unistr('          "\60A3\8005_\6027\5225","\60A3\8005_\5C5E\6027","\60A3\8005_\72B6\614B","\60A3\8005_\75C7\72B6",'),
unistr('          "\60A3\8005_\6E21\822A\6B74\306E\6709\7121\30D5\30E9\30B0","\9000\9662\6E08\30D5\30E9\30B0","\5099\8003"'),
'      )',
'      values(',
unistr('          n.LINE_NO, n."\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9", n."\90FD\9053\5E9C\770C\540D",n."\5E02\533A\753A\6751\540D",'),
unistr('          n."\516C\8868_\5E74\6708\65E5",n."\66DC\65E5",n."\767A\75C7_\5E74\6708\65E5",n."\60A3\8005_\5C45\4F4F\5730",n."\60A3\8005_\5E74\4EE3",'),
unistr('          n."\60A3\8005_\6027\5225",n."\60A3\8005_\5C5E\6027",n."\60A3\8005_\72B6\614B",n."\60A3\8005_\75C7\72B6",'),
unistr('          n."\60A3\8005_\6E21\822A\6B74\306E\6709\7121\30D5\30E9\30B0",n."\9000\9662\6E08\30D5\30E9\30B0",n."\5099\8003"'),
'      );',
unistr('  -- \66F4\65B0\30DE\30FC\30AF\3092\73FE\5728\6642\523B\306B\3059\308B\3002'),
'  mark_update(p_municipality_code => p_municipality_code);',
'  commit;',
'end UPDATE_PATIENTS_FUKUI;',
'',
'/*',
unistr(' * \5317\6D77\9053\306F\5F62\5F0F\304C\304B\306A\308A\7570\306A\308B\3002'),
' */',
'procedure UPDATE_PATIENTS_HOKKAIDO(',
'    P_MUNICIPALITY_CODE IN NUMBER DEFAULT 100006,',
'    P_URL IN VARCHAR2',
')',
'as',
'  pragma autonomous_transaction;',
'  l_munics munics_t;',
'  l_file_name varchar2(200) := substr(p_url,instr(p_url,''/'',-1)+1);',
'begin',
unistr('  -- \5909\66F4\5BFE\8C61\306E\5730\65B9\81EA\6CBB\4F53\60C5\5831\3092\30ED\30C3\30AF\3002'),
unistr('  select "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" bulk collect into l_munics from covid19_patients '),
unistr('  where "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = p_municipality_code for update nowait;'),
unistr('  -- \53D6\5F97\3057\305F\30C7\30FC\30BF\306E\3046\3061\3001\5909\66F4\5206\306E\307F\3092\9069\7528\3002'),
'  merge into covid19_patients p',
'  using',
'  (',
'      select',
'          to_number(col001) as LINE_NO,',
unistr('          p_municipality_code as "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9",'),
unistr('          ''\5317\6D77\9053'' as "\90FD\9053\5E9C\770C\540D",'),
unistr('          to_date(col002, ''YYYY-MM-DD"T"HH24:MI'') as "\516C\8868_\5E74\6708\65E5",'),
unistr('          to_char(to_date(col002, ''YYYY-MM-DD"T"HH24:MI''), ''DY'') as "\66DC\65E5", '),
unistr('          col004 as "\60A3\8005_\5C45\4F4F\5730", col005 as "\60A3\8005_\5E74\4EE3", col006 as "\60A3\8005_\6027\5225",'),
unistr('          col007 as "\60A3\8005_\5C5E\6027", col008 as "\60A3\8005_\72B6\614B"'),
'      from table(',
'          apex_data_parser.parse(',
'              p_content => apex_web_service.make_rest_request_b(',
'              p_url,',
'              ''GET''',
'              ),',
'              p_file_name => l_file_name,',
'              p_file_charset => ''JA16SJIS'',',
'              p_skip_rows => 1',
'          )',
'      )',
'      minus',
'      select ',
unistr('          LINE_NO,"\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9","\90FD\9053\5E9C\770C\540D","\516C\8868_\5E74\6708\65E5","\66DC\65E5",'),
unistr('          "\60A3\8005_\5C45\4F4F\5730","\60A3\8005_\5E74\4EE3","\60A3\8005_\6027\5225","\60A3\8005_\5C5E\6027","\60A3\8005_\72B6\614B"'),
'      from covid19_patients',
unistr('      where "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = p_municipality_code'),
'  ) n',
unistr('  on (p.LINE_NO = n.LINE_NO and p."\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = n."\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9")'),
'  when matched then',
'      update set',
unistr('          p."\516C\8868_\5E74\6708\65E5" = n."\516C\8868_\5E74\6708\65E5",'),
unistr('          p."\66DC\65E5" = n."\66DC\65E5",'),
unistr('          p."\60A3\8005_\5C45\4F4F\5730" = n."\60A3\8005_\5C45\4F4F\5730",'),
unistr('          p."\60A3\8005_\5E74\4EE3" = n."\60A3\8005_\5E74\4EE3",'),
unistr('          p."\60A3\8005_\6027\5225" = n."\60A3\8005_\6027\5225",'),
unistr('          p."\60A3\8005_\5C5E\6027" = n."\60A3\8005_\5C5E\6027",'),
unistr('          p."\60A3\8005_\72B6\614B" = n."\60A3\8005_\72B6\614B"'),
'  when not matched then',
'      insert(',
unistr('          LINE_NO, "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9","\90FD\9053\5E9C\770C\540D",'),
unistr('          "\516C\8868_\5E74\6708\65E5","\66DC\65E5","\60A3\8005_\5C45\4F4F\5730","\60A3\8005_\5E74\4EE3",'),
unistr('          "\60A3\8005_\6027\5225","\60A3\8005_\5C5E\6027","\60A3\8005_\72B6\614B"'),
'      )',
'      values(',
unistr('          n.LINE_NO,n."\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9",n."\90FD\9053\5E9C\770C\540D",'),
unistr('          n."\516C\8868_\5E74\6708\65E5",n."\66DC\65E5",n."\60A3\8005_\5C45\4F4F\5730",n."\60A3\8005_\5E74\4EE3",'),
unistr('          n."\60A3\8005_\6027\5225",n."\60A3\8005_\5C5E\6027",n."\60A3\8005_\72B6\614B"'),
'      );',
unistr('  -- \66F4\65B0\30DE\30FC\30AF\3092\73FE\5728\6642\523B\306B\3059\308B\3002'),
'  mark_update(p_municipality_code => p_municipality_code);',
'  commit;',
'end UPDATE_PATIENTS_HOKKAIDO;',
'',
'/*',
unistr(' * \5927\962A\306F\5F62\5F0F\304C\304B\306A\308A\7570\306A\308B\3002'),
' */',
'procedure UPDATE_PATIENTS_OSAKA(',
'    P_MUNICIPALITY_CODE IN NUMBER DEFAULT 270008,',
'    P_URL IN VARCHAR2',
')',
'as',
'  pragma autonomous_transaction;',
'  l_munics munics_t;',
'  l_file_name varchar2(200) := substr(p_url,instr(p_url,''/'',-1)+1);',
'begin',
unistr('  -- \5909\66F4\5BFE\8C61\306E\5730\65B9\81EA\6CBB\4F53\60C5\5831\3092\30ED\30C3\30AF\3002'),
unistr('  select "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" bulk collect into l_munics from covid19_patients '),
unistr('  where "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = p_municipality_code for update nowait;'),
unistr('  -- \53D6\5F97\3057\305F\30C7\30FC\30BF\306E\3046\3061\3001\5909\66F4\5206\306E\307F\3092\9069\7528\3002'),
'  merge into covid19_patients p',
'  using',
'  (',
'      select',
'          to_number(col001) as LINE_NO,',
unistr('          p_municipality_code as "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9",'),
unistr('          ''\5927\962A\5E9C'' as "\90FD\9053\5E9C\770C\540D",'),
'          case when regexp_like(col002,''\d+'') then',
'              to_date(''1900/01/01 00:00:00'', ''YYYY/MM/DD HH24:MI:SS'') - 2 + to_number(col002)',
'          else',
'              null',
unistr('          end as "\516C\8868_\5E74\6708\65E5",'),
'          case when regexp_like(col002,''\d+'') then',
'              to_char(to_date(''1900/01/01 00:00:00'', ''YYYY/MM/DD HH24:MI:SS'') - 2 + to_number(col002),''DY'')',
'          else',
'              null',
unistr('          end as "\66DC\65E5",'),
'          case when regexp_like(col006,''\d+'') then',
'              to_date(''1900/01/01 00:00:00'', ''YYYY/MM/DD HH24:MI:SS'') - 2 + to_number(col006)',
'          else',
'              null',
unistr('          end as "\767A\75C7_\5E74\6708\65E5",'),
unistr('          col005 as "\60A3\8005_\5C45\4F4F\5730", '),
'          case when regexp_like(col003, ''^\d\d$'') ',
unistr('          then col003 || ''\4EE3'' '),
'          else col003 ',
unistr('          end as "\60A3\8005_\5E74\4EE3",'),
unistr('          col004 as "\60A3\8005_\6027\5225", col007 as "\60A3\8005_\75C7\72B6"'),
'      from table(',
'          apex_data_parser.parse(',
'              p_content => apex_web_service.make_rest_request_b(',
'              p_url,',
'              ''GET''',
'              ),',
'              p_file_name => l_file_name,',
'              p_skip_rows => 2',
'          )',
'      ) where col001 is not null',
'      minus',
'      select ',
unistr('          LINE_NO,"\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9","\90FD\9053\5E9C\770C\540D","\516C\8868_\5E74\6708\65E5","\66DC\65E5",'),
unistr('          "\767A\75C7_\5E74\6708\65E5","\60A3\8005_\5C45\4F4F\5730","\60A3\8005_\5E74\4EE3","\60A3\8005_\6027\5225","\60A3\8005_\75C7\72B6"'),
'      from covid19_patients',
unistr('      where "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = p_municipality_code'),
'  ) n',
unistr('  on (p.LINE_NO = n.LINE_NO and p."\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = n."\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9")'),
'  when matched then',
'      update set',
unistr('          p."\516C\8868_\5E74\6708\65E5" = n."\516C\8868_\5E74\6708\65E5",'),
unistr('          p."\66DC\65E5" = n."\66DC\65E5",'),
unistr('          p."\767A\75C7_\5E74\6708\65E5" = n."\767A\75C7_\5E74\6708\65E5",'),
unistr('          p."\60A3\8005_\5C45\4F4F\5730" = n."\60A3\8005_\5C45\4F4F\5730",'),
unistr('          p."\60A3\8005_\5E74\4EE3" = n."\60A3\8005_\5E74\4EE3",'),
unistr('          p."\60A3\8005_\6027\5225" = n."\60A3\8005_\6027\5225",'),
unistr('          p."\60A3\8005_\75C7\72B6" = n."\60A3\8005_\75C7\72B6"'),
'  when not matched then',
'      insert(',
unistr('          LINE_NO, "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9","\90FD\9053\5E9C\770C\540D",'),
unistr('          "\516C\8868_\5E74\6708\65E5","\66DC\65E5","\767A\75C7_\5E74\6708\65E5","\60A3\8005_\5C45\4F4F\5730",'),
unistr('          "\60A3\8005_\5E74\4EE3","\60A3\8005_\6027\5225","\60A3\8005_\75C7\72B6"'),
'      )',
'      values(',
unistr('          n.LINE_NO,n."\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9",n."\90FD\9053\5E9C\770C\540D",'),
unistr('          n."\516C\8868_\5E74\6708\65E5",n."\66DC\65E5",n."\767A\75C7_\5E74\6708\65E5",n."\60A3\8005_\5C45\4F4F\5730",'),
unistr('          n."\60A3\8005_\5E74\4EE3",n."\60A3\8005_\6027\5225",n."\60A3\8005_\75C7\72B6"'),
'      );',
unistr('  -- \66F4\65B0\30DE\30FC\30AF\3092\73FE\5728\6642\523B\306B\3059\308B\3002'),
'  mark_update(p_municipality_code => p_municipality_code);',
'  commit;',
'end UPDATE_PATIENTS_OSAKA;',
'',
'/*',
unistr(' * \5175\5EAB\306F\5F62\5F0F\304C\304B\306A\308A\7570\306A\308B\3002'),
' */',
'procedure UPDATE_PATIENTS_HYOGO(',
'    P_MUNICIPALITY_CODE IN NUMBER DEFAULT 280003,',
'    P_URL IN VARCHAR2',
')',
'as',
'  pragma autonomous_transaction;',
'  l_munics munics_t;',
'  l_file_name varchar2(200) := substr(p_url,instr(p_url,''/'',-1)+1);',
'begin',
unistr('  -- \5909\66F4\5BFE\8C61\306E\5730\65B9\81EA\6CBB\4F53\60C5\5831\3092\30ED\30C3\30AF\3002'),
unistr('  select "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" bulk collect into l_munics from covid19_patients '),
unistr('  where "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = p_municipality_code for update nowait;'),
unistr('  -- \53D6\5F97\3057\305F\30C7\30FC\30BF\306E\3046\3061\3001\5909\66F4\5206\306E\307F\3092\9069\7528\3002'),
'  merge into covid19_patients p',
'  using',
'  (',
'      select',
'          to_number(col002) as LINE_NO,',
unistr('          p_municipality_code as "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9",'),
unistr('          ''\5175\5EAB\770C'' as "\90FD\9053\5E9C\770C\540D",'),
unistr('          col006 as "\5E02\533A\753A\6751\540D",'),
'          case when regexp_like(col003,''\d+'') then',
'              to_date(''1900/01/01 00:00:00'', ''YYYY/MM/DD HH24:MI:SS'') - 2 + to_number(col003)',
'          else',
'              null',
unistr('          end as "\516C\8868_\5E74\6708\65E5",'),
'          case when regexp_like(col003,''\d+'') then',
'              to_char(to_date(''1900/01/01 00:00:00'', ''YYYY/MM/DD HH24:MI:SS'') - 2 + to_number(col003),''DY'')',
'          else',
'              null',
unistr('          end as "\66DC\65E5",'),
'          case when regexp_like(col009,''\d+'') then',
'              to_date(''1900/01/01 00:00:00'', ''YYYY/MM/DD HH24:MI:SS'') - 2 + to_number(col009)',
'          else',
'              null',
unistr('          end as "\767A\75C7_\5E74\6708\65E5",'),
unistr('          col007 as "\60A3\8005_\5C45\4F4F\5730", '),
'          case when regexp_like(col004, ''^\d\d$'') ',
unistr('          then col004 || ''\4EE3'' '),
'          else col004 ',
unistr('          end as "\60A3\8005_\5E74\4EE3",'),
unistr('          col005 as "\60A3\8005_\6027\5225", '),
unistr('          col008 as "\60A3\8005_\5C5E\6027",'),
unistr('          col010 as "\60A3\8005_\6E21\822A\6B74\306E\6709\7121\30D5\30E9\30B0",'),
unistr('          col011 as "\5099\8003"'),
'      from table(',
'          apex_data_parser.parse(',
'              p_content => apex_web_service.make_rest_request_b(',
'              p_url,',
'              ''GET''',
'              ),',
'              p_file_name => l_file_name,',
'              p_skip_rows => 5',
'          )',
'      ) where col002 is not null',
'      minus',
'      select ',
unistr('          LINE_NO,"\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9","\90FD\9053\5E9C\770C\540D","\5E02\533A\753A\6751\540D","\516C\8868_\5E74\6708\65E5","\66DC\65E5",'),
unistr('          "\767A\75C7_\5E74\6708\65E5","\60A3\8005_\5C45\4F4F\5730","\60A3\8005_\5E74\4EE3","\60A3\8005_\6027\5225","\60A3\8005_\5C5E\6027",'),
unistr('          "\60A3\8005_\6E21\822A\6B74\306E\6709\7121\30D5\30E9\30B0","\5099\8003"'),
'      from covid19_patients',
unistr('      where "\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = p_municipality_code'),
'  ) n',
unistr('  on (p.LINE_NO = n.LINE_NO and p."\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9" = n."\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9")'),
'  when matched then',
'      update set',
unistr('          p."\5E02\533A\753A\6751\540D" = n."\5E02\533A\753A\6751\540D",'),
unistr('          p."\516C\8868_\5E74\6708\65E5" = n."\516C\8868_\5E74\6708\65E5",'),
unistr('          p."\66DC\65E5" = n."\66DC\65E5",'),
unistr('          p."\767A\75C7_\5E74\6708\65E5" = n."\767A\75C7_\5E74\6708\65E5",'),
unistr('          p."\60A3\8005_\5C45\4F4F\5730" = n."\60A3\8005_\5C45\4F4F\5730",'),
unistr('          p."\60A3\8005_\5E74\4EE3" = n."\60A3\8005_\5E74\4EE3",'),
unistr('          p."\60A3\8005_\6027\5225" = n."\60A3\8005_\6027\5225",'),
unistr('          p."\60A3\8005_\5C5E\6027" = n."\60A3\8005_\5C5E\6027",'),
unistr('          p."\60A3\8005_\6E21\822A\6B74\306E\6709\7121\30D5\30E9\30B0" = n."\60A3\8005_\6E21\822A\6B74\306E\6709\7121\30D5\30E9\30B0",'),
unistr('          p."\5099\8003" = n."\5099\8003"          '),
'  when not matched then',
'      insert(',
unistr('          LINE_NO,"\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9","\90FD\9053\5E9C\770C\540D","\5E02\533A\753A\6751\540D","\516C\8868_\5E74\6708\65E5","\66DC\65E5",'),
unistr('          "\767A\75C7_\5E74\6708\65E5","\60A3\8005_\5C45\4F4F\5730","\60A3\8005_\5E74\4EE3","\60A3\8005_\6027\5225","\60A3\8005_\5C5E\6027",'),
unistr('          "\60A3\8005_\6E21\822A\6B74\306E\6709\7121\30D5\30E9\30B0","\5099\8003"'),
'      )',
'      values(',
unistr('          n.LINE_NO,n."\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9",n."\90FD\9053\5E9C\770C\540D",n."\5E02\533A\753A\6751\540D",n."\516C\8868_\5E74\6708\65E5",n."\66DC\65E5",'),
unistr('          n."\767A\75C7_\5E74\6708\65E5",n."\60A3\8005_\5C45\4F4F\5730",n."\60A3\8005_\5E74\4EE3",n."\60A3\8005_\6027\5225",n."\60A3\8005_\5C5E\6027",'),
unistr('          n."\60A3\8005_\6E21\822A\6B74\306E\6709\7121\30D5\30E9\30B0",n."\5099\8003"'),
'      );',
unistr('  -- \66F4\65B0\30DE\30FC\30AF\3092\73FE\5728\6642\523B\306B\3059\308B\3002'),
'  mark_update(p_municipality_code => p_municipality_code);',
'  commit;',
'end UPDATE_PATIENTS_HYOGO;',
'',
'end "COVID19_UTIL";',
'/',
'',
''))
);
end;
/
begin
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(13961166730844469403)
,p_script_id=>wwv_flow_api.id(13961166604591469402)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'COVID19_UTIL'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_updated_on=>to_date('20200415001753','YYYYMMDDHH24MISS')
,p_created_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_created_on=>to_date('20200415001753','YYYYMMDDHH24MISS')
);
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
