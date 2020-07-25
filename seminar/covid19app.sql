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
,p_default_workspace_id=>9948024129919573
,p_default_application_id=>101
,p_default_id_offset=>10367154867592946
,p_default_owner=>'MYWORKSPACE'
);
end;
/
 
prompt APPLICATION 101 - 新型コロナウイルス感染症陽性患者属性
--
-- Application Export:
--   Application:     101
--   Name:            新型コロナウイルス感染症陽性患者属性
--   Date and Time:   07:30 土曜日 7月 25, 2020
--   Exported By:     MYWORKSPACE
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     11
--       Items:                   47
--       Computations:             2
--       Validations:              3
--       Processes:               98
--       Regions:                 23
--       Buttons:                110
--       Dynamic Actions:          7
--     Shared Components:
--       Logic:
--         Data Loading:           1
--       Navigation:
--         Lists:                  4
--         Breadcrumbs:            1
--           Entries:              3
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
--           Report:              11
--         LOVs:                   6
--         Shortcuts:              1
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         20.1.0.00.13
--   Instance ID:     9947720973411657
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
,p_owner=>nvl(wwv_flow_application_install.get_schema,'MYWORKSPACE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,unistr('\65B0\578B\30B3\30ED\30CA\30A6\30A4\30EB\30B9\611F\67D3\75C7\967D\6027\60A3\8005\5C5E\6027'))
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'COVID19JP')
,p_application_group=>28214209594348208579
,p_application_group_name=>unistr('\30D6\30ED\30B0')
,p_application_group_comment=>'http://apexugj.blogspot.com/'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'0E22EEE027C58C3DFBEA53F7C6F476CAE1B3E1711FD919E6E4A9D38591FD003D'
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
,p_documentation_banner=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\4F5C\6210\30A6\30A3\30B6\30FC\30C92020.07.15\304B\3089\4F5C\6210\3055\308C\305F\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\3002')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(30495436664909325159)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>unistr('\65B0\578B\30B3\30ED\30CA\30A6\30A4\30EB\30B9\611F\67D3\75C7\967D\6027\60A3\8005\5C5E\6027')
,p_app_builder_icon_name=>'app-icon.svg'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'20200721'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>unistr('\3053\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306F\3001\73FE\6642\70B9\3067\306F\4F7F\7528\3067\304D\307E\305B\3093\3002')
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>unistr('\65B0\578B\30B3\30ED\30CA\30A6\30A4\30EB\30B9\611F\67D3\75C7\967D\6027\60A3\8005\5C5E\6027')
,p_substitution_string_02=>'APP_PATH'
,p_substitution_value_02=>'/ords/myworkspace/covid19jp'
,p_last_updated_by=>'MYWORKSPACE'
,p_last_upd_yyyymmddhh24miss=>'20200725072830'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists/デスクトップ・ナビゲーション・メニュー
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(29996204873480090798)
,p_name=>unistr('\30C7\30B9\30AF\30C8\30C3\30D7\30FB\30CA\30D3\30B2\30FC\30B7\30E7\30F3\30FB\30E1\30CB\30E5\30FC')
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(29996352938285090943)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\30DB\30FC\30E0')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(29996354355874090947)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\967D\6027\60A3\8005\4E00\89A7')
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(30191278135917250241)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('\30C7\30FC\30BF\306E\30ED\30FC\30C9')
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(30367479213405923832)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('\30C7\30FC\30BF\66F4\65B0')
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
);
end;
/
prompt --application/shared_components/navigation/lists/デスクトップ・ナビゲーション・バー
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(29996342721253090913)
,p_name=>unistr('\30C7\30B9\30AF\30C8\30C3\30D7\30FB\30CA\30D3\30B2\30FC\30B7\30E7\30F3\30FB\30D0\30FC')
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(29996407208453091062)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(29996407730766091063)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(29996407208453091062)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(29996408065554091063)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('\30B5\30A4\30F3\30A2\30A6\30C8')
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(29996407208453091062)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/ページ・ナビゲーション
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(29996406123918091060)
,p_name=>unistr('\30DA\30FC\30B8\30FB\30CA\30D3\30B2\30FC\30B7\30E7\30F3')
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(29996406462467091061)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\967D\6027\60A3\8005\4E00\89A7')
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(30935926063568266322)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('\30C7\30FC\30BF\306E\30ED\30FC\30C9')
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(30935540291491921474)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('\30C7\30FC\30BF\306E\66F4\65B0')
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/データ・ロード・ウィザードの進捗状況_陽性患者属性
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(30191275926814250239)
,p_name=>unistr('\30C7\30FC\30BF\30FB\30ED\30FC\30C9\30FB\30A6\30A3\30B6\30FC\30C9\306E\9032\6357\72B6\6CC1 - \967D\6027\60A3\8005\5C5E\6027')
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(30191276295638250239)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\30C7\30FC\30BF\30FB\30ED\30FC\30C9\30FB\30BD\30FC\30B9')
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(30191276689708250240)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\30C7\30FC\30BF\3068\8868\306E\30DE\30C3\30D4\30F3\30B0')
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(30191277086445250240)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('\30C7\30FC\30BF\691C\8A3C')
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(30191277464728250240)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('\30C7\30FC\30BF\30FB\30ED\30FC\30C9\7D50\679C')
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files/app_icon_svg
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '3C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667222076696577426F783D22302030203634203634222077696474683D22363422206865696768743D223634223E3C726563742077696474683D2231303025';
wwv_flow_api.g_varchar2_table(2) := '22206865696768743D2231303025222066696C6C3D222345393542353422202F3E3C67206F7061636974793D222E32223E3C7061746820643D224D333220323661322E3520322E3520302031203020322E3520322E3541322E35303320322E3530332030';
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
 p_id=>wwv_flow_api.id(29996343931159090920)
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
wwv_flow_api.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20234539354235343B0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(29996344160898090922)
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
 p_id=>wwv_flow_api.id(29996201982681090795)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(29996202320706090795)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(29996202603176090795)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(29996202945520090796)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH_CB'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(29996203187224090796)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(29996203505562090796)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(29996203843841090797)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
end;
/
prompt --application/shared_components/security/authorizations/管理権限
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(29996345491228090924)
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
prompt --application/shared_components/user_interface/lovs/data_load_charset
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(30191290611571250256)
,p_lov_name=>'DATA_LOAD_CHARSET'
,p_lov_query=>'.'||wwv_flow_api.id(30191290611571250256)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191291010182250259)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Unicode (UTF-16 Little Endian)'
,p_lov_return_value=>'utf-16le'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191291406885250260)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Unicode (UTF-16 Big Endian)'
,p_lov_return_value=>'utf-16be'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191291785246250260)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'US-ASCII'
,p_lov_return_value=>'us-ascii'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191292188402250260)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\30A2\30E9\30D3\30A2\8A9E ISO-8859-6')
,p_lov_return_value=>'iso-8859-6'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191292594655250261)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\30A2\30E9\30D3\30A2\8A9E(Windows 1256)')
,p_lov_return_value=>'windows-1256'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191292974823250261)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\4E2D\56FD\8A9E(Big5)')
,p_lov_return_value=>'big5'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191293440523250261)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\4E2D\56FD\8A9E(GBK)')
,p_lov_return_value=>'gbk'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191293849870250261)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\30AD\30EA\30EB\8A9E(ISO-8859-5)')
,p_lov_return_value=>'iso-8859-5'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191294205121250262)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\30AD\30EA\30EB\8A9E(KOI8-R)')
,p_lov_return_value=>'koi8-r'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191294583326250262)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\30AD\30EA\30EB\8A9E(KOI8-U)')
,p_lov_return_value=>'koi8-u'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191294965985250262)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\30AD\30EA\30EB\8A9E(Windows 1251)')
,p_lov_return_value=>'windows-1251'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191295431009250262)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\6771\30E8\30FC\30ED\30C3\30D1\8A9E(ISO-8859-2)')
,p_lov_return_value=>'iso-8859-2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191295840724250263)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\6771\30E8\30FC\30ED\30C3\30D1\8A9E(Windows 1250)')
,p_lov_return_value=>'windows-1250'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191296186724250263)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\30AE\30EA\30B7\30E3\8A9E(ISO-8859-7)')
,p_lov_return_value=>'iso-8859-7'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191296623458250263)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\30AE\30EA\30B7\30E3\8A9E(Windows 1253)')
,p_lov_return_value=>'windows-1253'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191297047258250264)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\30D8\30D6\30E9\30A4\8A9E(ISO-8859-8-i)')
,p_lov_return_value=>'iso-8859-8-i'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191297357264250264)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\30D8\30D6\30E9\30A4\8A9E(Windows 1255)')
,p_lov_return_value=>'windows-1255'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191297829601250264)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\65E5\672C\8A9E(EUC)')
,p_lov_return_value=>'euc-jp'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191298221263250265)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\65E5\672C\8A9E(Shift JIS)')
,p_lov_return_value=>'shift_jis'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191298611577250265)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\97D3\56FD\8A9E(EUC)')
,p_lov_return_value=>'euc-kr'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191298966164250265)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\5317\30E8\30FC\30ED\30C3\30D1\8A9E(ISO-8859-4)')
,p_lov_return_value=>'iso-8859-4'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191299420472250265)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\5317\30E8\30FC\30ED\30C3\30D1\8A9E(Windows 1257)')
,p_lov_return_value=>'windows-1257'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191299784467250266)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\5357\30E8\30FC\30ED\30C3\30D1\8A9E(ISO-8859-3)')
,p_lov_return_value=>'iso-8859-3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191300223321250266)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\30BF\30A4\8A9E(TIS-620)')
,p_lov_return_value=>'tis-620'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191300619710250266)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\30C8\30EB\30B3\8A9E(ISO-8859-9)')
,p_lov_return_value=>'iso-8859-9'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191301012779250267)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\30C8\30EB\30B3\8A9E(Windows 1254)')
,p_lov_return_value=>'windows-1254'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191301395567250267)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Unicode(UTF-8)'
,p_lov_return_value=>'utf-8'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191301795302250267)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\30D9\30C8\30CA\30E0\8A9E(Windows 1258)')
,p_lov_return_value=>'windows-1258'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191302195057250267)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\897F\30E8\30FC\30ED\30C3\30D1\8A9E(ISO-8859-1)')
,p_lov_return_value=>'iso-8859-1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191302631170250268)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\897F\30E8\30FC\30ED\30C3\30D1\8A9E(Windows 1252)')
,p_lov_return_value=>'windows-1252'
);
end;
/
prompt --application/shared_components/user_interface/lovs/data_load_option
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(30191280028589250244)
,p_lov_name=>'DATA_LOAD_OPTION'
,p_lov_query=>'.'||wwv_flow_api.id(30191280028589250244)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191280408094250245)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>unistr('\30D5\30A1\30A4\30EB\3092\30A2\30C3\30D7\30ED\30FC\30C9(\30AB\30F3\30DE\533A\5207\308A(*.csv)\307E\305F\306F\30BF\30D6\533A\5207\308A)')
,p_lov_return_value=>'UPLOAD'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191280765970250246)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>unistr('\30B3\30D4\30FC\30FB\30A2\30F3\30C9\30FB\30DA\30FC\30B9\30C8')
,p_lov_return_value=>'PASTE'
);
end;
/
prompt --application/shared_components/user_interface/lovs/date_format_opt
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(30191288576846250253)
,p_lov_name=>'DATE_FORMAT_OPT'
,p_lov_query=>'.'||wwv_flow_api.id(30191288576846250253)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191288999473250254)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\6A19\6E96\66F8\5F0F\30DE\30B9\30AF\306E\4F7F\7528')
,p_lov_return_value=>'Y'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30191289444014250254)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>unistr('\30A2\30C3\30D7\30ED\30FC\30C9\5217\306E\30AB\30B9\30BF\30E0\66F8\5F0F\306E\63D0\4F9B')
,p_lov_return_value=>'N'
);
end;
/
prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(29996348062825090934)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(29996348062825090934)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(29996348455306090935)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>unistr('\30E6\30FC\30B6\30FC\540D\3092\8A18\61B6')
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lov_dataload_陽性患者属性
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(30203422082765292087)
,p_lov_name=>unistr('LOV_DATALOAD_\967D\6027\60A3\8005\5C5E\6027')
,p_lov_query=>'.'||wwv_flow_api.id(30203422082765292087)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30203423396303292089)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'No'
,p_lov_return_value=>'No'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30203423015781292089)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>unistr('\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9')
,p_lov_return_value=>'MUNICIPALITY_CODE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30203427436405292092)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>unistr('\90FD\9053\5E9C\770C\540D')
,p_lov_return_value=>'PREFECTURE_NAME'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30203422570620292089)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>unistr('\5E02\533A\753A\6751\540D')
,p_lov_return_value=>'CITY_NAME'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30203427775554292093)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>unistr('\516C\8868_\5E74\6708\65E5')
,p_lov_return_value=>'PUBLISHED_DATE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30203423761216292089)
,p_lov_disp_sequence=>60
,p_lov_disp_value=>unistr('\767A\75C7_\5E74\6708\65E5')
,p_lov_return_value=>'ONSET_DATE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30203425001696292091)
,p_lov_disp_sequence=>70
,p_lov_disp_value=>unistr('\60A3\8005_\5C45\4F4F\5730')
,p_lov_return_value=>'PATIENT_LOCATION'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30203424219266292090)
,p_lov_disp_sequence=>80
,p_lov_disp_value=>unistr('\60A3\8005_\5E74\4EE3')
,p_lov_return_value=>'PATIENT_AGE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30203425810520292091)
,p_lov_disp_sequence=>90
,p_lov_disp_value=>unistr('\60A3\8005_\6027\5225')
,p_lov_return_value=>'PATIENT_SEX'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30203425405763292091)
,p_lov_disp_sequence=>100
,p_lov_disp_value=>unistr('\60A3\8005_\8077\696D')
,p_lov_return_value=>'PATIENT_OCCUPATION'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30203426222926292092)
,p_lov_disp_sequence=>110
,p_lov_disp_value=>unistr('\60A3\8005_\72B6\614B')
,p_lov_return_value=>'PATIENT_STATUS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30203426608256292092)
,p_lov_disp_sequence=>120
,p_lov_disp_value=>unistr('\60A3\8005_\75C7\72B6')
,p_lov_return_value=>'PATIENT_SYMPTOM'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30203426972428292092)
,p_lov_disp_sequence=>130
,p_lov_disp_value=>unistr('\60A3\8005_\6E21\822A\6B74\306E\6709\7121\30D5\30E9\30B0')
,p_lov_return_value=>'PATIENT_TRAVEL_HISTORY'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30203424579425292090)
,p_lov_disp_sequence=>140
,p_lov_disp_value=>unistr('\60A3\8005_\9000\9662\6E08\30D5\30E9\30B0')
,p_lov_return_value=>'PATIENT_LEFT_HOSPITAL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(30203428184239292093)
,p_lov_disp_sequence=>150
,p_lov_disp_value=>unistr('\5099\8003')
,p_lov_return_value=>'REMARK'
);
end;
/
prompt --application/shared_components/user_interface/lovs/prefectures
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31368904815060299760)
,p_lov_name=>'PREFECTURES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select code,',
'       name',
'from covid19_municipalities',
'       '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'NAME'
,p_display_column_name=>'NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'CODE'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(29996346076987090927)
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
 p_id=>wwv_flow_api.id(29996204383162090797)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(29996204652609090798)
,p_short_name=>unistr('\30DB\30FC\30E0')
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(29996363204727090961)
,p_short_name=>unistr('\967D\6027\60A3\8005\4E00\89A7')
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(30367480090672923835)
,p_short_name=>unistr('\30C7\30FC\30BF\66F4\65B0')
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29996205161025090798)
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
 p_id=>wwv_flow_api.id(29996205492476090799)
,p_page_template_id=>wwv_flow_api.id(29996205161025090798)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996205805056090800)
,p_page_template_id=>wwv_flow_api.id(29996205161025090798)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996206150596090800)
,p_page_template_id=>wwv_flow_api.id(29996205161025090798)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996206439666090801)
,p_page_template_id=>wwv_flow_api.id(29996205161025090798)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996206725726090801)
,p_page_template_id=>wwv_flow_api.id(29996205161025090798)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996207042387090801)
,p_page_template_id=>wwv_flow_api.id(29996205161025090798)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996207329420090801)
,p_page_template_id=>wwv_flow_api.id(29996205161025090798)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996207635332090802)
,p_page_template_id=>wwv_flow_api.id(29996205161025090798)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29996208029223090803)
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
 p_id=>wwv_flow_api.id(29996208316064090803)
,p_page_template_id=>wwv_flow_api.id(29996208029223090803)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996208559478090803)
,p_page_template_id=>wwv_flow_api.id(29996208029223090803)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996208863697090803)
,p_page_template_id=>wwv_flow_api.id(29996208029223090803)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996209183725090804)
,p_page_template_id=>wwv_flow_api.id(29996208029223090803)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996209509745090804)
,p_page_template_id=>wwv_flow_api.id(29996208029223090803)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996209755355090804)
,p_page_template_id=>wwv_flow_api.id(29996208029223090803)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996210059846090804)
,p_page_template_id=>wwv_flow_api.id(29996208029223090803)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996210408650090805)
,p_page_template_id=>wwv_flow_api.id(29996208029223090803)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996210713473090805)
,p_page_template_id=>wwv_flow_api.id(29996208029223090803)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29996211081578090805)
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
 p_id=>wwv_flow_api.id(29996211428522090805)
,p_page_template_id=>wwv_flow_api.id(29996211081578090805)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996211662521090806)
,p_page_template_id=>wwv_flow_api.id(29996211081578090805)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996212007980090806)
,p_page_template_id=>wwv_flow_api.id(29996211081578090805)
,p_name=>'Body Footer'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29996213406789090807)
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
 p_id=>wwv_flow_api.id(29996213724889090808)
,p_page_template_id=>wwv_flow_api.id(29996213406789090807)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996213967970090808)
,p_page_template_id=>wwv_flow_api.id(29996213406789090807)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996214255898090808)
,p_page_template_id=>wwv_flow_api.id(29996213406789090807)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996214619086090808)
,p_page_template_id=>wwv_flow_api.id(29996213406789090807)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996214862330090809)
,p_page_template_id=>wwv_flow_api.id(29996213406789090807)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996215232759090809)
,p_page_template_id=>wwv_flow_api.id(29996213406789090807)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996215510207090809)
,p_page_template_id=>wwv_flow_api.id(29996213406789090807)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996215816798090809)
,p_page_template_id=>wwv_flow_api.id(29996213406789090807)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996216125078090809)
,p_page_template_id=>wwv_flow_api.id(29996213406789090807)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29996216543996090810)
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
 p_id=>wwv_flow_api.id(29996216797674090810)
,p_page_template_id=>wwv_flow_api.id(29996216543996090810)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996217105560090810)
,p_page_template_id=>wwv_flow_api.id(29996216543996090810)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996217372164090810)
,p_page_template_id=>wwv_flow_api.id(29996216543996090810)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996217736069090811)
,p_page_template_id=>wwv_flow_api.id(29996216543996090810)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996218039721090811)
,p_page_template_id=>wwv_flow_api.id(29996216543996090810)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996218256201090811)
,p_page_template_id=>wwv_flow_api.id(29996216543996090810)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996218570886090811)
,p_page_template_id=>wwv_flow_api.id(29996216543996090810)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29996219001259090812)
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
 p_id=>wwv_flow_api.id(29996219340629090812)
,p_page_template_id=>wwv_flow_api.id(29996219001259090812)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996219578844090812)
,p_page_template_id=>wwv_flow_api.id(29996219001259090812)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996219857595090813)
,p_page_template_id=>wwv_flow_api.id(29996219001259090812)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29996220544090090813)
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
 p_id=>wwv_flow_api.id(29996220819746090814)
,p_page_template_id=>wwv_flow_api.id(29996220544090090813)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996221111024090814)
,p_page_template_id=>wwv_flow_api.id(29996220544090090813)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996221406533090814)
,p_page_template_id=>wwv_flow_api.id(29996220544090090813)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996221729497090814)
,p_page_template_id=>wwv_flow_api.id(29996220544090090813)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996221988350090814)
,p_page_template_id=>wwv_flow_api.id(29996220544090090813)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996222336213090814)
,p_page_template_id=>wwv_flow_api.id(29996220544090090813)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996222627498090815)
,p_page_template_id=>wwv_flow_api.id(29996220544090090813)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996222951512090816)
,p_page_template_id=>wwv_flow_api.id(29996220544090090813)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29996223288690090816)
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
 p_id=>wwv_flow_api.id(29996223616581090817)
,p_page_template_id=>wwv_flow_api.id(29996223288690090816)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996223856794090817)
,p_page_template_id=>wwv_flow_api.id(29996223288690090816)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996224196195090817)
,p_page_template_id=>wwv_flow_api.id(29996223288690090816)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996224481337090817)
,p_page_template_id=>wwv_flow_api.id(29996223288690090816)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996224793324090818)
,p_page_template_id=>wwv_flow_api.id(29996223288690090816)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996225102038090818)
,p_page_template_id=>wwv_flow_api.id(29996223288690090816)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996225448612090818)
,p_page_template_id=>wwv_flow_api.id(29996223288690090816)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29996225815683090818)
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
 p_id=>wwv_flow_api.id(29996226106558090819)
,p_page_template_id=>wwv_flow_api.id(29996225815683090818)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996226441892090819)
,p_page_template_id=>wwv_flow_api.id(29996225815683090818)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996226658215090819)
,p_page_template_id=>wwv_flow_api.id(29996225815683090818)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(29996319818921090890)
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
 p_id=>wwv_flow_api.id(29996320494261090891)
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
 p_id=>wwv_flow_api.id(29996320589437090891)
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
 p_id=>wwv_flow_api.id(29996227354182090819)
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
 p_id=>wwv_flow_api.id(29996227636381090820)
,p_plug_template_id=>wwv_flow_api.id(29996227354182090819)
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
 p_id=>wwv_flow_api.id(29996230963559090822)
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
 p_id=>wwv_flow_api.id(29996231252757090823)
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
 p_id=>wwv_flow_api.id(29996231505786090823)
,p_plug_template_id=>wwv_flow_api.id(29996231252757090823)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996231854359090823)
,p_plug_template_id=>wwv_flow_api.id(29996231252757090823)
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
 p_id=>wwv_flow_api.id(29996232050629090823)
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
 p_id=>wwv_flow_api.id(29996232335736090823)
,p_plug_template_id=>wwv_flow_api.id(29996232050629090823)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996232590779090824)
,p_plug_template_id=>wwv_flow_api.id(29996232050629090823)
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
 p_id=>wwv_flow_api.id(29996234202298090825)
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
 p_id=>wwv_flow_api.id(29996234506562090825)
,p_plug_template_id=>wwv_flow_api.id(29996234202298090825)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996234792274090825)
,p_plug_template_id=>wwv_flow_api.id(29996234202298090825)
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
 p_id=>wwv_flow_api.id(29996241359682090830)
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
 p_id=>wwv_flow_api.id(29996241678512090830)
,p_plug_template_id=>wwv_flow_api.id(29996241359682090830)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996241991021090830)
,p_plug_template_id=>wwv_flow_api.id(29996241359682090830)
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
 p_id=>wwv_flow_api.id(29996246830494090833)
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
 p_id=>wwv_flow_api.id(29996248798126090834)
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
 p_id=>wwv_flow_api.id(29996249100404090835)
,p_plug_template_id=>wwv_flow_api.id(29996248798126090834)
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
 p_id=>wwv_flow_api.id(29996250924835090836)
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
 p_id=>wwv_flow_api.id(29996251188305090836)
,p_plug_template_id=>wwv_flow_api.id(29996250924835090836)
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
 p_id=>wwv_flow_api.id(29996253208964090839)
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
 p_id=>wwv_flow_api.id(29996253513626090839)
,p_plug_template_id=>wwv_flow_api.id(29996253208964090839)
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
 p_id=>wwv_flow_api.id(29996256464684090841)
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
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29996257065345090842)
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
 p_id=>wwv_flow_api.id(29996257393617090842)
,p_plug_template_id=>wwv_flow_api.id(29996257065345090842)
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
 p_id=>wwv_flow_api.id(29996258370822090843)
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
 p_id=>wwv_flow_api.id(29996258732964090844)
,p_plug_template_id=>wwv_flow_api.id(29996258370822090843)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996259019214090844)
,p_plug_template_id=>wwv_flow_api.id(29996258370822090843)
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
 p_id=>wwv_flow_api.id(29996265229783090848)
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
 p_id=>wwv_flow_api.id(29996265538951090849)
,p_plug_template_id=>wwv_flow_api.id(29996265229783090848)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29996265851577090849)
,p_plug_template_id=>wwv_flow_api.id(29996265229783090848)
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
 p_id=>wwv_flow_api.id(29996267816277090851)
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
 p_id=>wwv_flow_api.id(29996268813869090851)
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
 p_id=>wwv_flow_api.id(29996269154813090851)
,p_plug_template_id=>wwv_flow_api.id(29996268813869090851)
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
 p_id=>wwv_flow_api.id(29996294101443090869)
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
 p_id=>wwv_flow_api.id(29996298079246090872)
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
 p_id=>wwv_flow_api.id(29996303678927090876)
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
 p_id=>wwv_flow_api.id(29996305320994090877)
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
 p_id=>wwv_flow_api.id(29996308104118090879)
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
 p_id=>wwv_flow_api.id(29996309114825090880)
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
 p_id=>wwv_flow_api.id(29996309685016090880)
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
 p_id=>wwv_flow_api.id(29996310119120090881)
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
 p_id=>wwv_flow_api.id(29996311728517090882)
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
 p_id=>wwv_flow_api.id(29996313344005090883)
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
 p_id=>wwv_flow_api.id(29996315109715090886)
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
 p_id=>wwv_flow_api.id(29996316086499090887)
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
 p_id=>wwv_flow_api.id(29996317731264090888)
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
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(29996270121840090852)
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
 p_id=>wwv_flow_api.id(29996270335794090853)
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
 p_id=>wwv_flow_api.id(29996274343618090855)
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
 p_id=>wwv_flow_api.id(29996279658808090859)
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
 p_id=>wwv_flow_api.id(29996280950680090860)
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
 p_id=>wwv_flow_api.id(29996284072929090862)
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
 p_id=>wwv_flow_api.id(29996287091351090864)
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
 p_id=>wwv_flow_api.id(29996287321375090864)
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
 p_id=>wwv_flow_api.id(29996287321375090864)
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
 p_id=>wwv_flow_api.id(29996289874929090866)
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
 p_id=>wwv_flow_api.id(29996290290147090866)
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
 p_id=>wwv_flow_api.id(29996292257142090868)
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
 p_id=>wwv_flow_api.id(29996319102362090889)
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
 p_id=>wwv_flow_api.id(29996319171454090889)
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
 p_id=>wwv_flow_api.id(29996319305806090889)
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
 p_id=>wwv_flow_api.id(29996319444684090889)
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
 p_id=>wwv_flow_api.id(29996319532748090889)
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
 p_id=>wwv_flow_api.id(29996319599790090890)
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
 p_id=>wwv_flow_api.id(29996319747489090890)
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
 p_id=>wwv_flow_api.id(29996321904539090893)
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
 p_id=>wwv_flow_api.id(29996322062088090893)
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
 p_id=>wwv_flow_api.id(29996322052763090893)
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
 p_id=>wwv_flow_api.id(29996323269942090895)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(29996223288690090816)
,p_default_dialog_template=>wwv_flow_api.id(29996219001259090812)
,p_error_template=>wwv_flow_api.id(29996211081578090805)
,p_printer_friendly_template=>wwv_flow_api.id(29996223288690090816)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(29996211081578090805)
,p_default_button_template=>wwv_flow_api.id(29996320494261090891)
,p_default_region_template=>wwv_flow_api.id(29996258370822090843)
,p_default_chart_template=>wwv_flow_api.id(29996258370822090843)
,p_default_form_template=>wwv_flow_api.id(29996258370822090843)
,p_default_reportr_template=>wwv_flow_api.id(29996258370822090843)
,p_default_tabform_template=>wwv_flow_api.id(29996258370822090843)
,p_default_wizard_template=>wwv_flow_api.id(29996258370822090843)
,p_default_menur_template=>wwv_flow_api.id(29996267816277090851)
,p_default_listr_template=>wwv_flow_api.id(29996258370822090843)
,p_default_irr_template=>wwv_flow_api.id(29996256464684090841)
,p_default_report_template=>wwv_flow_api.id(29996287321375090864)
,p_default_label_template=>wwv_flow_api.id(29996319444684090889)
,p_default_menu_template=>wwv_flow_api.id(29996321904539090893)
,p_default_calendar_template=>wwv_flow_api.id(29996322052763090893)
,p_default_list_template=>wwv_flow_api.id(29996303678927090876)
,p_default_nav_list_template=>wwv_flow_api.id(29996315109715090886)
,p_default_top_nav_list_temp=>wwv_flow_api.id(29996315109715090886)
,p_default_side_nav_list_temp=>wwv_flow_api.id(29996310119120090881)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(29996232050629090823)
,p_default_dialogr_template=>wwv_flow_api.id(29996230963559090822)
,p_default_option_label=>wwv_flow_api.id(29996319444684090889)
,p_default_required_label=>wwv_flow_api.id(29996319747489090890)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(29996309685016090880)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.5/')
,p_files_version=>64
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
 p_id=>wwv_flow_api.id(29996322293132090894)
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
 p_id=>wwv_flow_api.id(29996322517640090894)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(29996322656405090894)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(29996322877306090894)
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
 p_id=>wwv_flow_api.id(29996323102599090894)
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
 p_id=>wwv_flow_api.id(29996212316834090806)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND'
,p_display_name=>'Page Background'
,p_display_sequence=>20
,p_template_types=>'PAGE'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996213111495090807)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT'
,p_display_name=>'Page Layout'
,p_display_sequence=>10
,p_template_types=>'PAGE'
,p_null_text=>'Floating (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996228095362090821)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996228543619090821)
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
 p_id=>wwv_flow_api.id(29996229124539090821)
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
 p_id=>wwv_flow_api.id(29996229469421090821)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996232876144090824)
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
 p_id=>wwv_flow_api.id(29996233327715090824)
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
 p_id=>wwv_flow_api.id(29996235089570090825)
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
 p_id=>wwv_flow_api.id(29996235935502090826)
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
 p_id=>wwv_flow_api.id(29996237073300090827)
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
 p_id=>wwv_flow_api.id(29996238303386090827)
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
 p_id=>wwv_flow_api.id(29996238673322090828)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996240680890090829)
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
 p_id=>wwv_flow_api.id(29996244073392090832)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996244471627090832)
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
 p_id=>wwv_flow_api.id(29996245300029090832)
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
 p_id=>wwv_flow_api.id(29996247286041090834)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996248088321090834)
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
 p_id=>wwv_flow_api.id(29996249372849090835)
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
 p_id=>wwv_flow_api.id(29996249997908090835)
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
 p_id=>wwv_flow_api.id(29996251932700090837)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996253809203090839)
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
 p_id=>wwv_flow_api.id(29996257661151090842)
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
 p_id=>wwv_flow_api.id(29996266119987090849)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996266537550090849)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996267318820090850)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996269391703090852)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996270557779090853)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996270996110090853)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996272976405090854)
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
 p_id=>wwv_flow_api.id(29996274847994090856)
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
 p_id=>wwv_flow_api.id(29996276578488090857)
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
 p_id=>wwv_flow_api.id(29996277369617090857)
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
 p_id=>wwv_flow_api.id(29996278799629090858)
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
 p_id=>wwv_flow_api.id(29996280001703090859)
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
 p_id=>wwv_flow_api.id(29996281248020090860)
,p_theme_id=>42
,p_name=>'COL_ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>150
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996281652288090860)
,p_theme_id=>42
,p_name=>'CONTENT_ALIGNMENT'
,p_display_name=>'Content Alignment'
,p_display_sequence=>90
,p_template_types=>'REPORT'
,p_null_text=>'Center (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996282040319090860)
,p_theme_id=>42
,p_name=>'COL_CONTENT_DESCRIPTION'
,p_display_name=>'Description'
,p_display_sequence=>130
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996282367083090861)
,p_theme_id=>42
,p_name=>'COL_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>110
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996282851188090861)
,p_theme_id=>42
,p_name=>'COL_MISC'
,p_display_name=>'Misc'
,p_display_sequence=>140
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996283253532090861)
,p_theme_id=>42
,p_name=>'COL_SELECTION'
,p_display_name=>'Selection'
,p_display_sequence=>100
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996283790392090862)
,p_theme_id=>42
,p_name=>'COL_CONTENT_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>120
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996285814515090863)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996287619625090864)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996288217056090865)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996288587538090865)
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
 p_id=>wwv_flow_api.id(29996290617787090867)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996294382902090869)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996295594353090870)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996296837744090871)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996298606878090872)
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
 p_id=>wwv_flow_api.id(29996300560136090874)
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
 p_id=>wwv_flow_api.id(29996301243865090874)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996302616847090875)
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
 p_id=>wwv_flow_api.id(29996304764274090877)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996306978639090878)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996310587593090881)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE'
,p_display_name=>'Collapse Mode'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996316407333090887)
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
 p_id=>wwv_flow_api.id(29996317036635090887)
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
 p_id=>wwv_flow_api.id(29996318008504090888)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996320024227090890)
,p_theme_id=>42
,p_name=>'ICON_HOVER_ANIMATION'
,p_display_name=>'Icon Hover Animation'
,p_display_sequence=>55
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996320961310090892)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996323480746090896)
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
 p_id=>wwv_flow_api.id(29996323858629090897)
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
 p_id=>wwv_flow_api.id(29996325466267090898)
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
 p_id=>wwv_flow_api.id(29996325895956090899)
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
 p_id=>wwv_flow_api.id(29996327462628090900)
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
 p_id=>wwv_flow_api.id(29996327864991090900)
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
 p_id=>wwv_flow_api.id(29996329547614090902)
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
 p_id=>wwv_flow_api.id(29996329938962090902)
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
 p_id=>wwv_flow_api.id(29996331494390090903)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996331944445090903)
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
 p_id=>wwv_flow_api.id(29996332297827090904)
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
 p_id=>wwv_flow_api.id(29996332740142090904)
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
 p_id=>wwv_flow_api.id(29996333127822090904)
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
 p_id=>wwv_flow_api.id(29996333465964090905)
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
 p_id=>wwv_flow_api.id(29996333854979090905)
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
 p_id=>wwv_flow_api.id(29996335274023090906)
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
 p_id=>wwv_flow_api.id(29996336667965090907)
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
 p_id=>wwv_flow_api.id(29996337658798090908)
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
 p_id=>wwv_flow_api.id(29996338055565090908)
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
 p_id=>wwv_flow_api.id(29996338468876090908)
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
 p_id=>wwv_flow_api.id(29996338877382090909)
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
 p_id=>wwv_flow_api.id(29996339464841090909)
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
 p_id=>wwv_flow_api.id(29996340135053090910)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29996340460677090910)
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
 p_id=>wwv_flow_api.id(29996340934374090911)
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
 p_id=>wwv_flow_api.id(29996341319150090911)
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
 p_id=>wwv_flow_api.id(29996342096073090912)
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
 p_id=>wwv_flow_api.id(29996207935407090802)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(29996205161025090798)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996211052116090805)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(29996208029223090803)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996212532710090807)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_1'
,p_display_name=>'Background 1'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(29996211081578090805)
,p_css_classes=>'t-LoginPage--bg1'
,p_group_id=>wwv_flow_api.id(29996212316834090806)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996212695481090807)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_2'
,p_display_name=>'Background 2'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(29996211081578090805)
,p_css_classes=>'t-LoginPage--bg2'
,p_group_id=>wwv_flow_api.id(29996212316834090806)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996212899596090807)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_3'
,p_display_name=>'Background 3'
,p_display_sequence=>30
,p_page_template_id=>wwv_flow_api.id(29996211081578090805)
,p_css_classes=>'t-LoginPage--bg3'
,p_group_id=>wwv_flow_api.id(29996212316834090806)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996213317138090807)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT_SPLIT'
,p_display_name=>'Split'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(29996211081578090805)
,p_css_classes=>'t-LoginPage--split'
,p_group_id=>wwv_flow_api.id(29996213111495090807)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996216413474090810)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(29996213406789090807)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996218931674090812)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(29996216543996090810)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996220194283090813)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(29996219001259090812)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996220373125090813)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(29996219001259090812)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996223164897090816)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(29996220544090090813)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996225734727090818)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(29996223288690090816)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996227014584090819)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(29996225815683090818)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996227160946090819)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(29996225815683090818)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996227915866090820)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(29996227354182090819)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996228266816090821)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996227354182090819)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(29996228095362090821)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996228688959090821)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996227354182090819)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(29996228543619090821)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996228927670090821)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996227354182090819)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(29996228543619090821)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996229262489090821)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996227354182090819)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(29996229124539090821)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996229681511090822)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996227354182090819)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(29996229469421090821)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996229949673090822)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29996227354182090819)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(29996228095362090821)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996230130239090822)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29996227354182090819)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(29996229124539090821)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996230304687090822)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29996227354182090819)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(29996228095362090821)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996230471785090822)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996227354182090819)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(29996229124539090821)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996230718334090822)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996227354182090819)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(29996228095362090821)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996230922123090822)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996227354182090819)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(29996229469421090821)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996233109515090824)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(29996232050629090823)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(29996232876144090824)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996233538491090824)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(29996232050629090823)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(29996233327715090824)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996233684214090824)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(29996232050629090823)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(29996232876144090824)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996233887373090824)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(29996232050629090823)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(29996233327715090824)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996234073777090825)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996232050629090823)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996235262351090825)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(29996235089570090825)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996235535330090826)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(29996235089570090825)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996235724614090826)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(29996235089570090825)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996236115612090826)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(29996235935502090826)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996236286781090826)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(29996235935502090826)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996236542085090826)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(29996235935502090826)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996236704164090826)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(29996235089570090825)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996236890739090826)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(29996235935502090826)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996237265594090827)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(29996237073300090827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996237475391090827)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(29996237073300090827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996237708805090827)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(29996237073300090827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996237921923090827)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(29996237073300090827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996238070299090827)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(29996237073300090827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996238482288090828)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(29996238303386090827)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996238947336090828)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(29996238673322090828)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996239141876090828)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(29996238303386090827)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996239305095090828)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996239484143090828)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(29996232876144090824)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996239668385090828)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996239893381090828)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(29996238673322090828)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996240130010090829)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996240297525090829)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996240547261090829)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996240943827090829)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(29996240680890090829)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996241106538090829)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(29996240680890090829)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996241292317090830)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996234202298090825)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(29996232876144090824)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996242303272090830)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996241359682090830)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(29996235935502090826)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996242529102090831)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996241359682090830)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(29996235935502090826)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996242716880090831)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29996241359682090830)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(29996235935502090826)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996242941583090831)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29996241359682090830)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(29996235935502090826)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996243136966090831)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996241359682090830)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(29996237073300090827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996243277694090831)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996241359682090830)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(29996237073300090827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996243552702090831)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29996241359682090830)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(29996237073300090827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996243743417090831)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29996241359682090830)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(29996237073300090827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996243922381090831)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(29996241359682090830)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(29996237073300090827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996244351843090832)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996241359682090830)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(29996244073392090832)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996244675482090832)
,p_theme_id=>42
,p_name=>'CONRTOLS_POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(29996241359682090830)
,p_css_classes=>'t-Region--controlsPosEnd'
,p_group_id=>wwv_flow_api.id(29996244471627090832)
,p_template_types=>'REGION'
,p_help_text=>'Position the expand / collapse button to the end of the region header.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996244911778090832)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996241359682090830)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(29996244073392090832)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996245133411090832)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996241359682090830)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(29996238673322090828)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996245487288090832)
,p_theme_id=>42
,p_name=>'ICONS_PLUS_OR_MINUS'
,p_display_name=>'Plus or Minus'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(29996241359682090830)
,p_css_classes=>'t-Region--hideShowIconsMath'
,p_group_id=>wwv_flow_api.id(29996245300029090832)
,p_template_types=>'REGION'
,p_help_text=>'Use the plus and minus icons for the expand and collapse button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996245737312090833)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996241359682090830)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996245946518090833)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996241359682090830)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(29996232876144090824)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996246063092090833)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996241359682090830)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996246344231090833)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29996241359682090830)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(29996232876144090824)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996246462781090833)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996241359682090830)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(29996238673322090828)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996246681174090833)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996241359682090830)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(29996232876144090824)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996247138347090833)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996246830494090833)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996247549642090834)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996246830494090833)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(29996247286041090834)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996247726760090834)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996246830494090833)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(29996247286041090834)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996247919594090834)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29996246830494090833)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(29996247286041090834)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996248334960090834)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996246830494090833)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(29996248088321090834)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996248494796090834)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996246830494090833)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(29996248088321090834)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996248675103090834)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29996246830494090833)
,p_css_classes=>'t-ContentBlock--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996249636182090835)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996248798126090834)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(29996249372849090835)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996249825715090835)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996248798126090834)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(29996232876144090824)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996250159576090836)
,p_theme_id=>42
,p_name=>'ICONS_CIRCULAR'
,p_display_name=>'Circle'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996248798126090834)
,p_css_classes=>'t-HeroRegion--iconsCircle'
,p_group_id=>wwv_flow_api.id(29996249997908090835)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a circle.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996250452389090836)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996248798126090834)
,p_css_classes=>'t-HeroRegion--iconsSquare'
,p_group_id=>wwv_flow_api.id(29996249997908090835)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a square.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996250626148090836)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996248798126090834)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996250841737090836)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996248798126090834)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(29996232876144090824)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996251523965090837)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(29996250924835090836)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996251658477090837)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996250924835090836)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996252146318090837)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29996250924835090836)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(29996251932700090837)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996252286166090837)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996250924835090836)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(29996251932700090837)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996252456154090838)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996250924835090836)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996252686801090838)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(29996250924835090836)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996252899849090839)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29996250924835090836)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996253065056090839)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996250924835090836)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(29996251932700090837)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996254010732090840)
,p_theme_id=>42
,p_name=>'ABOVE'
,p_display_name=>'Above'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29996253208964090839)
,p_css_classes=>'js-popup-pos-above'
,p_group_id=>wwv_flow_api.id(29996253809203090839)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout above or typically on top of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996254205711090840)
,p_theme_id=>42
,p_name=>'AFTER'
,p_display_name=>'After'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996253208964090839)
,p_css_classes=>'js-popup-pos-after'
,p_group_id=>wwv_flow_api.id(29996253809203090839)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout after or typically to the right of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996254445556090840)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(29996253208964090839)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996254587271090840)
,p_theme_id=>42
,p_name=>'BEFORE'
,p_display_name=>'Before'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996253208964090839)
,p_css_classes=>'js-popup-pos-before'
,p_group_id=>wwv_flow_api.id(29996253809203090839)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout before or typically to the left of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996254769070090840)
,p_theme_id=>42
,p_name=>'BELOW'
,p_display_name=>'Below'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29996253208964090839)
,p_css_classes=>'js-popup-pos-below'
,p_group_id=>wwv_flow_api.id(29996253809203090839)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout below or typically to the bottom of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996255027153090840)
,p_theme_id=>42
,p_name=>'DISPLAY_POPUP_CALLOUT'
,p_display_name=>'Display Popup Callout'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29996253208964090839)
,p_css_classes=>'js-popup-callout'
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add display a callout for the popup. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996255179329090840)
,p_theme_id=>42
,p_name=>'INSIDE'
,p_display_name=>'Inside'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(29996253208964090839)
,p_css_classes=>'js-popup-pos-inside'
,p_group_id=>wwv_flow_api.id(29996253809203090839)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout inside of the parent. This is useful when the parent is sufficiently large, such as a report or large region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996255427797090841)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29996253208964090839)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(29996251932700090837)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996255630117090841)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996253208964090839)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(29996251932700090837)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996255781635090841)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(29996253208964090839)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_api.id(29996251932700090837)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996256017669090841)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996253208964090839)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996256161173090841)
,p_theme_id=>42
,p_name=>'REMOVE_PAGE_OVERLAY'
,p_display_name=>'Remove Page Overlay'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29996253208964090839)
,p_css_classes=>'js-popup-noOverlay'
,p_template_types=>'REGION'
,p_help_text=>'This option will display the inline dialog without an overlay on the background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996256425411090841)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996253208964090839)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(29996251932700090837)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996256826582090842)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996256464684090841)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996256985008090842)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996256464684090841)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996257936997090843)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996257065345090842)
,p_css_classes=>'t-Login-region--headerIcon'
,p_group_id=>wwv_flow_api.id(29996257661151090842)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Icon in the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996258064421090843)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996257065345090842)
,p_css_classes=>'t-Login-region--headerTitle'
,p_group_id=>wwv_flow_api.id(29996257661151090842)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Title in the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996258269735090843)
,p_theme_id=>42
,p_name=>'LOGO_HEADER_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29996257065345090842)
,p_css_classes=>'t-Login-region--headerHidden'
,p_group_id=>wwv_flow_api.id(29996257661151090842)
,p_template_types=>'REGION'
,p_help_text=>'Hides both the Region Icon and Title from the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996259257720090844)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(29996235935502090826)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996259495852090844)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(29996235935502090826)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996259708800090844)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(29996235935502090826)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996259870310090844)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(29996235935502090826)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996260107824090844)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(29996237073300090827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996260344225090845)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(29996237073300090827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996260480595090845)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(29996237073300090827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996260657900090845)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(29996237073300090827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996260942265090845)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(29996237073300090827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996261141480090845)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(29996237073300090827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996261326760090845)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(29996237073300090827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996261514284090845)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(29996237073300090827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996261726484090846)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(29996237073300090827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996261938691090846)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(29996237073300090827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996262105936090846)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(29996237073300090827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996262335823090846)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(29996237073300090827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996262461301090846)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(29996237073300090827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996262655676090847)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(29996237073300090827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996262860476090847)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(29996237073300090827)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996263097609090847)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(29996238303386090827)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996263289007090847)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(29996238673322090828)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996263505841090847)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(29996238303386090827)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996263698652090848)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996263902793090848)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(29996232876144090824)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996264142131090848)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(29996232876144090824)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996264299539090848)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(29996238673322090828)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996264508187090848)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996264683562090848)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996264914412090848)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(29996232876144090824)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996265079852090848)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29996258370822090843)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(29996232876144090824)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996266293643090849)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996265229783090848)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(29996266119987090849)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996266721060090850)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996265229783090848)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(29996266537550090849)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996266904027090850)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996265229783090848)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996267109144090850)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996265229783090848)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(29996266537550090849)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996267464572090850)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996265229783090848)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(29996267318820090850)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996267704649090851)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996265229783090848)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(29996267318820090850)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996268096109090851)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(29996267816277090851)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(29996247286041090834)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996268267962090851)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(29996267816277090851)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996268527962090851)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(29996267816277090851)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(29996247286041090834)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996268690546090851)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996267816277090851)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996269645101090852)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29996268813869090851)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(29996269391703090852)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996269795404090852)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996268813869090851)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(29996269391703090852)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996269982446090852)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29996268813869090851)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996270827852090853)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(29996270335794090853)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(29996270557779090853)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996271250750090853)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29996270335794090853)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(29996270996110090853)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996271451410090853)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29996270335794090853)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(29996270557779090853)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996271620763090854)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29996270335794090853)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(29996270996110090853)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996271757603090854)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29996270335794090853)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(29996270557779090853)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996271974253090854)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(29996270335794090853)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(29996270996110090853)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996272247604090854)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(29996270335794090853)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(29996270996110090853)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996272394663090854)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29996270335794090853)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(29996270557779090853)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996272617414090854)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(29996270335794090853)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(29996270557779090853)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996272758737090854)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29996270335794090853)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996273236498090854)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29996270335794090853)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(29996272976405090854)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996273356429090855)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(29996270335794090853)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(29996270996110090853)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996273569017090855)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(29996270335794090853)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(29996270996110090853)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996273782897090855)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(29996270335794090853)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(29996270996110090853)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996273955742090855)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29996270335794090853)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(29996272976405090854)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996274241370090855)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29996270335794090853)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(29996270996110090853)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996274617322090855)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(29996274343618090855)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(29996270996110090853)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996275030184090856)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29996274343618090855)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(29996274847994090856)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996275239644090856)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29996274343618090855)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(29996270996110090853)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996275431325090856)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29996274343618090855)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(29996274847994090856)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996275554871090856)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29996274343618090855)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(29996270996110090853)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996275759578090856)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29996274343618090855)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(29996274847994090856)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996275957603090856)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(29996274343618090855)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(29996270996110090853)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996276168599090856)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29996274343618090855)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(29996272976405090854)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996276427167090857)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(29996274343618090855)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(29996272976405090854)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996276821219090857)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29996274343618090855)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(29996276578488090857)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996276993806090857)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29996274343618090855)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(29996276578488090857)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996277236231090857)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29996274343618090855)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(29996272976405090854)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996277599859090857)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29996274343618090855)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(29996277369617090857)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996277828825090858)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29996274343618090855)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(29996277369617090857)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996278026788090858)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29996274343618090855)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996278224768090858)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29996274343618090855)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(29996272976405090854)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996278357423090858)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(29996274343618090855)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(29996270996110090853)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996278652765090858)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(29996274343618090855)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(29996274847994090856)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996278959551090858)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29996274343618090855)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(29996278799629090858)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996279182308090858)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29996274343618090855)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(29996278799629090858)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996279443624090859)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(29996274343618090855)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(29996270996110090853)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996279645861090859)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29996274343618090855)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996280156074090859)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29996279658808090859)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(29996280001703090859)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996280379902090859)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29996279658808090859)
,p_css_classes=>'t-Comments--iconsRounded'
,p_group_id=>wwv_flow_api.id(29996278799629090858)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996280634466090859)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29996279658808090859)
,p_css_classes=>'t-Comments--iconsSquare'
,p_group_id=>wwv_flow_api.id(29996278799629090858)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996280790330090859)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29996279658808090859)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(29996280001703090859)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996281439908090860)
,p_theme_id=>42
,p_name=>'ACTIONS_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(29996280950680090860)
,p_css_classes=>'t-ContentRow--hideActions'
,p_group_id=>wwv_flow_api.id(29996281248020090860)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Actions column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996281852340090860)
,p_theme_id=>42
,p_name=>'ALIGNMENT_TOP'
,p_display_name=>'Top'
,p_display_sequence=>100
,p_report_template_id=>wwv_flow_api.id(29996280950680090860)
,p_css_classes=>'t-ContentRow--alignTop'
,p_group_id=>wwv_flow_api.id(29996281652288090860)
,p_template_types=>'REPORT'
,p_help_text=>'Aligns the content to the top of the row. This is useful when you expect that yours rows will vary in height (e.g. some rows will have longer descriptions than others).'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996282248405090860)
,p_theme_id=>42
,p_name=>'DESCRIPTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(29996280950680090860)
,p_css_classes=>'t-ContentRow--hideDescription'
,p_group_id=>wwv_flow_api.id(29996282040319090860)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Description from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996282596077090861)
,p_theme_id=>42
,p_name=>'ICON_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29996280950680090860)
,p_css_classes=>'t-ContentRow--hideIcon'
,p_group_id=>wwv_flow_api.id(29996282367083090861)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Icon from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996282984654090861)
,p_theme_id=>42
,p_name=>'MISC_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(29996280950680090860)
,p_css_classes=>'t-ContentRow--hideMisc'
,p_group_id=>wwv_flow_api.id(29996282851188090861)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Misc column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996283438994090861)
,p_theme_id=>42
,p_name=>'SELECTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29996280950680090860)
,p_css_classes=>'t-ContentRow--hideSelection'
,p_group_id=>wwv_flow_api.id(29996283253532090861)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Selection column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996283597853090861)
,p_theme_id=>42
,p_name=>'STYLE_COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(29996280950680090860)
,p_css_classes=>'t-ContentRow--styleCompact'
,p_group_id=>wwv_flow_api.id(29996272976405090854)
,p_template_types=>'REPORT'
,p_help_text=>'This option reduces the padding and font sizes to present a compact display of the same information.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996284052503090862)
,p_theme_id=>42
,p_name=>'TITLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29996280950680090860)
,p_css_classes=>'t-ContentRow--hideTitle'
,p_group_id=>wwv_flow_api.id(29996283790392090862)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Title from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996284393535090862)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29996284072929090862)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(29996270996110090853)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996284631871090863)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29996284072929090862)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(29996270996110090853)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996284789516090863)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29996284072929090862)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(29996270996110090853)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996285001975090863)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(29996284072929090862)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(29996270996110090853)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996285224053090863)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(29996284072929090862)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996285427155090863)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29996284072929090862)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(29996278799629090858)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996285608209090863)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29996284072929090862)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(29996278799629090858)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996286011829090863)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29996284072929090862)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(29996285814515090863)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996286164046090864)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29996284072929090862)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996286423598090864)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29996284072929090862)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996286619961090864)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29996284072929090862)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996286813774090864)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(29996284072929090862)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(29996270996110090853)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996287001494090864)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(29996284072929090862)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_api.id(29996270996110090853)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996287804818090865)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29996287321375090864)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(29996287619625090864)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996288014391090865)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29996287321375090864)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(29996287619625090864)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996288405566090865)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29996287321375090864)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(29996288217056090865)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996288815633090865)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29996287321375090864)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(29996288587538090865)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996289038736090865)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29996287321375090864)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(29996288587538090865)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996289180795090866)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(29996287321375090864)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(29996288587538090865)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996289448554090866)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29996287321375090864)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(29996288217056090865)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996289649962090866)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29996287321375090864)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996289773521090866)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29996287321375090864)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(29996288587538090865)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996290163485090866)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(29996289874929090866)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(29996272976405090854)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996290789678090867)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29996290290147090866)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(29996290617787090867)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996290958865090867)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29996290290147090866)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(29996290617787090867)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996291201054090867)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29996290290147090866)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(29996290617787090867)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996291406475090867)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29996290290147090866)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(29996270996110090853)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996291648002090867)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29996290290147090866)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(29996270996110090853)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996291784958090867)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(29996290290147090866)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(29996290617787090867)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996292008292090868)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(29996290290147090866)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(29996290617787090867)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996292232910090868)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(29996290290147090866)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(29996290617787090867)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996292561906090868)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29996292257142090868)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(29996290617787090867)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996292783041090868)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29996292257142090868)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(29996290617787090867)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996292958277090868)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29996292257142090868)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(29996290617787090867)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996293245467090868)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29996292257142090868)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(29996270996110090853)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996293412558090869)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29996292257142090868)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(29996270996110090853)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996293557081090869)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(29996292257142090868)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(29996290617787090867)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996293786479090869)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(29996292257142090868)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(29996290617787090867)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996294018648090869)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(29996292257142090868)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(29996290617787090867)
,p_template_types=>'REPORT'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996294568729090870)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29996294101443090869)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996294817244090870)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29996294101443090869)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996294961115090870)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(29996294101443090869)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996295219060090870)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(29996294101443090869)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996295401274090870)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996294101443090869)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996295761699090870)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29996294101443090869)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(29996295594353090870)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996296026639090870)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(29996294101443090869)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996296219277090871)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(29996294101443090869)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996296398645090871)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(29996294101443090869)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996296597136090871)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29996294101443090869)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(29996295594353090870)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996297020761090871)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29996294101443090869)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(29996296837744090871)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996297158066090871)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29996294101443090869)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(29996296837744090871)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996297392736090871)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996294101443090869)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(29996296837744090871)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996297578087090872)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996294101443090869)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996297819368090872)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(29996294101443090869)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(29996296837744090871)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996297978098090872)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(29996294101443090869)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(29996296837744090871)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996298454861090872)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996298079246090872)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996298818961090873)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996298079246090872)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(29996298606878090872)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996299006339090873)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29996298079246090872)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996299231049090873)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29996298079246090872)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(29996298606878090872)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996299405971090873)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29996298079246090872)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996299651442090873)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29996298079246090872)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(29996298606878090872)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996299811428090873)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(29996298079246090872)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996300043130090873)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996298079246090872)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(29996295594353090870)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996300158555090873)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(29996298079246090872)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(29996295594353090870)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996300441772090874)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(29996298079246090872)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996300756410090874)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996298079246090872)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(29996300560136090874)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996301001561090874)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29996298079246090872)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(29996295594353090870)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996301422988090874)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996298079246090872)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(29996301243865090874)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996301568274090874)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29996298079246090872)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(29996301243865090874)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996301769949090875)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29996298079246090872)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996302010554090875)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29996298079246090872)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(29996295594353090870)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996302226825090875)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(29996298079246090872)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996302404773090875)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(29996298079246090872)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(29996298606878090872)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996302791351090875)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996298079246090872)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(29996302616847090875)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996303026713090875)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29996298079246090872)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(29996302616847090875)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996303206144090876)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29996298079246090872)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(29996300560136090874)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996303415920090876)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(29996298079246090872)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996303590086090876)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996298079246090872)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996303981479090876)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996303678927090876)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(29996295594353090870)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996304199515090876)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29996303678927090876)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996304359294090876)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996303678927090876)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996304633295090876)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29996303678927090876)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996305046495090877)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29996303678927090876)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(29996304764274090877)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996305204839090877)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996303678927090876)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(29996304764274090877)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996305653137090877)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996305320994090877)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996305789117090878)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29996305320994090877)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996305967388090878)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29996305320994090877)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996306220997090878)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(29996305320994090877)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996306388397090878)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(29996305320994090877)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996306568076090878)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996305320994090877)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(29996302616847090875)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996306773229090878)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29996305320994090877)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(29996302616847090875)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996307241971090879)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996305320994090877)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(29996306978639090878)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996307407463090879)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29996305320994090877)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996307591898090879)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29996305320994090877)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996307778444090879)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996305320994090877)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996308023349090879)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(29996305320994090877)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996308417866090879)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(29996308104118090879)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996308569077090879)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996308104118090879)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996308839424090880)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(29996308104118090879)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996308978455090880)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29996308104118090879)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996309386693090880)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996309114825090880)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996309598855090880)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29996309114825090880)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996310038687090881)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996309685016090880)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996310423341090881)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996310119120090881)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996310839006090881)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29996310119120090881)
,p_css_classes=>'js-navCollapsed--hidden'
,p_group_id=>wwv_flow_api.id(29996310587593090881)
,p_template_types=>'LIST'
,p_help_text=>'Completely hide the navigation menu when it is collapsed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996311005111090881)
,p_theme_id=>42
,p_name=>'ICON_DEFAULT'
,p_display_name=>'Icon (Default)'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996310119120090881)
,p_css_classes=>'js-navCollapsed--default'
,p_group_id=>wwv_flow_api.id(29996310587593090881)
,p_template_types=>'LIST'
,p_help_text=>'Display icons when the navigation menu is collapsed for large screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996311163186090881)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29996310119120090881)
,p_css_classes=>'t-TreeNav--styleA'
,p_group_id=>wwv_flow_api.id(29996295594353090870)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation A'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996311433420090882)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29996310119120090881)
,p_css_classes=>'t-TreeNav--styleB'
,p_group_id=>wwv_flow_api.id(29996295594353090870)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation B'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996311561708090882)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Classic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996310119120090881)
,p_css_classes=>'t-TreeNav--classic'
,p_group_id=>wwv_flow_api.id(29996295594353090870)
,p_template_types=>'LIST'
,p_help_text=>'Classic Style'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996312019117090882)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29996311728517090882)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(29996301243865090874)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996312241684090882)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(29996311728517090882)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996312406988090882)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996311728517090882)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(29996301243865090874)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996312623819090882)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996311728517090882)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(29996306978639090878)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996312830450090882)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29996311728517090882)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(29996295594353090870)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996313041988090883)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996311728517090882)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(29996295594353090870)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996313226028090883)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(29996311728517090882)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(29996306978639090878)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996313578346090884)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996313344005090883)
,p_css_classes=>'t-MegaMenu--layout2Cols'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996313795390090884)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29996313344005090883)
,p_css_classes=>'t-MegaMenu--layout3Cols'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996314003651090884)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29996313344005090883)
,p_css_classes=>'t-MegaMenu--layout4Cols'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996314232922090885)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(29996313344005090883)
,p_css_classes=>'t-MegaMenu--layout5Cols'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996314370179090885)
,p_theme_id=>42
,p_name=>'CUSTOM'
,p_display_name=>'Custom'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(29996313344005090883)
,p_css_classes=>'t-MegaMenu--layoutCustom'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996314560645090885)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29996313344005090883)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Displays a callout arrow that points to where the menu was activated from.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996314759740090885)
,p_theme_id=>42
,p_name=>'FULL_WIDTH'
,p_display_name=>'Full Width'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996313344005090883)
,p_css_classes=>'t-MegaMenu--fullWidth'
,p_template_types=>'LIST'
,p_help_text=>'Stretches the menu to fill the width of the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996315010397090885)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(29996313344005090883)
,p_css_classes=>'t-MegaMenu--layoutStacked'
,p_group_id=>wwv_flow_api.id(29996294382902090869)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996315360435090886)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(29996315109715090886)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996315640967090886)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(29996315109715090886)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996315802858090886)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(29996315109715090886)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996315991087090886)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(29996315109715090886)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996316643929090887)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(29996316086499090887)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_api.id(29996316407333090887)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996316776437090887)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(29996316086499090887)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_api.id(29996316407333090887)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996317249571090888)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29996316086499090887)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_api.id(29996317036635090887)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996317431110090888)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996316086499090887)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_api.id(29996317036635090887)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996317562277090888)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29996316086499090887)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_api.id(29996317036635090887)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996318246217090888)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996317731264090888)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(29996318008504090888)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996318396095090889)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29996317731264090888)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(29996318008504090888)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996318574141090889)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29996317731264090888)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(29996318008504090888)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996318849138090889)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29996317731264090888)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996319053298090889)
,p_theme_id=>42
,p_name=>'WIZARD_PROGRESS_LINKS'
,p_display_name=>'Make Wizard Steps Clickable'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(29996317731264090888)
,p_css_classes=>'js-wizardProgressLinks'
,p_template_types=>'LIST'
,p_help_text=>'This option will make the wizard steps clickable links.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996320172631090890)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(29996319818921090890)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(29996320024227090890)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996320427571090891)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(29996319818921090890)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(29996320024227090890)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996320830120090891)
,p_theme_id=>42
,p_name=>'HIDE_LABEL_ON_MOBILE'
,p_display_name=>'Hide Label on Mobile'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(29996320589437090891)
,p_css_classes=>'t-Button--mobileHideLabel'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button label on small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996321205227090892)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(29996320589437090891)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(29996320961310090892)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996321443652090892)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(29996320589437090891)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(29996320024227090890)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996321577810090892)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(29996320589437090891)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(29996320961310090892)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996321830722090893)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(29996320589437090891)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(29996320024227090890)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996323705858090896)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(29996323480746090896)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996324098368090897)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(29996323858629090897)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996324279903090897)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(29996323480746090896)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996324473291090897)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(29996323858629090897)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996324684892090897)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(29996323480746090896)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996324889635090898)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(29996323858629090897)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996325071914090898)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(29996323480746090896)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996325341428090898)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(29996323858629090897)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996325658768090898)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(29996325466267090898)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996326090248090899)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(29996325895956090899)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996326337814090899)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(29996325466267090898)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996326520777090899)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(29996325895956090899)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996326706056090899)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(29996325466267090898)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996326942423090900)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(29996325895956090899)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996327077307090900)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(29996325466267090898)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996327291440090900)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(29996325895956090899)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996327730414090900)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(29996327462628090900)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996328114762090901)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(29996327864991090900)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996328325119090901)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(29996327462628090900)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996328514192090901)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(29996327864991090900)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996328728576090901)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(29996327462628090900)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996328940164090901)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(29996327864991090900)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996329081434090901)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(29996327462628090900)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996329294614090901)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(29996327864991090900)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996329705009090902)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(29996329547614090902)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996330099217090902)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(29996329938962090902)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996330286791090902)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(29996329547614090902)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996330464776090902)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(29996329938962090902)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996330670572090903)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(29996329547614090902)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996330897206090903)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(29996329938962090902)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996331078370090903)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(29996329547614090902)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996331301476090903)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(29996329938962090902)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996331748092090903)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(29996331494390090903)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996332142596090904)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(29996331944445090903)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996332468591090904)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(29996332297827090904)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996332864402090904)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(29996332740142090904)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996333305277090904)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(29996333127822090904)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996333699271090905)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(29996333465964090905)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996334106082090905)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(29996333854979090905)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996334315729090905)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(29996333854979090905)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996334506397090905)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(29996331944445090903)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996334705157090906)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(29996332297827090904)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996334871388090906)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(29996332740142090904)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996335062743090906)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(29996333127822090904)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996335459763090906)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(29996335274023090906)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996335668653090906)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(29996335274023090906)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996335869115090906)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(29996335274023090906)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996336143950090907)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(29996331494390090903)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996336288053090907)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(29996333854979090905)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996336499783090907)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(29996333465964090905)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996336942536090907)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(29996336667965090907)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996337122848090907)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(29996331494390090903)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996337338500090907)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(29996333465964090905)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996337520584090908)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(29996331494390090903)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996337916182090908)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(29996337658798090908)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996338353779090908)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(29996338055565090908)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996338731814090909)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(29996338468876090908)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996339069129090909)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(29996338877382090909)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996339327224090909)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(29996338877382090909)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996339750402090909)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(29996339464841090909)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996339954425090910)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(29996338055565090908)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996340325329090910)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(29996340135053090910)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996340677783090910)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(29996340460677090910)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996341123824090911)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(29996340934374090911)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996341462105090911)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(29996341319150090911)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996341734809090911)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996341913532090911)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(29996340135053090910)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29996342301176090912)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_api.id(29996342096073090912)
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
null;
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
 p_id=>wwv_flow_api.id(29996345899798090926)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>unistr('\3053\306E\524A\9664\64CD\4F5C\3092\5B9F\884C\3057\307E\3059\304B\3002')
);
end;
/
prompt --application/shared_components/security/authentications/application_express認証
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(29996204121781090797)
,p_name=>unistr('Application Express\8A8D\8A3C')
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/security/authentications/username_password
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(30495436664909325159)
,p_name=>'Username = Password'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'my_authentication'
,p_attribute_05=>'N'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function my_authentication (',
'    p_username in varchar2,',
'    p_password in varchar2 )',
'    return boolean',
'is',
'begin',
'    return upper(p_username) = upper(p_password);',
'end;'))
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/data_loading/tables/covid19_patients
begin
wwv_flow_api.create_load_table(
 p_id=>wwv_flow_api.id(30191275754077250233)
,p_name=>unistr('\967D\6027\60A3\8005\5C5E\6027')
,p_owner=>'#OWNER#'
,p_table_name=>'COVID19_PATIENTS'
,p_unique_column_1=>'No'
,p_is_uk1_case_sensitive=>'N'
,p_unique_column_2=>'PREFECTURE_NAME'
,p_is_uk2_case_sensitive=>'N'
,p_is_uk3_case_sensitive=>'N'
,p_column_names_lov_id=>wwv_flow_api.id(30203422082765292087)
,p_skip_validation=>'N'
);
wwv_flow_api.create_load_table_rule(
 p_id=>wwv_flow_api.id(30215720128711864019)
,p_load_table_id=>wwv_flow_api.id(30191275754077250233)
,p_load_column_name=>'PATIENT_AGE'
,p_rule_name=>unistr('\6B73\3092\9664\304F')
,p_rule_type=>'PLSQL_FUNCTION_BODY'
,p_rule_sequence=>10
,p_rule_expression1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
unistr('    return replace(:PATIENT_AGE, ''\6B73'');'),
'end;'))
,p_rule_expression2=>':PATIENT_AGE'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(29996343038713090914)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>unistr('\30C7\30B9\30AF\30C8\30C3\30D7')
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(29996204873480090798)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(29996310119120090881)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(29996342721253090913)
,p_nav_bar_list_template_id=>wwv_flow_api.id(29996309685016090880)
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
,p_user_interface_id=>wwv_flow_api.id(29996343038713090914)
,p_name=>unistr('\30B0\30ED\30FC\30D0\30EB\30FB\30DA\30FC\30B8 - \30C7\30B9\30AF\30C8\30C3\30D7')
,p_step_title=>unistr('\30B0\30ED\30FC\30D0\30EB\30FB\30DA\30FC\30B8 - \30C7\30B9\30AF\30C8\30C3\30D7')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20200715042618'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(29996343038713090914)
,p_name=>unistr('\30DB\30FC\30E0')
,p_alias=>'HOME'
,p_step_title=>unistr('\65B0\578B\30B3\30ED\30CA\30A6\30A4\30EB\30B9\611F\67D3\75C7\967D\6027\60A3\8005\5C5E\6027')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20200715042620'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29996353777007090946)
,p_plug_name=>unistr('\65B0\578B\30B3\30ED\30CA\30A6\30A4\30EB\30B9\611F\67D3\75C7\967D\6027\60A3\8005\5C5E\6027')
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(29996248798126090834)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29996406840290091061)
,p_plug_name=>unistr('\30DA\30FC\30B8\30FB\30CA\30D3\30B2\30FC\30B7\30E7\30F3')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(29996230963559090822)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(29996406123918091060)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(29996298079246090872)
,p_plug_query_num_rows=>15
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(29996343038713090914)
,p_name=>unistr('\967D\6027\60A3\8005\4E00\89A7')
,p_alias=>'LIST'
,p_step_title=>unistr('\967D\6027\60A3\8005\4E00\89A7')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\30C7\30FC\30BF\3092\898B\3064\3051\308B\306B\306F\3001\691C\7D22\30C0\30A4\30A2\30ED\30B0\306B\691C\7D22\6587\5B57\5217\3092\5165\529B\3059\308B\304B\3001\5217\30D8\30C3\30C0\30FC\3092\30AF\30EA\30C3\30AF\3057\3066\623B\3055\308C\308B\30EC\30B3\30FC\30C9\3092\5236\9650\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30A2\30AF\30B7\30E7\30F3\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\591A\304F\306E\6A5F\80FD\3092\5B9F\884C\3067\304D\307E\3059\3002\3053\308C\306B\306F\3001\8868\793A\5217\307E\305F\306F\975E\8868\793A\5217\306E\9078\629E\3068\305D\306E\8868\793A\9806\5E8F\306B\52A0\3048\3001\591A\304F\306E\30C7\30FC\30BF\304A\3088\3073\66F8\5F0F\8A2D\5B9A\6A5F\80FD\304C\542B\307E\308C\307E\3059\3002\30C1\30E3\30FC\30C8\3001\30B0\30EB\30FC\30D7\5316\304A\3088\3073\30D4\30DC\30C3\30C8\30FB\30AA\30D7\30B7\30E7\30F3\3092\4F7F\7528\3057\3066\3001\30C7\30FC\30BF\306E\8FFD\52A0\30D3\30E5\30FC\3092\5B9A\7FA9\3059\308B\3053\3068\3082\3067\304D\307E\3059\3002</p>'),
'',
unistr('<p>\72EC\81EA\306E\30AB\30B9\30BF\30DE\30A4\30BA\5185\5BB9\3092\4FDD\5B58\3059\308B\5834\5408\3001\30EC\30DD\30FC\30C8\3092\9078\629E\3059\308B\304B\3001\300C\30C0\30A6\30F3\30ED\30FC\30C9\300D\3092\30AF\30EA\30C3\30AF\3057\3066\30C7\30FC\30BF\3092\30A2\30F3\30ED\30FC\30C9\3057\307E\3059\3002\5B9A\671F\7684\306B\30C7\30FC\30BF\3092\9001\4FE1\3059\308B\30B5\30D6\30B9\30AF\30EA\30D7\30B7\30E7\30F3\3067\96FB\5B50\30E1\30FC\30EB\30FB\30A2\30C9\30EC\30B9\3068\6642\9593\67A0\3092\5165\529B\3057\307E\3059\3002<p>'),
'',
unistr('<p>\8FFD\52A0\60C5\5831\3092\5165\624B\3059\308B\306B\306F\3001\300C\30A2\30AF\30B7\30E7\30F3\300D\30E1\30CB\30E5\30FC\306E\4E00\756A\4E0B\306E\300C\30D8\30EB\30D7\300D\3092\30AF\30EA\30C3\30AF\3057\307E\3059\3002</p>'),
'',
unistr('<p><strong>\300C\30EA\30BB\30C3\30C8\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\5BFE\8A71\30E2\30FC\30C9\30FB\30EC\30DD\30FC\30C8\3092\30C7\30D5\30A9\30EB\30C8\8A2D\5B9A\306B\623B\3059\3053\3068\304C\3067\304D\307E\3059\3002</p>')))
,p_last_updated_by=>'MYWORKSPACE'
,p_last_upd_yyyymmddhh24miss=>'20200725072830'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29996355128863090949)
,p_plug_name=>unistr('\967D\6027\60A3\8005\4E00\89A7')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29996256464684090841)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'COVID19_PATIENTS'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P2_PREFECTURE_NAME is null',
'or',
'PREFECTURE_NAME = :P2_PREFECTURE_NAME'))
,p_include_rowid_column=>true
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P2_PREFECTURE_NAME'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>unistr('\967D\6027\60A3\8005\4E00\89A7')
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(29996355165305090949)
,p_name=>unistr('\967D\6027\60A3\8005\4E00\89A7')
,p_max_row_count_message=>unistr('\3053\306E\30EC\30DD\30FC\30C8\306E\6700\5927\884C\6570\306F#MAX_ROW_COUNT#\884C\3067\3059\3002\30D5\30A3\30EB\30BF\3092\9069\7528\3057\3066\3001\554F\5408\305B\306E\30EC\30B3\30FC\30C9\6570\3092\524A\6E1B\3057\3066\304F\3060\3055\3044\3002')
,p_no_data_found_message=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093\3002')
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:3:&APP_SESSION.:::3:P3_ROWID:\#ROWID#\'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>29985988010437498003
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29996355579308090950)
,p_db_column_name=>'ROWID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29996356043607090951)
,p_db_column_name=>'No'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29996356401923090952)
,p_db_column_name=>'MUNICIPALITY_CODE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29996356840736090952)
,p_db_column_name=>'PREFECTURE_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>unistr('\90FD\9053\5E9C\770C\540D')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29996357225547090953)
,p_db_column_name=>'CITY_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>unistr('\5E02\533A\753A\6751\540D')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29996357554898090953)
,p_db_column_name=>'PUBLISHED_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>unistr('\516C\8868_\5E74\6708\65E5')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29996357974338090953)
,p_db_column_name=>'ONSET_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>unistr('\767A\75C7_\5E74\6708\65E5')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29996358384522090954)
,p_db_column_name=>'PATIENT_LOCATION'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>unistr('\60A3\8005_\5C45\4F4F\5730')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29996358759135090954)
,p_db_column_name=>'PATIENT_AGE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>unistr('\60A3\8005_\5E74\4EE3')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29996359202269090955)
,p_db_column_name=>'PATIENT_SEX'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>unistr('\60A3\8005_\6027\5225')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29996359595702090955)
,p_db_column_name=>'PATIENT_OCCUPATION'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>unistr('\60A3\8005_\8077\696D')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29996360001571090955)
,p_db_column_name=>'PATIENT_STATUS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>unistr('\60A3\8005_\72B6\614B')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29996360361659090956)
,p_db_column_name=>'PATIENT_SYMPTOM'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>unistr('\60A3\8005_\75C7\72B6')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29996360785728090956)
,p_db_column_name=>'PATIENT_TRAVEL_HISTORY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>unistr('\60A3\8005_\6E21\822A\6B74\306E\6709\7121\30D5\30E9\30B0')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29996361213482090957)
,p_db_column_name=>'PATIENT_LEFT_HOSPITAL'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>unistr('\60A3\8005_\9000\9662\6E08\30D5\30E9\30B0')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29996361621713090957)
,p_db_column_name=>'REMARK'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>unistr('\5099\8003')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(29996381996101091029)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'299860149'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'No:MUNICIPALITY_CODE:PREFECTURE_NAME:CITY_NAME:PUBLISHED_DATE:ONSET_DATE:PATIENT_LOCATION:PATIENT_AGE:PATIENT_SEX:PATIENT_OCCUPATION:PATIENT_STATUS:PATIENT_SYMPTOM:PATIENT_TRAVEL_HISTORY:PATIENT_LEFT_HOSPITAL:REMARK:'
,p_sort_column_1=>'No'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(30374633361281327775)
,p_report_id=>wwv_flow_api.id(29996381996101091029)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'PREFECTURE_NAME'
,p_operator=>'='
,p_expr=>unistr('\5317\6D77\9053')
,p_condition_sql=>'"PREFECTURE_NAME" = #APXWS_EXPR#'
,p_condition_display=>unistr('#APXWS_COL_NAME# = ''\5317\6D77\9053''  ')
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29996362848530090960)
,p_plug_name=>unistr('\30D6\30EC\30C3\30C9\30AF\30E9\30E0')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29996267816277090851)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(29996204383162090797)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(29996321904539090893)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(29996361992936090958)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(29996355128863090949)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(29996320589437090891)
,p_button_image_alt=>unistr('\30EA\30BB\30C3\30C8')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(29996364591689090963)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(29996355128863090949)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4F5C\6210')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3:P3_PREFECTURE_NAME:&P2_PREFECTURE_NAME.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31369482364198354954)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(29996355128863090949)
,p_button_name=>'B_CSV'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>'CSV'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31369482740053354957)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(29996355128863090949)
,p_button_name=>'B_JSON'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>'JSON'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30752992134546810193)
,p_name=>'P2_PREFECTURE_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(29996355128863090949)
,p_prompt=>unistr('\90FD\9053\5E9C\770C')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PREFECTURES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select code,',
'       name',
'from covid19_municipalities',
'       '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>unistr('- \5168\56FD -')
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30752992421517810196)
,p_name=>'P2_LATEST_DATA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(29996355128863090949)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\6700\65B0\30C7\30FC\30BF')
,p_format_mask=>'YYYY-MM-DD'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select max(published_date) from covid19_patients',
'where',
':P2_PREFECTURE_NAME is null',
'or',
'prefecture_name = :P2_PREFECTURE_NAME'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31369481835378354948)
,p_name=>'P2_LAST_UPDATE_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(29996355128863090949)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\6700\7D42\30C7\30FC\30BF\53D6\5F97\65E5')
,p_format_mask=>'YYYY-MM-DD'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select last_update_date from covid19_municipalities',
'where name = :P2_PREFECTURE_NAME'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(29996363714506090961)
,p_name=>unistr('\30EC\30DD\30FC\30C8\306E\7DE8\96C6 - \30C0\30A4\30A2\30ED\30B0\306E\30AF\30ED\30FC\30BA')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(29996355128863090949)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(29996364179640090962)
,p_event_id=>wwv_flow_api.id(29996363714506090961)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(29996355128863090949)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31369482533368354955)
,p_name=>unistr('CSV\30C0\30A6\30F3\30ED\30FC\30C9')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(31369482364198354954)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31369482591735354956)
,p_event_id=>wwv_flow_api.id(31369482533368354955)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.open("&APP_PATH." + "/csv/" + apex.item("P2_PREFECTURE_NAME").getValue(),',
'            "_blank");'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31369482792541354958)
,p_name=>unistr('JSON\30C0\30A6\30F3\30ED\30FC\30C9')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(31369482740053354957)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31369482898793354959)
,p_event_id=>wwv_flow_api.id(31369482792541354958)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.open("&APP_PATH." + "/json/" + apex.item("P2_PREFECTURE_NAME").getValue(),',
'            "_blank");'))
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(29996343038713090914)
,p_name=>unistr('\967D\6027\60A3\8005\5C5E\6027')
,p_alias=>'DETAILS'
,p_step_title=>unistr('\967D\6027\60A3\8005\5C5E\6027')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20200724062344'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29996365352819091006)
,p_plug_name=>unistr('\967D\6027\60A3\8005\5C5E\6027')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29996230963559090822)
,p_plug_display_sequence=>0
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'COVID19_PATIENTS'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(29996377309581091023)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(29996378909081091024)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\524A\9664')
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P3_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(29996379266796091025)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5909\66F4\306E\9069\7528')
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P3_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(29996379665273091025)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4F5C\6210')
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P3_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31369483130856354961)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_button_name=>'CREATE2'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4F5C\6210\3057\3066\7D99\7D9A')
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P3_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31369483285415354963)
,p_branch_name=>unistr('\30DA\30FC\30B8\306B\79FB\52D5 3')
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3:P3_NO,P3_MUNICIPALITY_CODE,P3_PREFECTURE_NAME,P3_PUBLISHED_DATE,P3_PATIENT_LOCATION:&P3_NO.,&P3_MUNICIPALITY_CODE.,&P3_PREFECTURE_NAME.,&P3_PUBLISHED_DATE.,&P3_PATIENT_LOCATION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(31369483130856354961)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31369482980265354960)
,p_branch_name=>unistr('\30DA\30FC\30B8\306B\79FB\52D5 ')
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29996365698143091007)
,p_name=>'P3_ROWID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_item_source_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29996366152541091008)
,p_name=>'P3_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_item_source_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'No'
,p_source=>'No'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29996366484779091008)
,p_name=>'P3_MUNICIPALITY_CODE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_item_source_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_source=>'MUNICIPALITY_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29996366869675091009)
,p_name=>'P3_PREFECTURE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_item_source_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_prompt=>unistr('\90FD\9053\5E9C\770C\540D')
,p_source=>'PREFECTURE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PREFECTURES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select code,',
'       name',
'from covid19_municipalities',
'       '))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(29996319747489090890)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29996367334247091010)
,p_name=>'P3_CITY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_item_source_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_prompt=>unistr('\5E02\533A\753A\6751\540D')
,p_source=>'CITY_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29996367732195091010)
,p_name=>'P3_PUBLISHED_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_item_source_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_prompt=>unistr('\516C\8868_\5E74\6708\65E5')
,p_source=>'PUBLISHED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(29996319747489090890)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29996368059359091011)
,p_name=>'P3_ONSET_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_item_source_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_prompt=>unistr('\767A\75C7_\5E74\6708\65E5')
,p_source=>'ONSET_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29996368455024091011)
,p_name=>'P3_PATIENT_LOCATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_item_source_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\60A3\8005_\5C45\4F4F\5730')
,p_source=>'PATIENT_LOCATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29996368927172091012)
,p_name=>'P3_PATIENT_AGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_item_source_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_prompt=>unistr('\60A3\8005_\5E74\4EE3')
,p_source=>'PATIENT_AGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_show_quick_picks=>'Y'
,p_quick_pick_label_01=>'10'
,p_quick_pick_value_01=>unistr('10\4EE3')
,p_quick_pick_label_02=>'20'
,p_quick_pick_value_02=>unistr('20\4EE3')
,p_quick_pick_label_03=>'30'
,p_quick_pick_value_03=>unistr('30\4EE3')
,p_quick_pick_label_04=>'40'
,p_quick_pick_value_04=>unistr('40\4EE3')
,p_quick_pick_label_05=>'50'
,p_quick_pick_value_05=>unistr('50\4EE3')
,p_quick_pick_label_06=>'60'
,p_quick_pick_value_06=>unistr('60\4EE3')
,p_quick_pick_label_07=>'70'
,p_quick_pick_value_07=>unistr('70\4EE3')
,p_quick_pick_label_08=>'80'
,p_quick_pick_value_08=>unistr('80\4EE3')
,p_quick_pick_label_09=>'90'
,p_quick_pick_value_09=>unistr('90\4EE3')
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29996369342755091013)
,p_name=>'P3_PATIENT_SEX'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_item_source_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_prompt=>unistr('\60A3\8005_\6027\5225')
,p_source=>'PATIENT_SEX'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_show_quick_picks=>'Y'
,p_quick_pick_label_01=>unistr('\5973\6027')
,p_quick_pick_value_01=>unistr('\5973\6027')
,p_quick_pick_label_02=>unistr('\7537\6027')
,p_quick_pick_value_02=>unistr('\7537\6027')
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29996369665605091013)
,p_name=>'P3_PATIENT_OCCUPATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_item_source_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_prompt=>unistr('\60A3\8005_\8077\696D')
,p_source=>'PATIENT_OCCUPATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_show_quick_picks=>'Y'
,p_quick_pick_label_01=>unistr('\4F1A\793E\54E1')
,p_quick_pick_value_01=>unistr('\4F1A\793E\54E1')
,p_quick_pick_label_02=>unistr('\7121\8077')
,p_quick_pick_value_02=>unistr('\7121\8077')
,p_quick_pick_label_03=>unistr('\81EA\55B6\696D')
,p_quick_pick_value_03=>unistr('\81EA\55B6\696D')
,p_quick_pick_label_04=>unistr('\770B\8B77\5E2B')
,p_quick_pick_value_04=>unistr('\770B\8B77\5E2B')
,p_quick_pick_label_05=>unistr('\516C\52D9\54E1')
,p_quick_pick_value_05=>unistr('\516C\52D9\54E1')
,p_quick_pick_label_06=>unistr('\5B66\751F')
,p_quick_pick_value_06=>unistr('\5B66\751F')
,p_quick_pick_label_07=>unistr('\30A2\30EB\30D0\30A4\30C8')
,p_quick_pick_value_07=>unistr('\30A2\30EB\30D0\30A4\30C8')
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29996370109810091013)
,p_name=>'P3_PATIENT_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_item_source_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_prompt=>unistr('\60A3\8005_\72B6\614B')
,p_source=>'PATIENT_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_show_quick_picks=>'Y'
,p_quick_pick_label_01=>unistr('\7121\75C7\72B6')
,p_quick_pick_value_01=>unistr('\7121\75C7\72B6')
,p_quick_pick_label_02=>unistr('\8EFD\75C7')
,p_quick_pick_value_02=>unistr('\8EFD\75C7')
,p_quick_pick_label_03=>unistr('\4E2D\7B49\75C7')
,p_quick_pick_value_03=>unistr('\4E2D\7B49\75C7')
,p_quick_pick_label_04=>unistr('\91CD\75C7')
,p_quick_pick_value_04=>unistr('\91CD\75C7')
,p_quick_pick_label_05=>unistr('\6B7B\4EA1')
,p_quick_pick_value_05=>unistr('\6B7B\4EA1')
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29996370472167091014)
,p_name=>'P3_PATIENT_SYMPTOM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_item_source_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_prompt=>unistr('\60A3\8005_\75C7\72B6')
,p_source=>'PATIENT_SYMPTOM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29996370885380091015)
,p_name=>'P3_PATIENT_TRAVEL_HISTORY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_item_source_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_prompt=>unistr('\60A3\8005_\6E21\822A\6B74\306E\6709\7121\30D5\30E9\30B0')
,p_source=>'PATIENT_TRAVEL_HISTORY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\3042\308A;1,\306A\3057;0')
,p_lov_display_null=>'YES'
,p_lov_null_text=>unistr('- \4E0D\660E -')
,p_cHeight=>1
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29996371277690091015)
,p_name=>'P3_PATIENT_LEFT_HOSPITAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_item_source_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_prompt=>unistr('\60A3\8005_\9000\9662\6E08\30D5\30E9\30B0')
,p_source=>'PATIENT_LEFT_HOSPITAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\9000\9662\6E08\307F;1,\5165\9662\4E2D;0')
,p_lov_display_null=>'YES'
,p_lov_null_text=>unistr('- \4E0D\660E -')
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29996371731028091016)
,p_name=>'P3_REMARK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_item_source_plug_id=>wwv_flow_api.id(29996365352819091006)
,p_prompt=>unistr('\5099\8003')
,p_source=>'REMARK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(31369483425150354964)
,p_computation_sequence=>10
,p_computation_item=>'P3_MUNICIPALITY_CODE'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select code from covid19_municipalities',
'where name = :P2_PREFECTURE_NAME'))
,p_compute_when=>'P3_MUNICIPALITY_CODE'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(31369483745188354967)
,p_computation_sequence=>10
,p_computation_item=>'P3_NO'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select max("No")+1 as mno from covid19_patients ',
'where prefecture_name = :P3_PREFECTURE_NAME'))
,p_compute_when=>':P3_NO is null and :P3_PREFECTURE_NAME is not null'
,p_compute_when_type=>'PLSQL_EXPRESSION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29996380529242091026)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(29996365352819091006)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\30D7\30ED\30BB\30B9\30FB\30D5\30A9\30FC\30E0\967D\6027\60A3\8005\5C5E\6027')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31369483242443354962)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\6B21\306E\756A\53F7\3092\8FFD\52A0')
,p_process_sql_clob=>':P3_NO := :P3_NO + 1'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31369483130856354961)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29996380082432091026)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(29996365352819091006)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\671F\5316\30D5\30A9\30FC\30E0\967D\6027\60A3\8005\5C5E\6027')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(29996343038713090914)
,p_name=>unistr('\30C7\30FC\30BF\30FB\30ED\30FC\30C9\30FB\30BD\30FC\30B9')
,p_alias=>'DATALOADSOURCE'
,p_step_title=>unistr('\30C7\30FC\30BF\30FB\30ED\30FC\30C9\30FB\30BD\30FC\30B9')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20200724121011'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30191278493253250243)
,p_plug_name=>unistr('\30C7\30FC\30BF\30FB\30ED\30FC\30C9\30FB\30A6\30A3\30B6\30FC\30C9\306E\9032\6357\72B6\6CC1')
,p_plug_template=>wwv_flow_api.id(29996258370822090843)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(30191275926814250239)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(29996317731264090888)
,p_translate_title=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30191278819773250243)
,p_plug_name=>unistr('\30C7\30FC\30BF\30FB\30ED\30FC\30C9\30FB\30BD\30FC\30B9')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_api.id(29996258370822090843)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30191279618964250244)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(30191278819773250243)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6B21')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'javascript:apex.widget.textareaClob.uploadNonEmpty(''P4_COPY_PASTE'', ''NEXT'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30191279244698250243)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(30191278819773250243)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(30191310680905250276)
,p_branch_action=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(30191279618964250244)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30191281234403250246)
,p_name=>'P4_IMPORT_FROM'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(30191278819773250243)
,p_item_default=>'PASTE'
,p_prompt=>unistr('\30A4\30F3\30DD\30FC\30C8\5143')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'DATA_LOAD_OPTION'
,p_lov=>'.'||wwv_flow_api.id(30191280028589250244)||'.'
,p_label_alignment=>'RIGHT-TOP'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30191281506710250247)
,p_name=>'P4_FILE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(30191278819773250243)
,p_prompt=>unistr('\30D5\30A1\30A4\30EB\540D')
,p_display_as=>'NATIVE_FILE'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(29996319747489090890)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>unistr('\30A2\30C3\30D7\30ED\30FC\30C9\3059\308B\30D5\30A1\30A4\30EB\306E\540D\524D')
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'REQUEST'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30191282846164250248)
,p_name=>'P4_COPY_PASTE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(30191278819773250243)
,p_prompt=>unistr('\533A\5207\308A\30C7\30FC\30BF\3092\30B3\30D4\30FC\30FB\30A2\30F3\30C9\30FB\30DA\30FC\30B9\30C8')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cHeight=>10
,p_cAttributes=>'nowrap="nowrap"'
,p_tag_attributes=>'spellcheck="false"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(29996319747489090890)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30191283308437250249)
,p_name=>'P4_SEPARATOR'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(30191278819773250243)
,p_item_default=>'\t'
,p_prompt=>unistr('\30BB\30D1\30EC\30FC\30BF')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(29996319747489090890)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>unistr('\5217\30BB\30D1\30EC\30FC\30BF\6587\5B57\3092\6307\5B9A\3057\3066\304F\3060\3055\3044\3002\30BF\30D6\30FB\30BB\30D1\30EC\30FC\30BF\306B\306F<code>\005Ct</code>\3092\4F7F\7528\3057\3066\304F\3060\3055\3044\3002')
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30191284197256250250)
,p_name=>'P4_ENCLOSED_BY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(30191278819773250243)
,p_item_default=>'"'
,p_prompt=>unistr('\56F2\307F\6587\5B57(\30AA\30D7\30B7\30E7\30F3)')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Enter a delimiter character. You can use this character to delineate the starting and ending boundary of a data value. If you specify a delimiter character, Data Workshop ignores whitespace occurring before the starting and ending boundary of a data '
||'value. You can also use this option to enclose a data value with the specified delimiter character.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30191285096262250250)
,p_name=>'P4_FIRST_ROW'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(30191278819773250243)
,p_item_default=>'Y'
,p_prompt=>'&nbsp;'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>unistr('STATIC:1\884C\76EE\306B\5217\540D\304C\3042\308B;Y')
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>unistr('\30C7\30FC\30BF\306E\6700\521D\306E\884C\306B\5217\540D\304C\542B\307E\308C\308B\5834\5408\306F\3001\3053\306E\30DC\30C3\30AF\30B9\3092\9078\629E\3057\3066\304F\3060\3055\3044\3002')
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30191286015608250251)
,p_name=>'P4_SHOW_ADV_SETTINGS'
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_api.id(30191278819773250243)
,p_prompt=>'&nbsp;'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>unistr('STATIC:\8A73\7D30\8A2D\5B9A\306E\4F7F\7528;Y')
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>unistr('\30C7\30FC\30BF\30FB\30ED\30FC\30C9\306E\8A73\7D30\8A2D\5B9A\306E\8868\793A: \901A\8CA8\8A18\53F7\3001\5C0F\6570\70B9\6587\5B57\3001\30D5\30A1\30A4\30EB\30FB\30A8\30F3\30B3\30FC\30C7\30A3\30F3\30B0\307E\305F\306F\65E5\4ED8\66F8\5F0F')
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30191289812048250254)
,p_name=>'P4_APP_DATE_FORMAT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(30191278819773250243)
,p_item_default=>'Y'
,p_prompt=>unistr('\4F7F\7528\3059\308B\65E5\4ED8/\6570\5024\66F8\5F0F')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'DATE_FORMAT_OPT'
,p_lov=>'.'||wwv_flow_api.id(30191288576846250253)||'.'
,p_label_alignment=>'RIGHT-TOP'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>unistr('\30AB\30B9\30BF\30E0\66F8\5F0F\30DE\30B9\30AF\3092\6307\5B9A\3059\308B\304B\3001\6A19\6E96\66F8\5F0F\30DE\30B9\30AF\3092\4F7F\7528\3059\308B\304B\3092\9078\629E\3057\307E\3059')
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30191302975290250269)
,p_name=>'P4_CHAR_SET'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(30191278819773250243)
,p_item_default=>'UTF-8'
,p_prompt=>unistr('\30D5\30A1\30A4\30EB\306E\6587\5B57\30BB\30C3\30C8')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DATA_LOAD_CHARSET'
,p_lov=>'.'||wwv_flow_api.id(30191290611571250256)||'.'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'DATA_LOAD.CHAR_SET_ITEM_HELP'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30191303882070250270)
,p_name=>'P4_CURRENCY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(30191278819773250243)
,p_item_default=>'$'
,p_prompt=>unistr('\901A\8CA8\8A18\53F7')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value',
'  from nls_session_parameters',
' where parameter = ''NLS_CURRENCY'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>unistr('\30C7\30FC\30BF\306B\56FD\969B\901A\8CA8\8A18\53F7\304C\542B\307E\308C\3066\3044\308B\5834\5408\306F\3001\305D\306E\8A18\53F7\3092\3053\3053\306B\5165\529B\3057\3066\304F\3060\3055\3044\3002\305F\3068\3048\3070\3001\30C7\30FC\30BF\306B&euro;1,234.56\307E\305F\306F&yen;1,234.56\304C\542B\307E\308C\3066\3044\308B\5834\5408\306F\3001&euro;\307E\305F\306F&yen;\3068\5165\529B\3057\3066\304F\3060\3055\3044\3002\5165\529B\3057\306A\3044\5834\5408\3001\30C7\30FC\30BF\306F\6B63\5E38\306B\30ED\30FC\30C9\3055\308C\307E\305B\3093\3002')
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30191304811843250271)
,p_name=>'P4_GROUP_SEPARATOR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(30191278819773250243)
,p_prompt=>unistr('\30B0\30EB\30FC\30D7\30FB\30BB\30D1\30EC\30FC\30BF')
,p_source=>'apex_application.get_nls_group_separator'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\30B0\30EB\30FC\30D7\30FB\30BB\30D1\30EC\30FC\30BF\306F\3001\5343\306E\4F4D\3084\767E\4E07\306E\4F4D\306A\3069\306E\6574\6570\30B0\30EB\30FC\30D7\3092\533A\5207\308A\307E\3059\3002</p>'),
unistr('<p>\30B0\30EB\30FC\30D7\30FB\30BB\30D1\30EC\30FC\30BF\306B\306F\3001\4EFB\610F\306E\6587\5B57\3092\6307\5B9A\3067\304D\307E\3059\3002\6307\5B9A\3057\305F\6587\5B57\306F\30B7\30F3\30B0\30EB\30D0\30A4\30C8\3067\3001\30B0\30EB\30FC\30D7\30FB\30BB\30D1\30EC\30FC\30BF\306F\4ED6\306E\5C0F\6570\70B9\6587\5B57\3068\7570\306A\308B\5FC5\8981\304C\3042\308A\307E\3059\3002\30BB\30D1\30EC\30FC\30BF\306B\306F\3001\7A7A\767D\3092\6307\5B9A\3067\304D\307E\3059\304C\3001\6570\5B57\304A\3088\3073\6B21\306B\793A\3059\6587\5B57\306F\6307\5B9A\3067\304D\307E\305B\3093\3002</p>'),
'<ul class="noIndent">',
unistr('<li>\30D7\30E9\30B9(+)</li>'),
unistr('<li>\30CF\30A4\30D5\30F3(-)</li> '),
unistr('<li>\5C0F\306A\308A\8A18\53F7(<)</li>'),
unistr('<li>\5927\306A\308A\8A18\53F7(>)</li>'),
'</ul>'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30191305680516250272)
,p_name=>'P4_DECIMAL_CHARACTER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(30191278819773250243)
,p_prompt=>unistr('\5C0F\6570\70B9\6587\5B57')
,p_source=>'apex_application.get_nls_decimal_separator'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\5C0F\6570\70B9\6587\5B57\306F\3001\6570\5024\306E\6574\6570\90E8\5206\3068\5C0F\6570\90E8\5206\3092\533A\5207\308A\307E\3059\3002</p>'),
unistr('<p>\5C0F\6570\70B9\6587\5B57\306B\306F\3001\4EFB\610F\306E\6587\5B57\3092\6307\5B9A\3067\304D\307E\3059\3002\6307\5B9A\3057\305F\6587\5B57\306F\30B7\30F3\30B0\30EB\30D0\30A4\30C8\3067\3001\5C0F\6570\70B9\6587\5B57\306F\30B0\30EB\30FC\30D7\30FB\30BB\30D1\30EC\30FC\30BF\3068\7570\306A\308B\5FC5\8981\304C\3042\308A\307E\3059\3002\5C0F\6570\70B9\6587\5B57\306B\306F\3001\7A7A\767D\3092\6307\5B9A\3067\304D\307E\3059\304C\3001\6570\5B57\304A\3088\3073\6B21\306B\793A\3059\6587\5B57\306F\6307\5B9A\3067\304D\307E\305B\3093\3002</p>'),
'<ul class="noIndent">',
unistr('<li>\30D7\30E9\30B9(+)</li>'),
unistr('<li>\30CF\30A4\30D5\30F3(-)</li> '),
unistr('<li>\5C0F\306A\308A\8A18\53F7(<)</li>'),
unistr('<li>\5927\306A\308A\8A18\53F7(>)</li>'),
'</ul>'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(30191282543600250248)
,p_validation_name=>'Filename is not null'
,p_validation_sequence=>10
,p_validation=>'P4_FILE_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('#LABEL#\306B\5024\3092\6307\5B9A\3059\308B\5FC5\8981\304C\3042\308A\307E\3059\3002')
,p_validation_condition=>'P4_IMPORT_FROM'
,p_validation_condition2=>'UPLOAD'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(30191279618964250244)
,p_associated_item=>wwv_flow_api.id(30191281506710250247)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(30191286883467250252)
,p_validation_name=>'Uploaded data is not null'
,p_validation_sequence=>20
,p_validation=>'P4_COPY_PASTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('#LABEL#\306B\5024\3092\6307\5B9A\3059\308B\5FC5\8981\304C\3042\308A\307E\3059\3002')
,p_validation_condition=>'P4_IMPORT_FROM'
,p_validation_condition2=>'PASTE'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(30191279618964250244)
,p_associated_item=>wwv_flow_api.id(30191282846164250248)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30191287218819250252)
,p_name=>'Show/Hide Advanced Settings'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_SHOW_ADV_SETTINGS'
,p_condition_element=>'P4_SHOW_ADV_SETTINGS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30191287723866250252)
,p_event_id=>wwv_flow_api.id(30191287218819250252)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_CURRENCY,P4_GROUP_SEPARATOR,P4_DECIMAL_CHARACTER,P4_APP_DATE_FORMAT,P4_CHAR_SET'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30191288222029250253)
,p_event_id=>wwv_flow_api.id(30191287218819250252)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_CURRENCY,P4_GROUP_SEPARATOR,P4_DECIMAL_CHARACTER,P4_APP_DATE_FORMAT,P4_CHAR_SET'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30191306498427250272)
,p_name=>'Import From Copy and Paste'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_IMPORT_FROM'
,p_condition_element=>'P4_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'PASTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30191307003339250273)
,p_event_id=>wwv_flow_api.id(30191306498427250272)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_COPY_PASTE'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30191307497446250273)
,p_event_id=>wwv_flow_api.id(30191306498427250272)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_SEPARATOR'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'\t'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30191308011611250273)
,p_event_id=>wwv_flow_api.id(30191306498427250272)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_COPY_PASTE'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30191308365386250274)
,p_name=>'Import from File'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_IMPORT_FROM'
,p_condition_element=>'P4_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'UPLOAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30191308910672250274)
,p_event_id=>wwv_flow_api.id(30191308365386250274)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_FILE_NAME'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30191309432765250274)
,p_event_id=>wwv_flow_api.id(30191308365386250274)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_SEPARATOR'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>','
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30191309902915250275)
,p_event_id=>wwv_flow_api.id(30191308365386250274)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_FILE_NAME'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30191310381623250275)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PARSE_UPLOADED_DATA'
,p_process_name=>'Parse Uploaded Data'
,p_attribute_01=>wwv_flow_api.id(30191275754077250233)
,p_attribute_02=>'P4_IMPORT_FROM'
,p_attribute_03=>'P4_SEPARATOR'
,p_attribute_04=>'P4_ENCLOSED_BY'
,p_attribute_05=>'P4_FIRST_ROW'
,p_attribute_06=>'P4_CURRENCY'
,p_attribute_07=>'P4_GROUP_SEPARATOR'
,p_attribute_08=>'P4_DECIMAL_CHARACTER'
,p_attribute_09=>'P4_FILE_NAME'
,p_attribute_10=>'P4_COPY_PASTE'
,p_attribute_11=>'P4_CHAR_SET'
,p_attribute_12=>'P4_APP_DATE_FORMAT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(30191279618964250244)
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(29996343038713090914)
,p_name=>unistr('\30C7\30FC\30BF\3068\8868\306E\30DE\30C3\30D4\30F3\30B0')
,p_alias=>'DATATABLEMAPPING'
,p_step_title=>unistr('\30C7\30FC\30BF\3068\8868\306E\30DE\30C3\30D4\30F3\30B0')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>'.rc-content-main {height: 400px; overflow: auto !important;}'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20200724121027'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30191311515828250277)
,p_plug_name=>unistr('\30C7\30FC\30BF\30FB\30ED\30FC\30C9\30FB\30A6\30A3\30B6\30FC\30C9\306E\9032\6357\72B6\6CC1')
,p_plug_template=>wwv_flow_api.id(29996258370822090843)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(30191275926814250239)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(29996317731264090888)
,p_translate_title=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30191311827527250277)
,p_plug_name=>unistr('\30C7\30FC\30BF\3068\8868\306E\30DE\30C3\30D4\30F3\30B0')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_api.id(29996258370822090843)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DATA_UPLOAD_COLUMN_MAPPING'
,p_attribute_01=>wwv_flow_api.id(30191275754077250233)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30191313023559250278)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(30191311827527250277)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6B21')
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30191312664816250278)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(30191311827527250277)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\524D')
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30191312209613250278)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(30191311827527250277)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(30191313761772250279)
,p_branch_action=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(30191313023559250278)
,p_branch_sequence=>10
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                   begin',
'                            for c1 in (select skip_validation',
'                                      from apex_appl_load_tables',
unistr('                                      where name = ''\967D\6027\60A3\8005\5C5E\6027'' and application_id = apex_application.g_flow_id )'),
'                            loop',
'                                if c1.skip_validation = ''N'' then return true;',
'                                else return false;',
'                                end if;',
'                            end loop;',
'                        end;'))
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(30191314228698250279)
,p_branch_action=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(30191313023559250278)
,p_branch_sequence=>20
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                   begin',
'                            for c1 in (select skip_validation',
'                                      from apex_appl_load_tables',
unistr('                                      where name = ''\967D\6027\60A3\8005\5C5E\6027'' and application_id = apex_application.g_flow_id )'),
'                            loop',
'                                if c1.skip_validation = ''Y'' then return true;',
'                                else return false;',
'                                end if;',
'                            end loop;',
'                        end;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30191313529439250279)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PREPARE_UPLOADED_DATA'
,p_process_name=>'Prepare Uploaded Data'
,p_attribute_01=>wwv_flow_api.id(30191275754077250233)
,p_attribute_02=>'P7_INSERT_COUNT'
,p_attribute_03=>'P7_UPDATE_COUNT'
,p_attribute_04=>'P7_ERROR_COUNT'
,p_attribute_05=>'P7_REVIEW_COUNT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(30191313023559250278)
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(29996343038713090914)
,p_name=>unistr('\30C7\30FC\30BF\691C\8A3C')
,p_alias=>'DATAVALIDATION'
,p_step_title=>unistr('\30C7\30FC\30BF\691C\8A3C')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* apply u-Report--dataLoad CSS class to Data Load Report and hide empty columns */',
'apex.jQuery("table.standardLook").addClass("u-Report u-Report--standardLook");',
'apex.jQuery("table.u-Report--standardLook tr:nth-child(1) td:empty").css("display", "none");',
'apex.jQuery("table.u-Report--standardLook tr th:empty").css("display", "none");',
'apex.jQuery("table.u-Report--standardLook tr th:empty").each( function (idx, elem) { apex.jQuery("table.u-Report--standardLook tr td[headers=\""+apex.jQuery(elem).attr(''id'')+"\"]").css("display", "none");});'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20200724121046'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30191315015494250281)
,p_plug_name=>unistr('\30C7\30FC\30BF\30FB\30ED\30FC\30C9\30FB\30A6\30A3\30B6\30FC\30C9\306E\9032\6357\72B6\6CC1')
,p_plug_template=>wwv_flow_api.id(29996258370822090843)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(30191275926814250239)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(29996317731264090888)
,p_translate_title=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(30191315349247250281)
,p_name=>unistr('\30C7\30FC\30BF\691C\8A3C')
,p_template=>wwv_flow_api.id(29996258370822090843)
,p_display_sequence=>20
,p_region_css_classes=>'data-upload-validation'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n001 as row_num,',
'       wwv_flow_lang.system_message( ''DATA_LOAD.'' || c049 ) as action,',
'       c001, c002, c003,',
'       c004, c005, c006,',
'       c007, c008, c009,',
'       c010, c011, c012,',
'       c013, c014, c015,',
'       c016, c017, c018,',
'       c019, c020, c021,',
'       c022, c023, c024,',
'       c025, c026, c027,',
'       c028, c029, c030,',
'       c031, c032, c033,',
'       c034, c035, c036,',
'       c037, c038, c039,',
'       c040, c041, c042,',
'       c043, c044, c045',
'  from apex_collections',
' where collection_name = ''LOAD_CONTENT''',
'   and c049 in (''INSERT'',''UPDATE'', ''FAILED'')',
' order by seq_id'))
,p_query_headings=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'    l_string varchar(32767);',
'begin',
'    l_string := wwv_flow_lang.system_message(''DATA_LOAD.SEQUENCE_ACTION'');',
'    for l_heading in ( select c005 as label',
'                         from apex_collections',
'                        where collection_name = ''LOAD_COL_HEAD''',
'                        order by seq_id )',
'    loop',
'        l_string := l_string || '':'' || l_heading.label;',
'    end loop;',
'    return l_string;',
'end;'))
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093')
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191316032829250292)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191316413046250293)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191316829348250294)
,p_query_column_id=>3
,p_column_alias=>'C001'
,p_column_display_sequence=>3
,p_column_heading=>'C001'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191317206922250294)
,p_query_column_id=>4
,p_column_alias=>'C002'
,p_column_display_sequence=>4
,p_column_heading=>'C002'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191317612880250295)
,p_query_column_id=>5
,p_column_alias=>'C003'
,p_column_display_sequence=>5
,p_column_heading=>'C003'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191317997817250295)
,p_query_column_id=>6
,p_column_alias=>'C004'
,p_column_display_sequence=>6
,p_column_heading=>'C004'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191318381539250296)
,p_query_column_id=>7
,p_column_alias=>'C005'
,p_column_display_sequence=>7
,p_column_heading=>'C005'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191318828396250296)
,p_query_column_id=>8
,p_column_alias=>'C006'
,p_column_display_sequence=>8
,p_column_heading=>'C006'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191319253193250297)
,p_query_column_id=>9
,p_column_alias=>'C007'
,p_column_display_sequence=>9
,p_column_heading=>'C007'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191319612839250297)
,p_query_column_id=>10
,p_column_alias=>'C008'
,p_column_display_sequence=>10
,p_column_heading=>'C008'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191319956354250298)
,p_query_column_id=>11
,p_column_alias=>'C009'
,p_column_display_sequence=>11
,p_column_heading=>'C009'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191320405582250298)
,p_query_column_id=>12
,p_column_alias=>'C010'
,p_column_display_sequence=>12
,p_column_heading=>'C010'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191320759830250299)
,p_query_column_id=>13
,p_column_alias=>'C011'
,p_column_display_sequence=>13
,p_column_heading=>'C011'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191321190772250299)
,p_query_column_id=>14
,p_column_alias=>'C012'
,p_column_display_sequence=>14
,p_column_heading=>'C012'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191321579263250300)
,p_query_column_id=>15
,p_column_alias=>'C013'
,p_column_display_sequence=>15
,p_column_heading=>'C013'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191322033874250300)
,p_query_column_id=>16
,p_column_alias=>'C014'
,p_column_display_sequence=>16
,p_column_heading=>'C014'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191322403055250301)
,p_query_column_id=>17
,p_column_alias=>'C015'
,p_column_display_sequence=>17
,p_column_heading=>'C015'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191322777736250301)
,p_query_column_id=>18
,p_column_alias=>'C016'
,p_column_display_sequence=>18
,p_column_heading=>'C016'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191323175664250302)
,p_query_column_id=>19
,p_column_alias=>'C017'
,p_column_display_sequence=>19
,p_column_heading=>'C017'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191323559889250303)
,p_query_column_id=>20
,p_column_alias=>'C018'
,p_column_display_sequence=>20
,p_column_heading=>'C018'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191324047994250303)
,p_query_column_id=>21
,p_column_alias=>'C019'
,p_column_display_sequence=>21
,p_column_heading=>'C019'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191324359860250304)
,p_query_column_id=>22
,p_column_alias=>'C020'
,p_column_display_sequence=>22
,p_column_heading=>'C020'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191324837077250305)
,p_query_column_id=>23
,p_column_alias=>'C021'
,p_column_display_sequence=>23
,p_column_heading=>'C021'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191325185900250305)
,p_query_column_id=>24
,p_column_alias=>'C022'
,p_column_display_sequence=>24
,p_column_heading=>'C022'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191325635293250306)
,p_query_column_id=>25
,p_column_alias=>'C023'
,p_column_display_sequence=>25
,p_column_heading=>'C023'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191326051137250306)
,p_query_column_id=>26
,p_column_alias=>'C024'
,p_column_display_sequence=>26
,p_column_heading=>'C024'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191326398426250307)
,p_query_column_id=>27
,p_column_alias=>'C025'
,p_column_display_sequence=>27
,p_column_heading=>'C025'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191326772346250307)
,p_query_column_id=>28
,p_column_alias=>'C026'
,p_column_display_sequence=>28
,p_column_heading=>'C026'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191327228571250308)
,p_query_column_id=>29
,p_column_alias=>'C027'
,p_column_display_sequence=>29
,p_column_heading=>'C027'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191327613730250308)
,p_query_column_id=>30
,p_column_alias=>'C028'
,p_column_display_sequence=>30
,p_column_heading=>'C028'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191327990436250309)
,p_query_column_id=>31
,p_column_alias=>'C029'
,p_column_display_sequence=>31
,p_column_heading=>'C029'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191328424086250309)
,p_query_column_id=>32
,p_column_alias=>'C030'
,p_column_display_sequence=>32
,p_column_heading=>'C030'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191328780948250310)
,p_query_column_id=>33
,p_column_alias=>'C031'
,p_column_display_sequence=>33
,p_column_heading=>'C031'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191329206454250310)
,p_query_column_id=>34
,p_column_alias=>'C032'
,p_column_display_sequence=>34
,p_column_heading=>'C032'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191329641336250311)
,p_query_column_id=>35
,p_column_alias=>'C033'
,p_column_display_sequence=>35
,p_column_heading=>'C033'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191329976595250311)
,p_query_column_id=>36
,p_column_alias=>'C034'
,p_column_display_sequence=>36
,p_column_heading=>'C034'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191330407680250312)
,p_query_column_id=>37
,p_column_alias=>'C035'
,p_column_display_sequence=>37
,p_column_heading=>'C035'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191330782756250312)
,p_query_column_id=>38
,p_column_alias=>'C036'
,p_column_display_sequence=>38
,p_column_heading=>'C036'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191331212468250313)
,p_query_column_id=>39
,p_column_alias=>'C037'
,p_column_display_sequence=>39
,p_column_heading=>'C037'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191331646637250313)
,p_query_column_id=>40
,p_column_alias=>'C038'
,p_column_display_sequence=>40
,p_column_heading=>'C038'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191331995374250314)
,p_query_column_id=>41
,p_column_alias=>'C039'
,p_column_display_sequence=>41
,p_column_heading=>'C039'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191332417679250314)
,p_query_column_id=>42
,p_column_alias=>'C040'
,p_column_display_sequence=>42
,p_column_heading=>'C040'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191332796099250315)
,p_query_column_id=>43
,p_column_alias=>'C041'
,p_column_display_sequence=>43
,p_column_heading=>'C041'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191333221868250315)
,p_query_column_id=>44
,p_column_alias=>'C042'
,p_column_display_sequence=>44
,p_column_heading=>'C042'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191333583144250316)
,p_query_column_id=>45
,p_column_alias=>'C043'
,p_column_display_sequence=>45
,p_column_heading=>'C043'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191334042612250316)
,p_query_column_id=>46
,p_column_alias=>'C044'
,p_column_display_sequence=>46
,p_column_heading=>'C044'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191334386444250317)
,p_query_column_id=>47
,p_column_alias=>'C045'
,p_column_display_sequence=>47
,p_column_heading=>'C045'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30191335564327250318)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(30191315349247250281)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\30C7\30FC\30BF\306E\30ED\30FC\30C9')
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30191335326105250318)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(30191315349247250281)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\524D')
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30191334821671250317)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(30191315349247250281)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(30191336410865250319)
,p_branch_action=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(30191335564327250318)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30191336056276250319)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_LOAD_UPLOADED_DATA'
,p_process_name=>'Prepare Uploaded Data'
,p_attribute_01=>wwv_flow_api.id(30191275754077250233)
,p_attribute_02=>'P7_INSERT_COUNT'
,p_attribute_03=>'P7_UPDATE_COUNT'
,p_attribute_04=>'P7_ERROR_COUNT'
,p_attribute_05=>'P7_REVIEW_COUNT'
,p_process_error_message=>unistr('\30C7\30FC\30BF\306E\30ED\30FC\30C9\306B\5931\6557\3057\307E\3057\305F')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(30191335564327250318)
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(29996343038713090914)
,p_name=>unistr('\30C7\30FC\30BF\30FB\30ED\30FC\30C9\7D50\679C')
,p_alias=>'DATALOADRESULT'
,p_step_title=>unistr('\30C7\30FC\30BF\30FB\30ED\30FC\30C9\7D50\679C')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* apply u-Report--dataLoad CSS class to Data Load Report and hide empty columns */',
'apex.jQuery("table.standardLook").addClass("u-Report u-Report--standardLook");',
'apex.jQuery("table.u-Report--standardLook tr:nth-child(1) td:empty").css("display", "none");',
'apex.jQuery("table.u-Report--standardLook tr th:empty").css("display", "none");',
'apex.jQuery("table.u-Report--standardLook tr th:empty").each( function (idx, elem) { apex.jQuery("table.u-Report--standardLook tr td[headers=\""+apex.jQuery(elem).attr(''id'')+"\"]").css("display", "none");});'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20200724121100'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30191337214529250320)
,p_plug_name=>unistr('\30C7\30FC\30BF\30FB\30ED\30FC\30C9\30FB\30A6\30A3\30B6\30FC\30C9\306E\9032\6357\72B6\6CC1')
,p_plug_template=>wwv_flow_api.id(29996258370822090843)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(30191275926814250239)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(29996317731264090888)
,p_translate_title=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30191337502582250320)
,p_plug_name=>unistr('\30C7\30FC\30BF\30FB\30ED\30FC\30C9\7D50\679C')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_api.id(29996258370822090843)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(30191339861871250323)
,p_name=>unistr('\5931\6557\3057\305F\30EC\30B3\30FC\30C9')
,p_template=>wwv_flow_api.id(29996258370822090843)
,p_display_sequence=>20
,p_region_css_classes=>'data-upload-result'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;" '
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n001 as row_num,',
'       wwv_flow_lang.system_message( ''DATA_LOAD.'' || c049 ) as action,',
'       c048 as error,',
'       c001, c002, c003,',
'       c004, c005, c006,',
'       c007, c008, c009,',
'       c010, c011, c012,',
'       c013, c014, c015,',
'       c016, c017, c018,',
'       c019, c020, c021,',
'       c022, c023, c024,',
'       c025, c026, c027,',
'       c028, c029, c030,',
'       c031, c032, c033,',
'       c034, c035, c036,',
'       c037, c038, c039,',
'       c040, c041, c042,',
'       c043, c044, c045',
'  from apex_collections',
' where collection_name = ''LOAD_CONTENT''',
'   and c047 in (''FAILED'') ',
' order by seq_id'))
,p_display_when_condition=>'P7_ERROR_COUNT'
,p_display_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_query_headings=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'    l_string varchar(32667);',
'begin',
'    l_string := wwv_flow_lang.system_message(''DATA_LOAD.SEQUENCE_ACTION'');',
'    l_string := l_string ||'':''|| wwv_flow_lang.system_message(''ERROR'');',
'    for l_heading in ( select c005 as label',
'                         from apex_collections',
'                        where collection_name = ''LOAD_COL_HEAD''',
'                        order by seq_id )',
'    loop',
'        l_string := l_string || '':'' || l_heading.label;',
'    end loop;',
'    return l_string;',
'end;'))
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093')
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191340598471250328)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191341007427250329)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191341420331250329)
,p_query_column_id=>3
,p_column_alias=>'ERROR'
,p_column_display_sequence=>3
,p_column_heading=>'ERROR'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191341810826250330)
,p_query_column_id=>4
,p_column_alias=>'C001'
,p_column_display_sequence=>4
,p_column_heading=>'C001'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191342175807250330)
,p_query_column_id=>5
,p_column_alias=>'C002'
,p_column_display_sequence=>5
,p_column_heading=>'C002'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191342628287250331)
,p_query_column_id=>6
,p_column_alias=>'C003'
,p_column_display_sequence=>6
,p_column_heading=>'C003'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191343013966250331)
,p_query_column_id=>7
,p_column_alias=>'C004'
,p_column_display_sequence=>7
,p_column_heading=>'C004'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191343397677250332)
,p_query_column_id=>8
,p_column_alias=>'C005'
,p_column_display_sequence=>8
,p_column_heading=>'C005'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191343819423250332)
,p_query_column_id=>9
,p_column_alias=>'C006'
,p_column_display_sequence=>9
,p_column_heading=>'C006'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191344200415250333)
,p_query_column_id=>10
,p_column_alias=>'C007'
,p_column_display_sequence=>10
,p_column_heading=>'C007'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191344600837250333)
,p_query_column_id=>11
,p_column_alias=>'C008'
,p_column_display_sequence=>11
,p_column_heading=>'C008'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191345033436250334)
,p_query_column_id=>12
,p_column_alias=>'C009'
,p_column_display_sequence=>12
,p_column_heading=>'C009'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191345384624250334)
,p_query_column_id=>13
,p_column_alias=>'C010'
,p_column_display_sequence=>13
,p_column_heading=>'C010'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191345854861250335)
,p_query_column_id=>14
,p_column_alias=>'C011'
,p_column_display_sequence=>14
,p_column_heading=>'C011'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191346235687250335)
,p_query_column_id=>15
,p_column_alias=>'C012'
,p_column_display_sequence=>15
,p_column_heading=>'C012'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191346564154250336)
,p_query_column_id=>16
,p_column_alias=>'C013'
,p_column_display_sequence=>16
,p_column_heading=>'C013'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191347007889250337)
,p_query_column_id=>17
,p_column_alias=>'C014'
,p_column_display_sequence=>17
,p_column_heading=>'C014'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191347427127250337)
,p_query_column_id=>18
,p_column_alias=>'C015'
,p_column_display_sequence=>18
,p_column_heading=>'C015'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191347841279250338)
,p_query_column_id=>19
,p_column_alias=>'C016'
,p_column_display_sequence=>19
,p_column_heading=>'C016'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191348190523250338)
,p_query_column_id=>20
,p_column_alias=>'C017'
,p_column_display_sequence=>20
,p_column_heading=>'C017'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191348622167250339)
,p_query_column_id=>21
,p_column_alias=>'C018'
,p_column_display_sequence=>21
,p_column_heading=>'C018'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191349002840250339)
,p_query_column_id=>22
,p_column_alias=>'C019'
,p_column_display_sequence=>22
,p_column_heading=>'C019'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191349442550250340)
,p_query_column_id=>23
,p_column_alias=>'C020'
,p_column_display_sequence=>23
,p_column_heading=>'C020'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191349837464250340)
,p_query_column_id=>24
,p_column_alias=>'C021'
,p_column_display_sequence=>24
,p_column_heading=>'C021'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191350203321250341)
,p_query_column_id=>25
,p_column_alias=>'C022'
,p_column_display_sequence=>25
,p_column_heading=>'C022'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191350590840250341)
,p_query_column_id=>26
,p_column_alias=>'C023'
,p_column_display_sequence=>26
,p_column_heading=>'C023'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191350997949250342)
,p_query_column_id=>27
,p_column_alias=>'C024'
,p_column_display_sequence=>27
,p_column_heading=>'C024'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191351380924250342)
,p_query_column_id=>28
,p_column_alias=>'C025'
,p_column_display_sequence=>28
,p_column_heading=>'C025'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191351840228250343)
,p_query_column_id=>29
,p_column_alias=>'C026'
,p_column_display_sequence=>29
,p_column_heading=>'C026'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191352177644250343)
,p_query_column_id=>30
,p_column_alias=>'C027'
,p_column_display_sequence=>30
,p_column_heading=>'C027'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191352555512250344)
,p_query_column_id=>31
,p_column_alias=>'C028'
,p_column_display_sequence=>31
,p_column_heading=>'C028'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191352990866250344)
,p_query_column_id=>32
,p_column_alias=>'C029'
,p_column_display_sequence=>32
,p_column_heading=>'C029'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191353371028250345)
,p_query_column_id=>33
,p_column_alias=>'C030'
,p_column_display_sequence=>33
,p_column_heading=>'C030'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191353762275250345)
,p_query_column_id=>34
,p_column_alias=>'C031'
,p_column_display_sequence=>34
,p_column_heading=>'C031'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191354196354250345)
,p_query_column_id=>35
,p_column_alias=>'C032'
,p_column_display_sequence=>35
,p_column_heading=>'C032'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191354581218250346)
,p_query_column_id=>36
,p_column_alias=>'C033'
,p_column_display_sequence=>36
,p_column_heading=>'C033'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191354966298250346)
,p_query_column_id=>37
,p_column_alias=>'C034'
,p_column_display_sequence=>37
,p_column_heading=>'C034'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191355451956250347)
,p_query_column_id=>38
,p_column_alias=>'C035'
,p_column_display_sequence=>38
,p_column_heading=>'C035'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191355825276250347)
,p_query_column_id=>39
,p_column_alias=>'C036'
,p_column_display_sequence=>39
,p_column_heading=>'C036'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191356230947250348)
,p_query_column_id=>40
,p_column_alias=>'C037'
,p_column_display_sequence=>40
,p_column_heading=>'C037'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191356602056250348)
,p_query_column_id=>41
,p_column_alias=>'C038'
,p_column_display_sequence=>41
,p_column_heading=>'C038'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191356972722250349)
,p_query_column_id=>42
,p_column_alias=>'C039'
,p_column_display_sequence=>42
,p_column_heading=>'C039'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191357448948250350)
,p_query_column_id=>43
,p_column_alias=>'C040'
,p_column_display_sequence=>43
,p_column_heading=>'C040'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191357835758250350)
,p_query_column_id=>44
,p_column_alias=>'C041'
,p_column_display_sequence=>44
,p_column_heading=>'C041'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191358181414250351)
,p_query_column_id=>45
,p_column_alias=>'C042'
,p_column_display_sequence=>45
,p_column_heading=>'C042'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191358619089250351)
,p_query_column_id=>46
,p_column_alias=>'C043'
,p_column_display_sequence=>46
,p_column_heading=>'C043'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191359044834250352)
,p_query_column_id=>47
,p_column_alias=>'C044'
,p_column_display_sequence=>47
,p_column_heading=>'C044'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191359382441250352)
,p_query_column_id=>48
,p_column_alias=>'C045'
,p_column_display_sequence=>48
,p_column_heading=>'C045'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(30191360114164250354)
,p_name=>unistr('\30EC\30B3\30FC\30C9\304C\4ED6\306E\30E6\30FC\30B6\30FC\306B\3088\3063\3066\5909\66F4\3055\308C\307E\3057\305F\3002')
,p_template=>wwv_flow_api.id(29996258370822090843)
,p_display_sequence=>30
,p_region_css_classes=>'data-upload-result'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;" '
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n001 as row_num,',
'       wwv_flow_lang.system_message( ''DATA_LOAD.'' || c049 ) as action,',
'       c048 as error,',
'       c001, c002, c003,',
'       c004, c005, c006,',
'       c007, c008, c009,',
'       c010, c011, c012,',
'       c013, c014, c015,',
'       c016, c017, c018,',
'       c019, c020, c021,',
'       c022, c023, c024,',
'       c025, c026, c027,',
'       c028, c029, c030,',
'       c031, c032, c033,',
'       c034, c035, c036,',
'       c037, c038, c039,',
'       c040, c041, c042,',
'       c043, c044, c045',
'  from apex_collections',
' where collection_name = ''LOAD_CONTENT''',
'   and c049 in (''REVIEW'') ',
' order by seq_id'))
,p_display_when_condition=>'P7_REVIEW_COUNT'
,p_display_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_query_headings=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'    l_string varchar(32667);',
'begin',
'    l_string := wwv_flow_lang.system_message(''DATA_LOAD.SEQUENCE_ACTION'');',
'    l_string := l_string ||'':''|| wwv_flow_lang.system_message(''ERROR'');',
'    for l_heading in ( select c005 as label',
'                         from apex_collections',
'                        where collection_name = ''LOAD_COL_HEAD''',
'                        order by seq_id )',
'    loop',
'        l_string := l_string || '':'' || l_heading.label;',
'    end loop;',
'    return l_string;',
'end;'))
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093')
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191360814411250358)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191361242493250359)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191361647120250359)
,p_query_column_id=>3
,p_column_alias=>'ERROR'
,p_column_display_sequence=>3
,p_column_heading=>'ERROR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191361984622250360)
,p_query_column_id=>4
,p_column_alias=>'C001'
,p_column_display_sequence=>4
,p_column_heading=>'C001'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191362370398250360)
,p_query_column_id=>5
,p_column_alias=>'C002'
,p_column_display_sequence=>5
,p_column_heading=>'C002'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191362815115250361)
,p_query_column_id=>6
,p_column_alias=>'C003'
,p_column_display_sequence=>6
,p_column_heading=>'C003'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191363203799250361)
,p_query_column_id=>7
,p_column_alias=>'C004'
,p_column_display_sequence=>7
,p_column_heading=>'C004'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191363590493250362)
,p_query_column_id=>8
,p_column_alias=>'C005'
,p_column_display_sequence=>8
,p_column_heading=>'C005'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191364034547250362)
,p_query_column_id=>9
,p_column_alias=>'C006'
,p_column_display_sequence=>9
,p_column_heading=>'C006'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191364451905250363)
,p_query_column_id=>10
,p_column_alias=>'C007'
,p_column_display_sequence=>10
,p_column_heading=>'C007'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191364776175250363)
,p_query_column_id=>11
,p_column_alias=>'C008'
,p_column_display_sequence=>11
,p_column_heading=>'C008'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191365191956250364)
,p_query_column_id=>12
,p_column_alias=>'C009'
,p_column_display_sequence=>12
,p_column_heading=>'C009'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191365574031250364)
,p_query_column_id=>13
,p_column_alias=>'C010'
,p_column_display_sequence=>13
,p_column_heading=>'C010'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191365979314250365)
,p_query_column_id=>14
,p_column_alias=>'C011'
,p_column_display_sequence=>14
,p_column_heading=>'C011'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191366447025250365)
,p_query_column_id=>15
,p_column_alias=>'C012'
,p_column_display_sequence=>15
,p_column_heading=>'C012'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191366843667250366)
,p_query_column_id=>16
,p_column_alias=>'C013'
,p_column_display_sequence=>16
,p_column_heading=>'C013'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191367185078250366)
,p_query_column_id=>17
,p_column_alias=>'C014'
,p_column_display_sequence=>17
,p_column_heading=>'C014'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191367559359250367)
,p_query_column_id=>18
,p_column_alias=>'C015'
,p_column_display_sequence=>18
,p_column_heading=>'C015'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191368048412250367)
,p_query_column_id=>19
,p_column_alias=>'C016'
,p_column_display_sequence=>19
,p_column_heading=>'C016'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191368393577250368)
,p_query_column_id=>20
,p_column_alias=>'C017'
,p_column_display_sequence=>20
,p_column_heading=>'C017'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191368852224250368)
,p_query_column_id=>21
,p_column_alias=>'C018'
,p_column_display_sequence=>21
,p_column_heading=>'C018'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191369175661250369)
,p_query_column_id=>22
,p_column_alias=>'C019'
,p_column_display_sequence=>22
,p_column_heading=>'C019'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191369647013250369)
,p_query_column_id=>23
,p_column_alias=>'C020'
,p_column_display_sequence=>23
,p_column_heading=>'C020'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191369961274250370)
,p_query_column_id=>24
,p_column_alias=>'C021'
,p_column_display_sequence=>24
,p_column_heading=>'C021'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191370386686250370)
,p_query_column_id=>25
,p_column_alias=>'C022'
,p_column_display_sequence=>25
,p_column_heading=>'C022'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191370825909250370)
,p_query_column_id=>26
,p_column_alias=>'C023'
,p_column_display_sequence=>26
,p_column_heading=>'C023'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191371174239250371)
,p_query_column_id=>27
,p_column_alias=>'C024'
,p_column_display_sequence=>27
,p_column_heading=>'C024'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191371565401250371)
,p_query_column_id=>28
,p_column_alias=>'C025'
,p_column_display_sequence=>28
,p_column_heading=>'C025'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191371976691250372)
,p_query_column_id=>29
,p_column_alias=>'C026'
,p_column_display_sequence=>29
,p_column_heading=>'C026'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191372376882250372)
,p_query_column_id=>30
,p_column_alias=>'C027'
,p_column_display_sequence=>30
,p_column_heading=>'C027'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191372820380250373)
,p_query_column_id=>31
,p_column_alias=>'C028'
,p_column_display_sequence=>31
,p_column_heading=>'C028'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191373227829250373)
,p_query_column_id=>32
,p_column_alias=>'C029'
,p_column_display_sequence=>32
,p_column_heading=>'C029'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191373570409250374)
,p_query_column_id=>33
,p_column_alias=>'C030'
,p_column_display_sequence=>33
,p_column_heading=>'C030'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191373961157250374)
,p_query_column_id=>34
,p_column_alias=>'C031'
,p_column_display_sequence=>34
,p_column_heading=>'C031'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191374390810250375)
,p_query_column_id=>35
,p_column_alias=>'C032'
,p_column_display_sequence=>35
,p_column_heading=>'C032'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191374841358250375)
,p_query_column_id=>36
,p_column_alias=>'C033'
,p_column_display_sequence=>36
,p_column_heading=>'C033'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191375239070250376)
,p_query_column_id=>37
,p_column_alias=>'C034'
,p_column_display_sequence=>37
,p_column_heading=>'C034'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191375625486250376)
,p_query_column_id=>38
,p_column_alias=>'C035'
,p_column_display_sequence=>38
,p_column_heading=>'C035'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191375968139250377)
,p_query_column_id=>39
,p_column_alias=>'C036'
,p_column_display_sequence=>39
,p_column_heading=>'C036'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191376400061250377)
,p_query_column_id=>40
,p_column_alias=>'C037'
,p_column_display_sequence=>40
,p_column_heading=>'C037'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191376765614250378)
,p_query_column_id=>41
,p_column_alias=>'C038'
,p_column_display_sequence=>41
,p_column_heading=>'C038'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191377166751250378)
,p_query_column_id=>42
,p_column_alias=>'C039'
,p_column_display_sequence=>42
,p_column_heading=>'C039'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191377564301250378)
,p_query_column_id=>43
,p_column_alias=>'C040'
,p_column_display_sequence=>43
,p_column_heading=>'C040'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191378007888250379)
,p_query_column_id=>44
,p_column_alias=>'C041'
,p_column_display_sequence=>44
,p_column_heading=>'C041'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191378374203250379)
,p_query_column_id=>45
,p_column_alias=>'C042'
,p_column_display_sequence=>45
,p_column_heading=>'C042'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191378785735250380)
,p_query_column_id=>46
,p_column_alias=>'C043'
,p_column_display_sequence=>46
,p_column_heading=>'C043'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191379211472250380)
,p_query_column_id=>47
,p_column_alias=>'C044'
,p_column_display_sequence=>47
,p_column_heading=>'C044'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30191379651424250381)
,p_query_column_id=>48
,p_column_alias=>'C045'
,p_column_display_sequence=>48
,p_column_heading=>'C045'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30191337928314250321)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(30191337502582250320)
,p_button_name=>'FINISH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\7D42\4E86')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30191338434506250321)
,p_name=>'P7_INSERT_COUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(30191337502582250320)
,p_prompt=>unistr('\633F\5165\3055\308C\305F\884C:')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30191338800243250322)
,p_name=>'P7_UPDATE_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(30191337502582250320)
,p_prompt=>unistr('\66F4\65B0\3055\308C\305F\884C:')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30191339207462250322)
,p_name=>'P7_ERROR_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(30191337502582250320)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\5931\6557\3057\305F\884C:')
,p_source=>'select count(*) c from apex_collections where collection_name = ''LOAD_CONTENT'' and c047 = ''FAILED'''
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30191339609428250323)
,p_name=>'P7_REVIEW_COUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(30191337502582250320)
,p_prompt=>unistr('\30EC\30D3\30E5\30FC\306E\5FC5\8981\306A\884C:')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(29996343038713090914)
,p_name=>unistr('\30C7\30FC\30BF\66F4\65B0')
,p_alias=>'UPDATE'
,p_step_title=>unistr('\30C7\30FC\30BF\66F4\65B0')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MYWORKSPACE'
,p_last_upd_yyyymmddhh24miss=>'20200725062952'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26123047901505531492)
,p_plug_name=>unistr('\30C7\30FC\30BF\306E\30AD\30E3\30C3\30B7\30E5')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29996232050629090823)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26123048024000531493)
,p_plug_name=>unistr('\30C7\30FC\30BF\306E\30ED\30FC\30C9')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29996232050629090823)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30367479679494923834)
,p_plug_name=>unistr('\30D6\30EC\30C3\30C9\30AF\30E9\30E0')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29996267816277090851)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(29996204383162090797)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(29996321904539090893)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30367480182874923835)
,p_plug_name=>unistr('\30C7\30FC\30BF\66F4\65B0')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29996256464684090841)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       CODE,',
'       NAME,',
'       DBMS_LOB.GETLENGTH(CONTENT_BLOB) as CONTENT_BLOB,',
'       LAST_UPDATE_DATE at time zone ''Asia/Tokyo'' as last_update_date,',
'       FILE_NAME,',
'       CONTENT_URL,',
'       HOME_URL,',
'       OFFICIAL_SITE_URL',
'  from COVID19_MUNICIPALITIES'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>unistr('\30C7\30FC\30BF\66F4\65B0')
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(30367480284071923835)
,p_name=>unistr('\30C7\30FC\30BF\66F4\65B0')
,p_max_row_count_message=>unistr('\3053\306E\30EC\30DD\30FC\30C8\306E\6700\5927\884C\6570\306F#MAX_ROW_COUNT#\884C\3067\3059\3002\30D5\30A3\30EB\30BF\3092\9069\7528\3057\3066\3001\554F\5408\305B\306E\30EC\30B3\30FC\30C9\6570\3092\524A\6E1B\3057\3066\304F\3060\3055\3044\3002')
,p_no_data_found_message=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093\3002')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::P9_ID:#ID#'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>30357113129204330889
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30367480719260923844)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30367481101194923845)
,p_db_column_name=>'CODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'099999'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30367481542198923845)
,p_db_column_name=>'NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('\90FD\9053\5E9C\770C\540D')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30367481887631923845)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>5
,p_column_identifier=>'D'
,p_column_label=>unistr('\6700\7D42\66F4\65B0\6642\523B')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'YYYY-MM-DD HH24:MI'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30367482341896923846)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>6
,p_column_identifier=>'E'
,p_column_label=>unistr('\30D5\30A1\30A4\30EB\540D')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30367482719726923846)
,p_db_column_name=>'CONTENT_URL'
,p_display_order=>7
,p_column_identifier=>'F'
,p_column_label=>'URL'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30369013593339916147)
,p_db_column_name=>'CONTENT_BLOB'
,p_display_order=>17
,p_column_identifier=>'H'
,p_column_label=>unistr('\30C7\30FC\30BF')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'DOWNLOAD:COVID19_MUNICIPALITIES:CONTENT_BLOB:ID:::FILE_NAME:::attachment::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30752990344122810175)
,p_db_column_name=>'HOME_URL'
,p_display_order=>27
,p_column_identifier=>'I'
,p_column_label=>unistr('\90FD\9053\5E9C\770C\306E\30DB\30FC\30E0')
,p_column_link=>'#HOME_URL#'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-external-link"></span>'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(30752990426337810176)
,p_db_column_name=>'OFFICIAL_SITE_URL'
,p_display_order=>37
,p_column_identifier=>'J'
,p_column_label=>unistr('\30C7\30FC\30BF\53C2\7167\5143')
,p_column_link=>'#OFFICIAL_SITE_URL#'
,p_column_linktext=>'<span aria-hidden="true" class="fa fa-external-link"></span>'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(30367074252945817637)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'303567071'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CODE:NAME:LAST_UPDATE_DATE:CONTENT_BLOB:HOME_URL:OFFICIAL_SITE_URL:'
,p_sort_column_1=>'CODE'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31369483835797354968)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_ALL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\3067\304D\308B\3060\3051')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31369483926734354969)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_ALL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('PDF\3092\9664\304F\5168\3066')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26123048207115531495)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_HOKKAIDO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5317\6D77\9053')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30369013739820916148)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_HOKKAIDO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5317\6D77\9053(CSV)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30369013982941916151)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_AOMORI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\9752\68EE\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30369014286628916154)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_AOMORI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\9752\68EE\770C(CSV)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30504614737293062695)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_MIYAGI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5BAE\57CE\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30504614762999062696)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_MIYAGI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5BAE\57CE\770C(XLSX)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30509718622906197282)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_AKITA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\79CB\7530\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30509718718908197283)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_AKITA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\79CB\7530\770C(HTML)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30369014574909916157)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_YAMAGATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5C71\5F62\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30369014832768916159)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_YAMAGATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5C71\5F62\770C(CSV)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30369014966034916161)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_FUKUSHIMA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\798F\5CF6\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30369015352414916164)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_FUKUSHIMA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\798F\5CF6\770C(CSV)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30509718896791197285)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_IBARAKI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\8328\57CE\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30509719048790197286)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_IBARAKI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\8328\57CE\770C(HTML)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30509715349099197249)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_TOCHIGI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\6803\6728\770C(XLSX)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30509715450129197250)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_TOCHIGI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\6803\6728\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30752990492818810177)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_GUNMA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\7FA4\99AC\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30752990640321810178)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_GUNMA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\7FA4\99AC\770C(PDF)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30369015487134916166)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_SAITAMA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\57FC\7389\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30369015847206916169)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_SAITAMA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\57FC\7389\770C(CSV)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30752990929968810181)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_CHIBA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5343\8449\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30752991045532810182)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_CHIBA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5343\8449\770C(PDF)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30369016065507916172)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_TOKYO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\6771\4EAC\90FD')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30369016183053916173)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_TOKYO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\6771\4EAC\90FD(CSV)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30369016573779916177)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_KANAGAWA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\795E\5948\5DDD\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30369016704044916178)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_KANAGAWA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\795E\5948\5DDD\770C(CSV)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30509715758500197254)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_NIIGATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\65B0\6F5F\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30509715888255197255)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_NIIGATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\65B0\6F5F\770C(HTML)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30509716316988197259)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_TOYAMA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5BCC\5C71\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30509716373639197260)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_TOYAMA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5BCC\5C71\770C(XLSX)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30369017048585916181)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_ISHIKAWA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\77F3\5DDD\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30369017080147916182)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_ISHIKAWA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\77F3\5DDD\770C(CSV)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30369017363708916185)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_FUKUI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\798F\4E95\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30369017501213916186)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_FUKUI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\798F\4E95\770C(CSV)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30509718070750197277)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_YAMANASHI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5C71\68A8\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30509718217834197278)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_YAMANASHI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5C71\68A8\770C(XLSX)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30369017788174916189)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_NAGANO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\9577\91CE\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30369017891333916190)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_NAGANO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\9577\91CE\770C(CSV)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30369018249189916193)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_GIFU'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5C90\961C\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30369018313301916194)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_GIFU'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5C90\961C\770C(CSV)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30504609886427062647)
,p_button_sequence=>220
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_SIZUOKA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\9759\5CA1\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30504610011216062648)
,p_button_sequence=>220
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_SIZUOKA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\9759\5CA1\770C(CSV)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30752991254975810185)
,p_button_sequence=>230
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_AICHI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\611B\77E5\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30752991404692810186)
,p_button_sequence=>230
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_AICHI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\611B\77E5\770C(PDF)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30504610454285062652)
,p_button_sequence=>240
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_MIE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\4E09\91CD\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30504610512676062653)
,p_button_sequence=>240
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_MIE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\4E09\91CD\770C(CSV)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30509719399501197290)
,p_button_sequence=>250
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_KYOTO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\4EAC\90FD\5E9C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30509719487691197291)
,p_button_sequence=>250
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_KYOTO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\4EAC\90FD\5E9C(HTML)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30509716733970197263)
,p_button_sequence=>260
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_OSAKA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5927\962A\5E9C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30509716841164197264)
,p_button_sequence=>260
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_OSAKA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5927\962A\5E9C(XLSX)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30509717135643197267)
,p_button_sequence=>270
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_HYOGO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5175\5EAB\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30509717213516197268)
,p_button_sequence=>270
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_HYOGO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5175\5EAB\770C(XLSX)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30509717588740197272)
,p_button_sequence=>280
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_NARA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5948\826F\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30509717749607197273)
,p_button_sequence=>280
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_NARA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5948\826F\770C(XLSX)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30509719861249197295)
,p_button_sequence=>290
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_TOTTORI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\9CE5\53D6\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30509720020153197296)
,p_button_sequence=>290
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_TOTTORI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\9CE5\53D6\770C(HTML)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30504610918423062657)
,p_button_sequence=>300
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_OKAYAMA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5CA1\5C71\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30504610958803062658)
,p_button_sequence=>300
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_OKAYAMA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5CA1\5C71\770C(CSV)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30752989907537810171)
,p_button_sequence=>310
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_HIROSHIMA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5E83\5CF6\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30752989984806810172)
,p_button_sequence=>310
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_HIROSHIMA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5E83\5CF6\770C(HTML)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30504611429557062662)
,p_button_sequence=>320
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_YAMAGUCHI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5C71\53E3\770C')
,p_button_position=>'BELOW_BOX'
);
end;
/
begin
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30504611548313062663)
,p_button_sequence=>320
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_YAMAGUCHI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5C71\53E3\770C(CSV)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30752987847777810150)
,p_button_sequence=>330
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_TOKUSHIMA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5FB3\5CF6\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30752987897929810151)
,p_button_sequence=>330
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_TOKUSHIMA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5FB3\5CF6\770C(HTML)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30752988173650810154)
,p_button_sequence=>340
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_KAGAWA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\9999\5DDD\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30752988277530810155)
,p_button_sequence=>340
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_KAGAWA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\9999\5DDD\770C(HTML)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30504611807275062666)
,p_button_sequence=>350
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_EHIME'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\611B\5A9B\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30504611866259062667)
,p_button_sequence=>350
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_EHIME'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\611B\5A9B\770C(CSV)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30504612323111062671)
,p_button_sequence=>360
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_KOCHI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\9AD8\77E5\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30504612386481062672)
,p_button_sequence=>360
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_KOCHI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\9AD8\77E5\770C(CSV)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30504612772108062676)
,p_button_sequence=>370
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_FUKUOKA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\798F\5CA1\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30504612923835062677)
,p_button_sequence=>370
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_FUKUOKA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\798F\5CA1\770C(CSV)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30752988610671810158)
,p_button_sequence=>380
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_SAGA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\4F50\8CC0\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30752988727023810159)
,p_button_sequence=>380
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_SAGA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\4F50\8CC0\770C(HTML)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30504613243597062680)
,p_button_sequence=>390
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_NAGASAKI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\9577\5D0E\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30504613260023062681)
,p_button_sequence=>390
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_NAGASAKI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\9577\5D0E\770C(CSV)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30504613708604062685)
,p_button_sequence=>400
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_KUMAMOTO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\718A\672C\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30504613820068062686)
,p_button_sequence=>400
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_KUMAMOTO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\718A\672C\770C(CSV)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30504614214373062690)
,p_button_sequence=>410
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_OITA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5927\5206\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30504614331221062691)
,p_button_sequence=>410
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_OITA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5927\5206\770C(CSV)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30752989054451810162)
,p_button_sequence=>420
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_MIYAZAKI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5BAE\5D0E\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30752989076064810163)
,p_button_sequence=>420
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_MIYAZAKI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\5BAE\5D0E\770C(HTML)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30752989540751810167)
,p_button_sequence=>430
,p_button_plug_id=>wwv_flow_api.id(26123047901505531492)
,p_button_name=>'B_CACHE_KAGOSHIMA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\9E7F\5150\5CF6\770C')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30752989555011810168)
,p_button_sequence=>430
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_KAGOSHIMA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\9E7F\5150\5CF6\770C(HTML)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30752991807320810190)
,p_button_sequence=>440
,p_button_plug_id=>wwv_flow_api.id(26123048024000531493)
,p_button_name=>'B_LOAD_OKINAWA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>unistr('\6C96\7E04\770C(PDF)')
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26123048303950531496)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \5317\6D77\9053')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_url covid19_municipalities.content_url%type;',
'  l_file_name covid19_municipalities.file_name%type;',
'begin',
'  select col016, col019 into l_file_name, l_url from ',
'    apex_data_parser.parse(',
'      p_content => apex_web_service.make_rest_request_b(',
'        p_url => ''https://www.harp.lg.jp/opendata/api/package_show?id=752c577e-0cbe-46e0-bebd-eb47b71b38bf'',',
'        p_http_method => ''GET''',
'      ),',
'      p_file_type => 4',
'    )',
'  where col001 = ''3827'';',
'  update covid19_municipalities',
'  set content_blob = apex_web_service.make_rest_request_b(l_url, ''GET''),',
'      content_url = l_url,',
'      file_name = l_file_name,',
'      last_update_date = systimestamp',
unistr('  where name = ''\5317\6D77\9053'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_HOKKAIDO'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30369014092033916152)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \9752\68EE\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_url covid19_municipalities.content_url%type;',
'  l_file_name covid19_municipalities.file_name%type;',
'begin',
'  select col016, col019 into l_file_name, l_url from ',
'    apex_data_parser.parse(',
'      p_content => apex_web_service.make_rest_request_b(',
'        p_url => ''https://opendata.pref.aomori.lg.jp/api/package_show?id=5e4612ce-1636-41d9-82a3-c5130a79ffe0'',',
'        p_http_method => ''GET''',
'      ),',
'      p_file_type => 4',
'    )',
'  where col001 = ''12194'';',
'  update covid19_municipalities',
'  set content_blob = apex_web_service.make_rest_request_b(l_url, ''GET''),',
'      content_url = l_url,',
'      file_name = l_file_name,',
'      last_update_date = systimestamp',
unistr('  where name = ''\9752\68EE\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_AOMORI'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30369014741567916158)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \5C71\5F62\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_site_url  covid19_municipalities.official_site_url%type;',
'  l_url       covid19_municipalities.content_url%type;',
'  l_file_name covid19_municipalities.file_name%type;',
'  l_clob clob;',
'begin',
unistr('  select official_site_url into l_site_url from covid19_municipalities where name = ''\5C71\5F62\770C'';'),
'  l_clob := apex_web_service.make_rest_request(',
'      p_url => l_site_url,',
'      p_http_method => ''GET''',
'  );',
unistr('  l_clob := substr(l_clob, instr(l_clob, ''\6700\65B0\306E\30C7\30FC\30BF\306F\3053\3061\3089\FF08\30AA\30FC\30D7\30F3\30C7\30FC\30BF\FF09''));'),
'  l_clob := substr(l_clob, instr(l_clob, ''<a href=''));',
unistr('  l_clob := substr(l_clob, 1, instr(l_clob, ''\967D\6027\60A3\8005\5C5E\6027''));'),
'  l_url := regexp_replace(l_clob, ''<a href="([a-z0-9/:\._]+)\.csv".+'',''\1'');',
'  l_url := ''https://www.pref.yamagata.jp'' || l_url || ''.csv'';',
'  l_file_name := substr(l_url, instr(l_url, ''/'', -1)+1);',
'  update covid19_municipalities',
'  set content_blob = apex_web_service.make_rest_request_b(l_url, ''GET''),',
'      content_url = l_url,',
'      file_name = l_file_name,',
'      last_update_date = systimestamp',
unistr('  where name = ''\5C71\5F62\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_YAMAGATA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30369015075357916162)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \798F\5CF6\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_url covid19_municipalities.content_url%type;',
'  l_file_name covid19_municipalities.file_name%type;',
'begin',
'  l_file_name := ''070009_fukushima_covid19_patients_'' || to_char((systimestamp - interval ''1'' day) at time zone ''+09:00'', ''RRMMDD'') || ''.csv'';',
'  l_url := ''https://www.pref.fukushima.lg.jp/w4/covid19/patients/'' || l_file_name;',
'  update covid19_municipalities',
'  set content_blob = apex_web_service.make_rest_request_b(l_url, ''GET''),',
'      content_url = l_url,',
'      file_name = l_file_name,',
'      last_update_date = systimestamp',
unistr('  where name = ''\798F\5CF6\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_FUKUSHIMA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30369015613391916167)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \57FC\7389\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_url covid19_municipalities.content_url%type;',
'  l_file_name covid19_municipalities.file_name%type;',
'begin',
'  l_file_name := ''jokyo'' || to_char((systimestamp - interval ''1'' day) at time zone ''+09:00'', ''YYYYMMDD'') || ''.csv'';',
'  l_url := ''https://opendata.pref.saitama.lg.jp/data/dataset/c3a8db28-b943-4fcc-82ec-b7febd460bec/resource/49460b39-99b1-4259-9246-8e5c1f1d87f6/download/'' || l_file_name;',
'  update covid19_municipalities',
'  set content_blob = apex_web_service.make_rest_request_b(l_url, ''GET''),',
'      content_url = l_url,',
'      file_name = l_file_name,',
'      last_update_date = systimestamp',
unistr('  where name = ''\57FC\7389\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_SAITAMA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30369016333673916174)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \6771\4EAC\90FD')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\6771\4EAC\90FD'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_TOKYO'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30369016832323916179)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \795E\5948\5DDD\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\795E\5948\5DDD\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_KANAGAWA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30369017230490916183)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \77F3\5DDD\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\77F3\5DDD\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(30369017048585916181)
,p_process_when=>'B_CACHE_ALL B_CACHE_ISHIKAWA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30369017587621916187)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \798F\4E95\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\798F\4E95\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_FUKUI'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30369017956453916191)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \9577\91CE\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\9577\91CE\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_NAGANO'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30369018446018916195)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \5C90\961C\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\5C90\961C\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_GIFU'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30504610215740062650)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \9759\5CA1\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_url covid19_municipalities.content_url%type;',
'  l_file_name covid19_municipalities.file_name%type;',
'begin',
'  select col016, col019 into l_file_name, l_url from ',
'    apex_data_parser.parse(',
'      p_content => apex_web_service.make_rest_request_b(',
'        p_url => ''https://opendata.pref.shizuoka.jp/api/package_show?id=852e2fee-671c-4067-a914-bb77d3a86fa9'',',
'        p_http_method => ''GET''',
'      ),',
'      p_file_type => 4',
'    )',
'  where col001 = ''39432'';',
'  update covid19_municipalities',
'  set content_blob = apex_web_service.make_rest_request_b(l_url, ''GET''),',
'      content_url = l_url,',
'      file_name = l_file_name,',
'      last_update_date = systimestamp',
unistr('  where name = ''\9759\5CA1\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_SIZUOKA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30504610693146062655)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \4E09\91CD\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\4E09\91CD\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_MIE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30504611066351062659)
,p_process_sequence=>150
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \5CA1\5C71\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\5CA1\5C71\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_OKAYAMA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30504611265424062661)
,p_process_sequence=>170
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \5C71\53E3\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\5C71\53E3\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_YAMAGUCHI'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30504612036381062668)
,p_process_sequence=>180
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \611B\5A9B\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_url covid19_municipalities.content_url%type;',
'  l_file_name covid19_municipalities.file_name%type;',
'begin',
'  select col016, col019 into l_file_name, l_url from ',
'    apex_data_parser.parse(',
'      p_content => apex_web_service.make_rest_request_b(',
'        p_url => ''https://www.pref.ehime.jp/opendata-catalog/api/package_show?id=53f0bdae-3e65-4b60-a163-677e2cdd2a63'',',
'        p_http_method => ''GET''',
'      ),',
'      p_file_type => 4',
'    )',
'  where col001 = ''7190'';',
'  update covid19_municipalities',
'  set content_blob = apex_web_service.make_rest_request_b(l_url, ''GET''),',
'      content_url = l_url,',
'      file_name = l_file_name,',
'      last_update_date = systimestamp',
unistr('  where name = ''\611B\5A9B\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_EHIME'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30504612472244062673)
,p_process_sequence=>190
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \9AD8\77E5\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\9AD8\77E5\770C'';'),
'end;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_KOCHI'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30504612959138062678)
,p_process_sequence=>200
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \798F\5CA1\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\798F\5CA1\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_FUKUOKA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30504613394606062682)
,p_process_sequence=>210
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \9577\5D0E\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_url covid19_municipalities.content_url%type;',
'  l_file_name covid19_municipalities.file_name%type;',
'begin',
'  l_file_name := to_char((systimestamp - interval ''1'' day) at time zone ''+09:00'', ''YYYYMMDD'') || ''prefnagasakicovidpatients.csv'';',
'  l_url := ''http://data.bodik.jp/dataset/09951e04-dc5d-42e9-9a49-37443be6787e/resource/de7ce61e-1849-47a1-b758-bca3f809cdf8/download/'' || l_file_name;',
'  update covid19_municipalities',
'  set content_blob = apex_web_service.make_rest_request_b(l_url, ''GET''),',
'      content_url = l_url,',
'      file_name = l_file_name,',
'      last_update_date = systimestamp',
unistr('  where name = ''\9577\5D0E\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_NAGASAKI'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30504613931205062687)
,p_process_sequence=>220
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \718A\672C\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\718A\672C\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_KUMAMOTO'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30504614442723062692)
,p_process_sequence=>230
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \5927\5206\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\5927\5206\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_OITA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30509715061519197247)
,p_process_sequence=>240
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \5BAE\57CE\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_site_url  covid19_municipalities.official_site_url%type;',
'  l_url       covid19_municipalities.content_url%type;',
'  l_file_name covid19_municipalities.file_name%type;',
'  l_clob clob;',
'begin',
unistr('  select official_site_url into l_site_url from covid19_municipalities where name = ''\5BAE\57CE\770C'';'),
'  dbms_output.put_line(l_site_url);',
unistr('  -- l_clob := ''\767A\751F\72B6\6CC1\4E00\89A7</a></h2><p><a href="/uploaded/attachment/805393.xlsx">\65B0\578B\30B3\30ED\30CA\60A3\8005\72B6\6CC1\4E00\89A7\8868 [Excel\30D5\30A1\30A4\30EB\FF0F184KB]'';'),
'  l_clob := apex_web_service.make_rest_request(',
'      p_url => l_site_url,',
'      p_http_method => ''GET''',
'  );',
unistr('  l_clob := substr(l_clob, instr(l_clob, ''\767A\751F\72B6\6CC1\4E00\89A7''));'),
unistr('  l_clob := substr(l_clob, 1, instr(l_clob, ''\65B0\578B\30B3\30ED\30CA\60A3\8005\72B6\6CC1\4E00\89A7\8868''));'),
'  -- dbms_output.put_line(l_clob);',
'  l_url := regexp_replace(l_clob, ''.+<a href="([a-z0-9/]+)\.xlsx".+'',''\1'');',
'  l_url := ''https://www.pref.miyagi.jp'' || l_url || ''.xlsx'';',
'  l_file_name := substr(l_url, instr(l_url, ''/'', -1)+1);',
'  update covid19_municipalities',
'  set content_blob = apex_web_service.make_rest_request_b(l_url, ''GET''),',
'      content_url = l_url,',
'      file_name = l_file_name,',
'      last_update_date = systimestamp',
unistr('  where name = ''\5BAE\57CE\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_MIYAGI'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30509715472574197251)
,p_process_sequence=>250
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \6803\6728\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_url covid19_municipalities.content_url%type;',
'  l_file_name covid19_municipalities.file_name%type;',
'begin',
'  l_file_name := to_char((systimestamp - interval ''1'' day) at time zone ''+09:00'', ''YYYYMMDD'') || ''hasseijyoukyou.xlsx'';',
'  l_url := ''http://www.pref.tochigi.lg.jp/e04/welfare/hoken-eisei/kansen/hp/documents/'' || l_file_name;',
'  update covid19_municipalities',
'  set content_blob = apex_web_service.make_rest_request_b(l_url, ''GET''),',
'      content_url = l_url,',
'      file_name = l_file_name,',
'      last_update_date = systimestamp',
unistr('  where name = ''\6803\6728\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_TOCHIGI'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30509716020827197256)
,p_process_sequence=>260
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \65B0\6F5F\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\65B0\6F5F\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(30509715758500197254)
);
end;
/
begin
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30509716516536197261)
,p_process_sequence=>270
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \5BCC\5C71\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_site_url  covid19_municipalities.official_site_url%type;',
'  l_url       covid19_municipalities.content_url%type;',
'  l_file_name covid19_municipalities.file_name%type;',
'  l_clob clob;',
'  l_blob blob;',
'begin',
unistr('  select official_site_url into l_site_url from covid19_municipalities where name = ''\5BCC\5C71\770C'';'),
'  l_blob := apex_web_service.make_rest_request_b(',
'      p_url => l_site_url,',
'      p_http_method => ''GET''',
'  );',
'  l_clob := convert_blob_to_clob(l_blob, ''JA16SJIS'');',
'  l_clob := substr(l_clob, instr(l_clob, ''FMT_FL_LIST_START''));',
'  l_clob := substr(l_clob, instr(l_clob, ''<a href=''));',
unistr('  l_clob := substr(l_clob, 1, instr(l_clob, ''\5BCC\5C71\770C\5185\306B\304A\3051\308B\65B0\578B\30B3\30ED\30CA\30A6\30A4\30EB\30B9\611F\67D3\75C7\306E\767A\751F\72B6\6CC1\4E00\89A7''));'),
'  l_url := regexp_replace(l_clob, ''<a href="([a-z0-9/:\._]+)\.xlsx".+'',''\1'');',
'  l_url := l_url || ''.xlsx'';',
'  l_file_name := substr(l_url, instr(l_url, ''/'', -1)+1);',
'  update covid19_municipalities',
'  set content_blob = apex_web_service.make_rest_request_b(l_url, ''GET''),',
'      content_url = l_url,',
'      file_name = l_file_name,',
'      last_update_date = systimestamp',
unistr('  where name = ''\5BCC\5C71\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_TOYAMA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30509716944730197265)
,p_process_sequence=>280
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \5927\962A\5E9C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\5927\962A\5E9C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_OSAKA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30509717350040197269)
,p_process_sequence=>290
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \5175\5EAB\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\5175\5EAB\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_HYOGO'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30509717779875197274)
,p_process_sequence=>300
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \5948\826F\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\5948\826F\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_NARA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30509718340954197279)
,p_process_sequence=>310
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \5C71\68A8\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\5C71\68A8\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_YAMANASHI'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30509718458682197281)
,p_process_sequence=>320
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \79CB\7530\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\79CB\7530\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_AKITA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30509719111869197287)
,p_process_sequence=>330
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \8328\57CE\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\8328\57CE\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_IBARAKI'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30509719577950197292)
,p_process_sequence=>340
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \4EAC\90FD\5E9C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\4EAC\90FD\5E9C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_KYOTO'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30752987539096810147)
,p_process_sequence=>350
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \9CE5\53D6\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\9CE5\53D6\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_TOTTORI'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30752988013279810152)
,p_process_sequence=>360
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \5FB3\5CF6\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\5FB3\5CF6\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_TOKUSHIMA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30752988435031810156)
,p_process_sequence=>370
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \9999\5DDD\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\9999\5DDD\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_KAGAWA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30752988794380810160)
,p_process_sequence=>380
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \4F50\8CC0\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\4F50\8CC0\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_SAGA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30752989233002810164)
,p_process_sequence=>390
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \5BAE\5D0E\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\5BAE\5D0E\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_MIYAZAKI'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30752989656475810169)
,p_process_sequence=>400
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \9E7F\5150\5CF6\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\9E7F\5150\5CF6\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_KAGOSHIMA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30752990088597810173)
,p_process_sequence=>410
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \5E83\5CF6\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update covid19_municipalities m',
'  set m.content_blob = apex_web_service.make_rest_request_b(m.content_url, ''GET''),',
'      m.last_update_date = systimestamp',
unistr('  where m.name = ''\5E83\5CF6\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_HIROSHIMA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30752990698288810179)
,p_process_sequence=>420
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \7FA4\99AC\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_url covid19_municipalities.content_url%type;',
'  l_file_name covid19_municipalities.file_name%type;',
'begin',
'  l_file_name := ''100161635.pdf'';',
'  l_url := ''https://www.pref.gunma.jp/contents/100161635.pdf'';',
'  update covid19_municipalities',
'  set content_blob = apex_web_service.make_rest_request_b(l_url, ''GET''),',
'      content_url = l_url,',
'      file_name = l_file_name,',
'      last_update_date = systimestamp',
unistr('  where name = ''\7FA4\99AC\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_GUNMA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30752991183556810184)
,p_process_sequence=>430
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \5343\8449\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_url covid19_municipalities.content_url%type;',
'  l_file_name covid19_municipalities.file_name%type;',
'begin',
'  l_file_name := to_char((systimestamp - interval ''1'' day) at time zone ''+09:00'', ''MMDD'') || ''kansensya.pdf'';',
'  l_url := ''https://www.pref.chiba.lg.jp/shippei/press/2019/documents/'' || l_file_name;',
'  update covid19_municipalities',
'  set content_blob = apex_web_service.make_rest_request_b(l_url, ''GET''),',
'      content_url = l_url,',
'      file_name = l_file_name,',
'      last_update_date = systimestamp',
unistr('  where name = ''\5343\8449\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_CHIBA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30752991502346810187)
,p_process_sequence=>440
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30AD\30E3\30C3\30B7\30E5 - \611B\77E5\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_url covid19_municipalities.content_url%type;',
'  l_file_name covid19_municipalities.file_name%type;',
'begin',
'  l_file_name := ''341572.pdf'';',
'  l_url := ''https://www.pref.aichi.jp/uploaded/attachment/'' || l_file_name;',
'  update covid19_municipalities',
'  set content_blob = apex_web_service.make_rest_request_b(l_url, ''GET''),',
'      content_url = l_url,',
'      file_name = l_file_name,',
'      last_update_date = systimestamp',
unistr('  where name = ''\611B\77E5\770C'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_CACHE_ALL B_CACHE_AICHI'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30369013855351916150)
,p_process_sequence=>450
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \5317\6D77\9053')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        to_number(col002) municipality_code,',
'        col003 prefecture_name,',
'        col004 city_name,',
'        to_date(col005,''YYYY-MM-DD'') published_date,',
'        to_date(col006,''YYYY-MM-DD'') onset_date,',
'        col007 patient_location,',
'        case',
unistr('        when col008 = ''10\672A\6E80'' then'),
unistr('            ''10\6B73\672A\6E80'''),
unistr('        when col008 = ''100\4EE3'' then'),
unistr('            ''100\6B73\4EE5\4E0A'''),
unistr('        when col008 = ''\975E\516C\8868'' then'),
'            null',
'        else',
'            col008',
'        end patient_age,',
'        case',
unistr('        when col009 = ''\7537'' then'),
unistr('            ''\7537\6027'''),
unistr('        when col009 = ''\975E\516C\8868'' then'),
'            null',
'        else',
'            col009',
'        end patient_sex,',
'        col010 patient_occupation,',
'        col011 patient_status,',
'        col012 patient_symptom,',
'        to_number(col013)  patient_travel_history,',
'        to_number(col015)  patient_left_hospital,',
'        col016 remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\5317\6D77\9053''),'),
'            p_file_name => ''file_is.csv'',',
'            p_skip_rows => 1,',
'            p_file_charset => ''JA16SJIS''',
'        ) where col001 is not null',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\5317\6D77\9053'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_HOKKAIDO'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30369014429797916155)
,p_process_sequence=>460
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \9752\68EE\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        to_number(col002) municipality_code,',
'        col003 prefecture_name,',
'        col004 city_name,',
unistr('        to_date(col005,''YYYY"\5E74"MM"\6708"DD"\65E5"'') published_date,'),
unistr('        to_date(col006,''YYYY"\5E74"MM"\6708"DD"\65E5"'') onset_date,'),
'        col007 patient_location,',
'        col008 patient_age,',
'        col009 patient_sex,',
'        null patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        null patient_left_hospital,',
'        null remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\9752\68EE\770C''),'),
'            p_file_name => ''file_is.csv'',',
'            p_skip_rows => 1,',
'            p_file_charset => ''JA16SJIS''',
'        ) where col001 is not null',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\9752\68EE\770C'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_AOMORI'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30369014943275916160)
,p_process_sequence=>470
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \5C71\5F62\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        to_number(col002) municipality_code,',
'        col003 prefecture_name,',
'        null city_name,',
'        to_date(col004,''YYYY/MM/DD'') published_date,',
'        null onset_date,',
'        col006 patient_location,',
'        col007 patient_age,',
'        col008 patient_sex,',
'        null patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        null patient_left_hospital,',
'        null remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\5C71\5F62\770C''),'),
'            p_file_name => ''file_is.csv'',',
'            p_skip_rows => 1,',
'            p_file_charset => ''JA16SJIS''',
'        ) where col001 is not null',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\5C71\5F62\770C'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_YAMAGATA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30369015376946916165)
,p_process_sequence=>480
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \798F\5CF6\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        to_number(col002) municipality_code,',
'        col003 prefecture_name,',
'        col004 city_name,',
'        to_date(col005,''YYYY/MM/DD'') published_date,',
'        null onset_date,',
'        col007 patient_location,',
'        col008 patient_age,',
'        col009 patient_sex,',
'        col010 patient_occupation,',
'        case when col015 = ''1'' then',
unistr('            ''\6B7B\4EA1'''),
'        else',
'            col011',
'        end patient_status,',
'        col012 patient_symptom,',
'        to_number(col013) patient_travel_history,',
'        to_number(col014) patient_left_hospital,',
'        col016 remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\798F\5CF6\770C''),'),
'            p_file_name => ''file_is.csv'',',
'            p_skip_rows => 1,',
'            p_file_charset => ''JA16SJIS''',
'        ) where col001 is not null',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\798F\5CF6\770C'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_FUKUSHIMA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30369015910158916170)
,p_process_sequence=>490
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \57FC\7389\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        110001  municipality_code,',
unistr('        ''\57FC\7389\770C'' prefecture_name,'),
'        null city_name,',
'        -- case when validate_conversion(col002 as date, ''YYYY/MM/DD'') = 1 then',
'        case when regexp_like(col002, ''^\d{2}/\d{1,2}/\d{1,2}$'') then',
'            to_date(col002, ''YYYY/MM/DD'')',
'        else',
'            null',
'        end published_date,',
'        null onset_date,',
'        col005 patient_location,',
'        case',
'        when col003 = ''-'' then',
'            null',
unistr('        when col003 = ''90\4EE3\4EE5\4E0A'' then'),
unistr('            ''90\6B73\4EE5\4E0A'''),
'        else',
'            col003',
'        end patient_age,',
'        case',
'        when col004 = ''-'' then',
'            null',
unistr('        when col004 = ''\5973\5150'' then'),
unistr('            ''\5973\6027'''),
'        else',
'            col004',
'        end patient_sex,',
'        null patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        null patient_left_hospital,',
'        null remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\57FC\7389\770C''),'),
'            p_file_name => ''file_is.csv'',',
'            p_skip_rows => 1,',
'            p_file_charset => ''JA16SJIS''',
'        ) where col001 is not null',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\57FC\7389\770C'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_SAITAMA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
begin
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30369016421286916175)
,p_process_sequence=>500
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \6771\4EAC\90FD')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        to_number(col002) municipality_code,',
'        col003 prefecture_name,',
'        col004 city_name,',
'        to_date(col005,''YYYY-MM-DD'') published_date,',
'        to_date(col007,''YYYY-MM-DD'') onset_date,',
'        col008 patient_location,',
'        case',
'        when col009 = ''''''-'' then',
'            null',
unistr('        when col009 = ''\4E0D\660E'' then'),
'            null',
'        else',
'            col009',
'        end patient_age,',
'        case',
unistr('        when col010 = ''\5973'' then'),
unistr('            ''\5973\6027'''),
unistr('        when col010 = ''\4E0D\660E'' then'),
'            null',
'        else',
'            col010',
'        end patient_sex,',
'        col011 patient_occupation,',
'        col012 patient_status,',
'        col013 patient_symptom,',
'        to_number(col014)  patient_travel_history,',
'        to_number(col016)  patient_left_hospital,',
'        col015 remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\6771\4EAC\90FD''),'),
'            p_file_name => ''file_is.csv'',',
'            p_skip_rows => 1',
'        ) where col001 is not null',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\6771\4EAC\90FD'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_TOKYO'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30369016923936916180)
,p_process_sequence=>510
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \795E\5948\5DDD\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
unistr('    delete from covid19_patients where prefecture_name = ''\795E\5948\5DDD\770C'';'),
'    insert into covid19_patients',
'    (',
'        "No", municipality_code, prefecture_name,',
'        published_date, patient_location, patient_age, patient_sex',
'    )',
'    select',
'        (line_number - 1) "No",',
'        140007 municipality_code,',
unistr('        ''\795E\5948\5DDD\770C'' prefecture_name,'),
'        to_date(col001, ''YYYY-MM-DD'') published_date,',
'        col002 patient_location,',
'        case',
unistr('        when col003 = ''\FF0D'' then'),
'            null',
unistr('        when col003 = ''\975E\516C\8868'' then'),
'            null',
'        else',
'            col003',
'        end patient_age,',
'        col004 patient_sex',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\795E\5948\5DDD\770C''),'),
'            p_file_name => ''file_is.csv'',',
'            p_skip_rows => 1,',
'            p_file_charset => ''JA16SJIS''',
'        ) where col001 is not null;',
'end;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_KANAGAWA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30369017293692916184)
,p_process_sequence=>520
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \77F3\5DDD\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        to_number(col002) municipality_code,',
'        col003 prefecture_name,',
'        col004 city_name,',
'        to_date(col005,''YYYY/MM/DD'') published_date,',
'        null onset_date,',
'        col006 patient_location,',
'        case',
unistr('        when regexp_like(col007, ''10\6B73\005Cs+\672A\6E80'') then'),
unistr('            ''10\6B73\672A\6E80'''),
unistr('        when col007 = ''\975E\516C\8868'' then'),
'            null',
'        else',
'            col007',
'        end patient_age,',
'        case',
unistr('        when col008 = ''\5973\6027\3000'' then'),
unistr('            ''\5973\6027'''),
unistr('        when col008 = ''\5973\5150'' then'),
unistr('            ''\5973\6027'''),
unistr('        when col008 = ''\7537\5150'' then'),
unistr('            ''\7537\6027'''),
unistr('        when col008 = ''\975E\516C\8868'' then'),
'            null',
'        else',
'            col008',
'        end patient_sex,',
'        null patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        null patient_left_hospital,',
'        null remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\77F3\5DDD\770C''),'),
'            p_file_name => ''file_is.csv'',',
'            p_skip_rows => 1,',
'            p_file_charset => ''JA16SJIS''',
'        )',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\77F3\5DDD\770C'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_ISHIKAWA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30369017657758916188)
,p_process_sequence=>530
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \798F\4E95\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        to_number(col002) municipality_code,',
'        col003 prefecture_name,',
'        col004 city_name,',
'        to_date(col005,''YYYY/MM/DD'') published_date,',
'        to_date(col006,''YYYY/MM/DD'') onset_date,',
'        col007 patient_location,',
'        col008 patient_age,',
'        col009 patient_sex,',
'        col010 patient_occupation,',
'        col011 patient_status,',
'        col012 patient_symptom,',
'        to_number(col013)  patient_travel_history,',
'        to_number(col014)  patient_left_hospital,',
'        col015 remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\798F\4E95\770C''),'),
'            p_file_name => ''file_is.csv'',',
'            p_skip_rows => 1',
'        ) where col001 is not null',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\798F\4E95\770C'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_FUKUI'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30369018137999916192)
,p_process_sequence=>540
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \9577\91CE\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        to_number(col002) municipality_code,',
'        col003 prefecture_name,',
'        col004 city_name,',
'        to_date(col005,''YYYY/MM/DD'') published_date,',
'        to_date(col006,''YYYY/MM/DD'') onset_date,',
'        col007 patient_location,',
'        col008 patient_age,',
'        col009 patient_sex,',
'        col010 patient_occupation,',
'        col011 patient_status,',
'        col012 patient_symptom,',
'        to_number(col013)  patient_travel_history,',
'        to_number(col014)  patient_left_hospital,',
'        col015 remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\9577\91CE\770C''),'),
'            p_file_name => ''file_is.csv'',',
'            p_skip_rows => 2,',
'            p_file_charset => ''JA16SJIS''',
'        ) where col001 is not null',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\9577\91CE\770C'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_NAGANO'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30369018481144916196)
,p_process_sequence=>550
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \5C90\961C\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        to_number(col002) municipality_code,',
'        col003 prefecture_name,',
'        col004 city_name,',
'        to_date(col005,''YYYY-MM-DD'') published_date,',
'        to_date(col006,''YYYY-MM-DD'') onset_date,',
'        col007 patient_location,',
'        col008 patient_age,',
'        col009 patient_sex,',
'        col010 patient_occupation,',
'        col011 patient_status,',
'        col012 patient_symptom,',
'        to_number(col013)  patient_travel_history,',
'        to_number(col014)  patient_left_hospital,',
'        col015 remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\5C90\961C\770C''),'),
'            p_file_name => ''file_is.csv'',',
'            p_skip_rows => 1,',
'            p_file_charset => ''JA16SJIS''',
'        ) where col001 is not null',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\5C90\961C\770C'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_GIFU'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30504610269967062651)
,p_process_sequence=>560
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \9759\5CA1\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        to_number(col002) municipality_code,',
'        col003 prefecture_name,',
'        col004 city_name,',
'        to_date(col005,''YYYY/MM/DD'') published_date,',
'        to_date(col006,''YYYY/MM/DD'') onset_date,',
'        col007 patient_location,',
'        col008 patient_age,',
'        col009 patient_sex,',
'        col010 patient_occupation,',
'        col011 patient_status,',
'        col012 patient_symptom,',
'        to_number(col013)  patient_travel_history,',
'        to_number(col014)  patient_left_hospital,',
'        col015 remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\9759\5CA1\770C''),'),
'            p_file_name => ''file_is.csv'',',
'            p_skip_rows => 1,',
'            p_file_charset => ''JA16SJIS''',
'        ) where col001 is not null',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\9759\5CA1\770C'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_SIZUOKA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30504610758535062656)
,p_process_sequence=>570
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \4E09\91CD\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        to_number(col002) municipality_code,',
'        col003 prefecture_name,',
'        col004 city_name,',
'        to_date(col005,''YYYY/MM/DD'') published_date,',
'        to_date(col007,''YYYY/MM/DD'') onset_date,',
'        col010 patient_location,',
'        col008 patient_age,',
'        col009 patient_sex,',
'        col011 patient_occupation,',
'        col012 patient_status,',
'        col013 patient_symptom,',
'        to_number(col014)  patient_travel_history,',
'        to_number(col016)  patient_left_hospital,',
'        col015 remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\4E09\91CD\770C''),'),
'            p_file_name => ''file_is.csv'',',
'            p_skip_rows => 1,',
'            p_file_charset => ''JA16SJIS''',
'        ) where col001 is not null',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\4E09\91CD\770C'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_MIE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30504611235730062660)
,p_process_sequence=>580
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \5CA1\5C71\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
unistr('    delete from covid19_patients where prefecture_name = ''\5CA1\5C71\770C'';'),
'    insert into covid19_patients',
'    (',
'        "No", municipality_code, prefecture_name, city_name,',
'        published_date, patient_location, patient_age, patient_sex',
'    )',
'    select',
'        (line_number - 1) "No",',
'        to_number(col001) municipality_code,',
'        col002 prefecture_name,',
'        col003 city_name,',
unistr('        to_date(col004, ''MM"\6708"DD"\65E5"'') published_date,'),
'        col006 patient_location,',
'        case',
unistr('        when col007 = ''\30FC'' then'),
'            null',
'        else',
'            col007',
'        end patient_age,',
'        case',
unistr('        when col008 = ''\30FC'' then'),
'            null',
'        else',
'            col008',
'        end patient_sex',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\5CA1\5C71\770C''),'),
'            p_file_name => ''file_is.csv'',',
'            p_skip_rows => 1,',
'            p_file_charset => ''JA16SJIS''',
'        ) where col001 is not null;',
'end;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_OKAYAMA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30504611577170062664)
,p_process_sequence=>590
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \5C71\53E3\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        to_number(col002) municipality_code,',
'        col003 prefecture_name,',
'        col004 city_name,',
'        to_date(col006,''YYYY/MM/DD'') published_date,',
'        null onset_date,',
'        null patient_location,',
'        case',
unistr('        when regexp_like(col007,''^\005Cd+\6B73\4EE3$'') then'),
unistr('            replace(col007,''\6B73'')'),
'        else',
'            col007',
'        end patient_age,',
'        case',
unistr('        when col008 = ''\975E\516C\8868'' then'),
'            null',
'        else',
'            col008',
'        end patient_sex,',
'        null patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        null patient_left_hospital,',
'        col009 remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\5C71\53E3\770C''),'),
'            p_file_name => ''file_is.csv'',',
'            p_skip_rows => 1',
'        ) where col001 is not null',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\5C71\53E3\770C'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_YAMAGUCHI'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30504612129090062669)
,p_process_sequence=>600
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \611B\5A9B\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        to_number(col002) municipality_code,',
'        col003 prefecture_name,',
'        col004 city_name,',
'        to_date(col005,''YYYY-MM-DD'') published_date,',
'        to_date(col007,''YYYY-MM-DD'') onset_date,',
'        col008 patient_location,',
'        col009 patient_age,',
'        col010 patient_sex,',
'        col011 patient_occupation,',
'        col012 patient_status,',
'        col013 patient_symptom,',
'        to_number(col014)  patient_travel_history,',
'        to_number(col016)  patient_left_hospital,',
'        col015 remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\611B\5A9B\770C''),'),
'            p_file_name => ''file_is.csv'',',
'            p_skip_rows => 1',
'        ) where col001 is not null',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\611B\5A9B\770C'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_EHIME'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
begin
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30504612622462062674)
,p_process_sequence=>610
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \9AD8\77E5\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        to_number(col002) municipality_code,',
'        col003 prefecture_name,',
'        col004 city_name,',
'        to_date(col005,''YYYY/MM/DD'') published_date,',
'        to_date(col007,''YYYY/MM/DD'') onset_date,',
'        col008 patient_location,',
'        col009 patient_age,',
'        col010 patient_sex,',
'        null patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        null patient_left_hospital,',
'        null remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\9AD8\77E5\770C''),'),
'            p_file_name => ''file_is.csv'',',
'            p_skip_rows => 1,',
'            p_file_charset => ''JA16SJIS''',
'        ) where col001 is not null',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\9AD8\77E5\770C'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_KOCHI'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30504613124884062679)
,p_process_sequence=>620
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \798F\5CA1\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        to_number(col002) municipality_code,',
'        col003 prefecture_name,',
'        col004 city_name,',
'        to_date(col005,''YYYY/MM/DD'') published_date,',
'        to_date(col007,''YYYY/MM/DD'') onset_date,',
'        col008 patient_location,',
'        case',
unistr('        when col009 = ''10\4EE3\672A\6E80'' then'),
unistr('            ''10\6B73\672A\6E80'''),
unistr('        when col009 = ''100\4EE3'' then'),
unistr('            ''100\6B73\4EE5\4E0A'''),
'        else',
'            col009',
'        end patient_age,',
'        col010 patient_sex,',
'        col011 patient_occupation,',
'        col012 patient_status,',
'        col013 patient_symptom,',
'        to_number(col014)  patient_travel_history,',
'        to_number(col016)  patient_left_hospital,',
'        col015 remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\798F\5CA1\770C''),'),
'            p_file_name => ''file_is.csv'',',
'            p_skip_rows => 1',
'        ) where col001 is not null',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\798F\5CA1\770C'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_FUKUOKA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30504613478402062683)
,p_process_sequence=>630
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \9577\5D0E\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        to_number(col002) municipality_code,',
'        col003 prefecture_name,',
'        col004 city_name,',
'        to_date(col005,''YYYY-MM-DD'') published_date,',
'        to_date(col007,''YYYY-MM-DD'') onset_date,',
'        col008 patient_location,',
'        col009 patient_age,',
'        col010 patient_sex,',
'        col011 patient_occupation,',
'        col012 patient_status,',
'        col013 patient_symptom,',
'        to_number(col014)  patient_travel_history,',
'        to_number(col016)  patient_left_hospital,',
'        col015 remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\9577\5D0E\770C''),'),
'            p_file_name => ''file_is.csv'',',
'            p_skip_rows => 1',
'        ) where col001 is not null',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\9577\5D0E\770C'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_NAGASAKI'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30504613993906062688)
,p_process_sequence=>640
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \718A\672C\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        to_number(col002) municipality_code,',
'        col003 prefecture_name,',
'        col004 city_name,',
'        to_date(col005,''YYYY-MM-DD'') published_date,',
'        to_date(col006,''YYYY-MM-DD'') onset_date,',
'        col007 patient_location,',
'        col008 patient_age,',
'        col009 patient_sex,',
'        col010 patient_occupation,',
'        col011 patient_status,',
'        col012 patient_symptom,',
'        to_number(col013)  patient_travel_history,',
'        to_number(col014)  patient_left_hospital,',
'        col015 remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\718A\672C\770C''),'),
'            p_file_name => ''file_is.csv'',',
'            p_skip_rows => 1',
'        ) where col001 is not null',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\718A\672C\770C'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_KUMAMOTO'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30504614512755062693)
,p_process_sequence=>650
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \5927\5206\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        to_number(col002) municipality_code,',
'        col003 prefecture_name,',
'        col004 city_name,',
'        to_date(col005,''YYYY/MM/DD'') published_date,',
'        to_date(col007,''YYYY/MM/DD'') onset_date,',
'        col008 patient_location,',
'        col009 patient_age,',
'        col010 patient_sex,',
'        col017 patient_occupation,',
'        col012 patient_status,',
'        col013 patient_symptom,',
'        to_number(col014)  patient_travel_history,',
'        to_number(col016)  patient_left_hospital,',
'        col015 remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\5927\5206\770C''),'),
'            p_file_name => ''file_is.csv'',',
'            p_skip_rows => 1',
'        ) where col001 is not null',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\5927\5206\770C'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_OITA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30509715208472197248)
,p_process_sequence=>660
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \5BAE\57CE\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        40002 municipality_code,',
unistr('        ''\5BAE\57CE\770C'' prefecture_name,'),
'        null city_name,',
'        date''1900-01-01'' - 2 + to_number(col005) published_date,',
'        null onset_date,',
'        col004 patient_location,',
'        col002 patient_age,',
'        col003 patient_sex,',
'        null patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        case',
unistr('        when col006 = ''\9000\9662\7B49'' then'),
'            1',
unistr('        when col006 = ''\5165\9662\4E2D'' then'),
'            0',
'        else',
'            null',
'        end patient_left_hospital,',
'        col006 remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\5BAE\57CE\770C''),'),
'            p_file_name => ''file_is.xlsx'',',
'            p_skip_rows => 3',
'        ) where col001 is not null',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\5BAE\57CE\770C'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_MIYAGI'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30509715592546197252)
,p_process_sequence=>670
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \6803\6728\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        90000 municipality_code,',
unistr('        ''\6803\6728\770C'' prefecture_name,'),
'        null city_name,',
'        date''1900-01-01'' - 2 + to_number(col005) published_date,',
'        null onset_date,',
'        col004 patient_location,',
'        col002 patient_age,',
'        col003 patient_sex,',
'        null patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        case',
'        when col006 is not null then',
'            1',
'        else',
'            null',
'        end patient_left_hospital,',
'        col007 remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\6803\6728\770C''),'),
'            p_file_name => ''file_is.xlsx'',',
'            p_skip_rows => 2',
'        ) where regexp_like(col001, ''^\d+$'')',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\6803\6728\770C'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_TOCHIGI'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30509716154282197257)
,p_process_sequence=>680
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \65B0\6F5F\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        150002 municipality_code,',
unistr('        ''\65B0\6F5F\770C'' prefecture_name,'),
'        null city_name,',
unistr('        to_date(regexp_replace(col003,''^(\005Cd+\6708\005Cd+\65E5).+'',''\005C1''), ''MM"\6708"DD"\65E5"'') published_date,'),
'        null onset_date,',
'        col006 patient_location,',
'        case',
'        when col004 = ''-'' then',
'            null',
unistr('        when regexp_like(col004,''^\005Cd+\6B73\4EE3$'') then'),
unistr('            replace(col004,''\6B73'')'),
'        else',
'            col004',
'        end patient_age,',
'        case',
'        when col005 = ''-'' then',
'            null',
'        else',
'            col005',
'        end patient_sex,',
'        col007 patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        null patient_left_hospital,',
'        null remark',
'    from table(parse_html_table_niigata)',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\65B0\6F5F\770C'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_NIIGATA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30509716605233197262)
,p_process_sequence=>690
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \5BCC\5C71\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        160008 municipality_code,',
unistr('        ''\5BCC\5C71\770C'' prefecture_name,'),
'        null city_name,',
'        date''1900-01-01'' - 2 + to_number(col003) published_date,',
'        null onset_date,',
'        col006 patient_location,',
'        case',
unistr('        when col004 = ''90\4EE3\4EE5\4E0A'' then'),
unistr('            ''90\6B73\4EE5\4E0A'''),
'        else',
'            col004',
'        end patient_age,',
'        case',
unistr('        when col005 = ''\7537'' then'),
unistr('            ''\7537\6027'''),
unistr('        when col005 = ''\5973'' then'),
unistr('            ''\5973\6027'''),
'        else',
'            col005',
'        end patient_sex,',
'        col007 patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        null patient_left_hospital,',
'        null remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\5BCC\5C71\770C''),'),
'            p_file_name => ''file_is.xlsx'',',
'            p_skip_rows => 3',
'        ) where col001 is not null',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\5BCC\5C71\770C'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_TOYAMA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30509717015863197266)
,p_process_sequence=>700
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \5927\962A\5E9C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'select',
'        to_number(col001) "No",',
'        270008 municipality_code,',
unistr('        ''\5927\962A\5E9C'' prefecture_name,'),
'        null city_name,',
'        date''1900-01-01'' - 2 + to_number(col002) published_date,',
'        case when regexp_like(col006,''^\d+$'') then',
'            date''1900-01-01'' - 2 + to_number(col006)',
'        else',
'            null',
'        end onset_date,',
'        col005 patient_location,',
'        case ',
'        when col003 = ''100'' then',
unistr('            ''100\6B73\4EE5\4E0A'''),
'        when regexp_like(col003,''^\d+$'') then',
unistr('            col003 || ''\4EE3'''),
'        else',
'            col003',
'        end patient_age,',
'        col004 patient_sex,',
'        null patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        null patient_left_hospital,',
'        null remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\5927\962A\5E9C''),'),
'            p_file_name => ''file_is.xlsx'',',
'            p_skip_rows => 2',
'        ) where col001 is not null    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\5927\962A\5E9C'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_OSAKA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
begin
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30509717439284197270)
,p_process_sequence=>710
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \5175\5EAB\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col002) "No",',
'        280003 municipality_code,',
unistr('        ''\5175\5EAB\770C'' prefecture_name,'),
'        col006 city_name,',
'        date''1900-01-01'' - 2 + to_number(col003) published_date,',
'        case when regexp_like(col009,''^\d+$'') then',
'            date''1900-01-01'' - 2 + to_number(col009)',
'        else',
'            null',
'        end onset_date,',
'        col007 patient_location,',
'        case',
'        when regexp_like(col004,''^\d+$'') then',
unistr('            col004 || ''\4EE3'''),
unistr('        when col004 = ''10\4EE3\672A\6E80'' then'),
unistr('            ''10\6B73\672A\6E80'''),
unistr('        when col004 = ''\975E\516C\8868'' then'),
'            null',
'        else',
'            col004',
'        end patient_age,',
'        col005 patient_sex,',
'        col008 patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        case ',
unistr('        when col010 = ''\306A\3057'' then'),
'            0',
unistr('        when col010 = ''\3042\308A'' then'),
'            1',
'        else',
'            null',
'        end patient_travel_history,',
'        null patient_left_hospital,',
'        col011 remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\5175\5EAB\770C''),'),
'            p_file_name => ''file_is.xlsx'',',
'            p_skip_rows => 5',
'        ) where col002 is not null',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\5175\5EAB\770C'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_HYOGO'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30509717937986197275)
,p_process_sequence=>720
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \5948\826F\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        to_number(col002) municipality_code,',
'        col003 prefecture_name,',
'        null city_name,',
'        to_date(col004, ''YYYY-MM-DD'') published_date,',
'        to_date(col005, ''YYYY-MM-DD'') onset_date,',
'        col006 patient_location,',
'        col007 patient_age,',
'        col008 patient_sex,',
'        null patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        null patient_left_hospital,',
'        col009 remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\5948\826F\770C''),'),
'            p_file_name => ''file_is.xlsx'',',
'            p_skip_rows => 2',
'        ) where col001 is not null',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\5948\826F\770C'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_NARA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30509718432351197280)
,p_process_sequence=>730
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \5C71\68A8\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        to_number(col002) municipality_code,',
'        col003 prefecture_name,',
'        null city_name,',
'        to_date(col004,''YYYY-MM-DD'') published_date,',
'        case when regexp_like(col005, ''^\d{4}-\d{1,2}-\d{1,2}$'') then',
'            to_date(col005,''YYYY-MM-DD'')',
'        else',
'            null',
'        end onset_date,',
'        col008 patient_location,',
'        col006 patient_age,',
'        col007 patient_sex,',
'        null patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        null patient_left_hospital,',
'        null remark',
'    from ',
'        apex_data_parser.parse(',
'            p_content => ',
unistr('                (select content_blob from covid19_municipalities where name = ''\5C71\68A8\770C''),'),
'            p_file_name => ''file_is.xlsx'',',
'            p_skip_rows => 1',
'        ) where col001 is not null',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
unistr('    where prefecture_name = ''\5C71\68A8\770C'''),
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_YAMANASHI'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30509718770635197284)
,p_process_sequence=>740
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \79CB\7530\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
unistr('        to_number(regexp_replace(col001, ''^\005Cs*(\005Cd+)\4F8B\76EE'',''\005C1'')) "No",'),
'        50008 municipality_code,',
unistr('        ''\79CB\7530\770C'' prefecture_name,'),
'        null city_name,',
unistr('        to_date(col002, ''MM"\6708"DD"\65E5"'') published_date,'),
'        null onset_date,',
'        col005 patient_location,',
'        case',
unistr('        when regexp_like(col003, ''^\005Cd+\6B73\4EE3'') then'),
unistr('            replace(col003, ''\6B73'')'),
'        else',
'            col003',
'        end patient_age,',
'        col004 patient_sex,',
'        col006 patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        null patient_left_hospital,',
'        col008 remark',
'    from table(parse_html_table_akita)',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_AKITA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30509719280451197289)
,p_process_sequence=>750
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \8328\57CE\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_count number;',
'begin',
'    select count(*) into l_count from table(parse_html_table_ibaraki);',
'    l_count := l_count + 1;',
unistr('    delete from covid19_patients where prefecture_name = ''\8328\57CE\770C'';'),
'    insert into covid19_patients',
'    (',
'        "No", municipality_code, prefecture_name, published_date,',
'        patient_location, patient_age, patient_sex, remark',
'    )',
'    select',
'        (l_count - rownum) "No",',
'        80004 municipality_code,',
unistr('        ''\8328\57CE\770C'' prefecture_name,'),
'        to_date(col001, ''MM/DD'') published_date,',
'        col004 patient_location,',
'        col002 patient_age,',
'        case',
unistr('        when col003 = ''\7537'' then'),
unistr('            ''\7537\6027'''),
unistr('        when col003 = ''\5973'' then'),
unistr('            ''\5973\6027'''),
'        else',
'            col003',
'        end patient_sex,',
'        col005 remark',
'    from table(parse_html_table_ibaraki);',
'end;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_IBARAKI'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30509719845653197294)
,p_process_sequence=>760
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \4EAC\90FD\5E9C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('-- \5165\9662\4E2D'),
'merge into covid19_patients p',
'using',
'(',
'    select',
unistr('        to_number(regexp_replace(col001, ''(\005Cd+)\4F8B\76EE'', ''\005C1'')) "No",'),
'        260002 municipality_code,',
unistr('        ''\4EAC\90FD\5E9C'' prefecture_name,'),
'        null city_name,',
unistr('        to_date(to_char(to_number(regexp_replace(col002,''\4EE4\548C(\005Cd+)\5E74\005Cd+\6708\005Cd+\65E5$'',''\005C1''))+2018,''9999'') || ''-'' '),
unistr('                || regexp_replace(col002,''\4EE4\548C\005Cd+\5E74(\005Cd+)\6708(\005Cd+)\65E5$'',''\005C1-\005C2''),''YYYY-MM-DD'') published_date,'),
'        null onset_date,',
'        col005 patient_location,',
'        case',
'        when col003 = ''-'' then',
'            null',
unistr('        when col003 = ''100\4EE5\4E0A'' then'),
unistr('            ''100\6B73\4EE5\4E0A'''),
unistr('        when col003 = ''10\672A\6E80'' then'),
unistr('            ''10\6B73\672A\6E80'''),
'        when regexp_like(col003, ''^\d+$'') then',
unistr('            col003 || ''\4EE3'''),
'        else',
'            col003',
'        end patient_age,',
'        case',
'        when col004 = ''-'' then',
'            null',
'        else',
'            col004',
'        end patient_sex,',
'        null patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        null patient_left_hospital,',
'        null remark',
'    from table(parse_html_table_kyoto1)',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );',
unistr('-- \9000\9662\6E08\307F'),
'merge into covid19_patients p',
'using',
'(',
'    select',
unistr('        to_number(regexp_replace(col001, ''(\005Cd+)\4F8B\76EE'', ''\005C1'')) "No",'),
'        260002 municipality_code,',
unistr('        ''\4EAC\90FD\5E9C'' prefecture_name,'),
'        null city_name,',
unistr('        to_date(to_char(to_number(regexp_replace(col002,''\4EE4\548C(\005Cd+)\5E74\005Cd+\6708\005Cd+\65E5$'',''\005C1''))+2018,''9999'') || ''-'''),
unistr('                || regexp_replace(col002,''\4EE4\548C\005Cd+\5E74(\005Cd+)\6708(\005Cd+)\65E5$'',''\005C1-\005C2''),''YYYY-MM-DD'') published_date,'),
'        null onset_date,',
'        col005 patient_location,',
'        case',
'        when col003 = ''-'' then',
'            null',
unistr('        when col003 = ''100\4EE5\4E0A'' then'),
unistr('            ''100\6B73\4EE5\4E0A'''),
unistr('        when col003 = ''10\672A\6E80'' then'),
unistr('            ''10\6B73\672A\6E80'''),
'        when regexp_like(col003, ''^\d+$'') then',
unistr('            col003 || ''\4EE3'''),
'        else',
'            col003',
'        end patient_age,',
'        case',
'        when col004 = ''-'' then',
'            null',
'        else',
'            col004',
'        end patient_sex,',
'        null patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        1 patient_left_hospital,',
'        null remark',
'    from table(parse_html_table_kyoto2)',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_KYOTO'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30752987694232810149)
,p_process_sequence=>770
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \9CE5\53D6\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        310000 municipality_code,',
unistr('        ''\9CE5\53D6\770C'' prefecture_name,'),
'        null city_name,',
'        to_date(col003, ''MM/DD'') published_date,',
'        null onset_date,',
'        col004 patient_location,',
'        case',
'        when regexp_like(col005, ''^\d+$'') then',
unistr('            col005 || ''\4EE3'''),
'        else',
'            col005',
'        end patient_age,',
'        col006 patient_sex,',
'        null patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        null patient_left_hospital,',
'        null remark',
'    from table(parse_html_table_tottori)',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_TOTTORI'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30752988081844810153)
,p_process_sequence=>780
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \5FB3\5CF6\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
unistr('        to_number(regexp_replace(col001, ''^\005Cs*(\005Cd+)\4F8B\76EE\005Cs*$'', ''\005C1'')) "No",'),
'        360007 municipality_code,',
unistr('        ''\5FB3\5CF6\770C'' prefecture_name,'),
'        null city_name,',
unistr('        to_date(col002, ''MM"\6708"DD"\65E5"'') published_date,'),
'        null onset_date,',
'        null patient_location,',
'        regexp_replace(col003, ''\s*(\S+)\s*'', ''\1'') patient_age,',
'        regexp_replace(col004, ''\s*(\S+)\s*'', ''\1'') patient_sex,',
'        null patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        null patient_left_hospital,',
'        null remark',
'    from table(parse_html_table_tokushima)',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_TOKUSHIMA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30752988457878810157)
,p_process_sequence=>790
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \9999\5DDD\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        370002 municipality_code,',
unistr('        ''\9999\5DDD\770C'' prefecture_name,'),
'        null city_name,',
unistr('        to_date(col002, ''MM"\6708"DD"\65E5\FF08"Dy"\66DC\65E5\FF09"'') published_date,'),
'        null onset_date,',
'        col005 patient_location,',
'        col003 patient_age,',
'        case',
unistr('        when col004 = ''\7537'' then'),
unistr('            ''\7537\6027'''),
unistr('        when col004 = ''\5973'' then'),
unistr('            ''\5973\6027'''),
'        else',
'            col004',
'        end patient_sex,',
'        null patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        case',
unistr('        when instr(col006,''\9000\9662'') > 0 then'),
'            1',
'        else',
'             null',
'        end patient_left_hospital,',
'        col006 remark        ',
'    from table(parse_html_table_kagawa)',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_KAGAWA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30752988919054810161)
,p_process_sequence=>800
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \4F50\8CC0\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(regexp_replace(col002,''^(\d+).*'',''\1'')) "No",',
'        410004 municipality_code,',
unistr('        ''\4F50\8CC0\770C'' prefecture_name,'),
'        null city_name,',
unistr('        to_date(col001,''MM"\6708"DD"\65E5("Dy"\66DC\65E5)"'') published_date,'),
'        null onset_date,',
'        col005 patient_location,',
'        case',
unistr('        when regexp_like(col003, ''^\005Cd+\6B73\4EE3'') then'),
unistr('            replace(col003, ''\6B73'')'),
'        else',
'           col003',
'        end patient_age,',
'        col004 patient_sex,',
'        null patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        case',
unistr('        when regexp_like(col007, ''^\005Cd+\6708\005Cd+\65E5'') then'),
'            1',
'        else',
'            null',
'        end patient_left_hospital,',
'        null remark        ',
'    from table(parse_html_table_saga)',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_SAGA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
begin
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30752989279268810165)
,p_process_sequence=>810
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \5BAE\5D0E\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(regexp_replace(col001,''No.(\d+)'',''\1'')) "No",',
'        450006 municipality_code,',
unistr('        ''\5BAE\5D0E\770C'' prefecture_name,'),
'        null city_name,',
unistr('        to_date(col002,''MM"\6708"DD"\65E5"'') published_date,'),
'        null onset_date,',
'        col005 patient_location,',
'        case',
unistr('        when regexp_like(col003, ''10\6B73\005Cs+\672A\6E80'') then'),
unistr('            ''10\6B73\672A\6E80'''),
'        else',
'            col003',
'        end patient_age,',
'        col004 patient_sex,',
'        null patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        case',
unistr('        when instr(col006, ''\5165\9662\4E2D'') > 0 then'),
'            0',
unistr('        when instr(col006, ''\9000\9662'') > 0 then'),
'            1',
'        else',
'            null',
'        end patient_left_hospital,',
'        col006 remark',
'    from table(parse_html_table_miyazaki)',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_MIYAZAKI'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30752989772677810170)
,p_process_sequence=>820
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \9E7F\5150\5CF6\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        460001 municipality_code,',
unistr('        ''\9E7F\5150\5CF6\770C'' prefecture_name,'),
'        null city_name,',
unistr('        to_date(col002, ''MM"\6708"DD"\65E5"'') published_date,'),
'        null onset_date,',
'        col003 patient_location,',
'        col004 patient_age,',
'        col005 patient_sex,',
'        null patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        case',
unistr('        when col007 = ''\3007'' then'),
'            1',
'        else',
'            null',
'        end patient_left_hospital,',
'        null remark',
'    from table(parse_html_table_kagoshima)',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_KAGOSHIMA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30752990227302810174)
,p_process_sequence=>830
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \5E83\5CF6\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        340006 municipality_code,',
unistr('        ''\5E83\5CF6\770C'' prefecture_name,'),
'        null city_name,',
'        case',
'        when regexp_like(col002, ''^\d+/\d+$'') then',
'            to_date(col002, ''MM/DD'')',
unistr('        when regexp_like(col002, ''\005Cd+\6708\005Cd+\65E5'') then'),
unistr('            to_date(col002, ''MM"\6708"DD"\65E5"'')'),
unistr('        when regexp_like(col002, ''\005Cd+/\005Cd+\FF5E\005Cd+'') then'),
unistr('            to_date(regexp_replace(col002, ''(\005Cd+)/(\005Cd+)\FF5E\005Cd+'', ''\005C1-\005C2''), ''MM-DD'')'),
'        end published_date,',
'        null onset_date,',
'        case',
unistr('        when col004 = ''\8A73\7D30\60C5\5831\306E\3068\304A\308A'' then'),
'            null',
'        else',
'            col004',
'        end patient_location,',
'        case',
unistr('        when regexp_like(col003, ''\005Cd+/[\7537\5973]'') then'),
unistr('            regexp_replace(col003, ''(\005Cd+)/[\7537\5973]'', ''\005C1'') || ''\4EE3'''),
'        when regexp_like(col003, ''^\d+$'') then',
unistr('            col003 || ''\4EE3'''),
'        else',
'            null',
'        end patient_age,',
'        case',
unistr('        when instr(col003, ''/\7537'') > 0 then'),
unistr('            ''\7537\6027'''),
unistr('        when instr(col003, ''/\5973'') > 0 then'),
unistr('            ''\5973\6027'''),
'        else',
'            null',
'        end patient_sex,',
'        null patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        null patient_left_hospital,',
'        null remark',
'    from table(parse_html_table_hiroshima)',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        -- p.published_date         = n.published_date,',
'        -- p.onset_date             = n.onset_date,',
'        -- p.patient_location       = n.patient_location,',
'        -- p.patient_age            = n.patient_age,',
'        -- p.patient_sex            = n.patient_sex,',
'        -- p.patient_occupation     = n.patient_occupation,',
'        -- p.patient_status         = n.patient_status,',
'        -- p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_LOAD_ALL B_LOAD_HIROSHIMA'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30752990833690810180)
,p_process_sequence=>840
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \7FA4\99AC\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
unistr('        to_number(regexp_replace(col001,''(\005Cd+)\4F8B\76EE'',''\005C1'')) "No",'),
'        100005 municipality_code,',
unistr('        ''\7FA4\99AC\770C'' prefecture_name,'),
'        null city_name,',
'        to_date(to_char(to_number(regexp_replace(col002,''R(\d+)\.\d+\.\d+$'',''\1''))+2018,''9999'') || ''-'' || regexp_replace(col002,''R\d+\.(\d+)\.(\d+)$'',''\1-\2''),''YYYY-MM-DD'') published_date,',
'        null onset_date,',
'        col004 patient_location,',
'        col003 patient_age,',
'        col005 patient_sex,',
'        col006 patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        null patient_left_hospital,',
'        null remark',
'    from table(parse_pdf_table_gunma)',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(30752990640321810178)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30752991732662810189)
,p_process_sequence=>850
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \5343\8449\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        case',
unistr('        when col008 = ''\7121\75C7\72B6'' then'),
unistr('            -- \7121\75C7\72B6\3067\306FNo\304C\91CD\8907\3057\306A\3044\3088\3046\3001+10000\3059\308B'),
'            to_number(col001) + 10000',
'        else',
'            to_number(col001)',
'        end "No",',
'        120006 municipality_code,',
unistr('        ''\5343\8449\770C'' prefecture_name,'),
'        null city_name,',
'        case',
unistr('        when regexp_like(col007, ''^\005Cd+\6708\005Cd+\65E5$'') then'),
unistr('            to_date(col007, ''MM"\6708"DD"\65E5"'')'),
'        else',
'            null',
'        end published_date,',
'        case',
unistr('        when regexp_like(col006, ''^\005Cd+\6708\005Cd+\65E5$'') then'),
unistr('            to_date(col006, ''MM"\6708"DD"\65E5"'')'),
'        else',
'            null',
'        end onset_date,',
'        col004 patient_location,',
'        case',
unistr('        when col002 = ''\540C\610F\306A\3057'' then'),
'            null',
'        else',
'            col002',
'        end patient_age,',
'        case',
unistr('        when col003 = ''\540C\610F\306A\3057'' then'),
'            null',
'        else',
'            col003',
'        end patient_sex,',
'        null patient_occupation,',
'        col008 patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        null patient_left_hospital,',
'        col005 remark',
'    from table(parse_pdf_table_chiba)',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(30752991045532810182)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30752991575882810188)
,p_process_sequence=>860
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \611B\77E5\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        230006 municipality_code,',
unistr('        ''\611B\77E5\770C'' prefecture_name,'),
'        null city_name,',
unistr('        to_date(col002, ''MM"\6708"DD"\65E5"'') published_date,'),
'        null onset_date,',
'        col005 patient_location,',
'        col003 patient_age,',
'        col004 patient_sex,',
'        null patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        null patient_left_hospital,',
'        null remark',
'    from table(parse_pdf_table_aichi)',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(30752991404692810186)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30752991876931810191)
,p_process_sequence=>870
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30ED\30FC\30C9 - \6C96\7E04\770C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into covid19_patients p',
'using',
'(',
'    select',
'        to_number(col001) "No",',
'        470007 municipality_code,',
unistr('        ''\6C96\7E04\770C'' prefecture_name,'),
'        null city_name,',
'        case',
unistr('        when regexp_like(col005,''^\005Cd+\6708\005Cd+\65E5$'') then'),
unistr('            to_date(col005, ''MM"\6708"DD"\65E5"'')'),
'        else',
'            null',
'        end published_date,',
'        case',
unistr('        when regexp_like(col004,''^\005Cd+\6708\005Cd+\65E5$'') then'),
unistr('            to_date(col004, ''MM"\6708"DD"\65E5"'')'),
'        else',
'            null',
'        end onset_date,',
'        col006 patient_location,',
'        col003 patient_age,',
'        col002 patient_sex,',
'        col007 patient_occupation,',
'        null patient_status,',
'        null patient_symptom,',
'        null patient_travel_history,',
'        null patient_left_hospital,',
'        null remark',
'    from table(parse_pdf_table_okinawa)',
'    minus',
'    select',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date,',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom, ',
'        patient_travel_history, patient_left_hospital, remark',
'    from covid19_patients',
') n',
'on (p."No" = n."No" and p.prefecture_name = n.prefecture_name)',
'when matched then',
'    update set',
'        p.city_name              = n.city_name,',
'        p.published_date         = n.published_date,',
'        p.onset_date             = n.onset_date,',
'        p.patient_location       = n.patient_location,',
'        p.patient_age            = n.patient_age,',
'        p.patient_sex            = n.patient_sex,',
'        p.patient_occupation     = n.patient_occupation,',
'        p.patient_status         = n.patient_status,',
'        p.patient_symptom        = n.patient_symptom,',
'        p.patient_travel_history = n.patient_travel_history,',
'        p.patient_left_hospital  = n.patient_left_hospital,',
'        p.remark                 = n.remark',
'when not matched then',
'    insert(',
'        "No", municipality_code, prefecture_name, city_name, ',
'        published_date, onset_date, ',
'        patient_location, patient_age, patient_sex, patient_occupation,',
'        patient_status, patient_symptom,',
'        patient_travel_history, patient_left_hospital, remark',
'    )',
'    values',
'    (',
'        n."No", n.municipality_code, n.prefecture_name, n.city_name, ',
'        n.published_date, n.onset_date, ',
'        n.patient_location, n.patient_age, n.patient_sex, n.patient_occupation,',
'        n.patient_status, n.patient_symptom,',
'        n.patient_travel_history, n.patient_left_hospital, n.remark',
'    );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(30752991807320810190)
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(29996343038713090914)
,p_name=>unistr('\90FD\9053\5E9C\770C\30C7\30FC\30BF\66F4\65B0')
,p_alias=>'PREFECTURES'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\90FD\9053\5E9C\770C\30C7\30FC\30BF\66F4\65B0')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'MYWORKSPACE'
,p_last_upd_yyyymmddhh24miss=>'20200725065202'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30930791351367210158)
,p_plug_name=>unistr('\90FD\9053\5E9C\770C\30C7\30FC\30BF\66F4\65B0')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29996230963559090822)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'COVID19_MUNICIPALITIES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30930798331795210175)
,p_plug_name=>unistr('\30DC\30BF\30F3')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29996232050629090823)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30930798688578210175)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(30930798331795210175)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30930800300988210178)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(30930798331795210175)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30930800724034210179)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(30930798331795210175)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30930801062956210179)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(30930798331795210175)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30930791568320210160)
,p_name=>'P9_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(30930791351367210158)
,p_item_source_plug_id=>wwv_flow_api.id(30930791351367210158)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30930791973736210167)
,p_name=>'P9_CODE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(30930791351367210158)
,p_item_source_plug_id=>wwv_flow_api.id(30930791351367210158)
,p_prompt=>unistr('\5168\56FD\5730\65B9\516C\5171\56E3\4F53\30B3\30FC\30C9')
,p_source=>'CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30930792397297210167)
,p_name=>'P9_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(30930791351367210158)
,p_item_source_plug_id=>wwv_flow_api.id(30930791351367210158)
,p_prompt=>unistr('\90FD\9053\5E9C\770C\540D')
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30930792839655210168)
,p_name=>'P9_CONTENT_BLOB'
,p_source_data_type=>'BLOB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(30930791351367210158)
,p_item_source_plug_id=>wwv_flow_api.id(30930791351367210158)
,p_prompt=>unistr('\30AD\30E3\30C3\30B7\30E5\30FB\30C7\30FC\30BF')
,p_source=>'CONTENT_BLOB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_05=>'LAST_UPDATE_DATE'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30930793221911210168)
,p_name=>'P9_LAST_UPDATE_DATE'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(30930791351367210158)
,p_item_source_plug_id=>wwv_flow_api.id(30930791351367210158)
,p_prompt=>unistr('\6700\7D42\66F4\65B0\65E5\4ED8')
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30930794021753210169)
,p_name=>'P9_FILE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(30930791351367210158)
,p_item_source_plug_id=>wwv_flow_api.id(30930791351367210158)
,p_prompt=>unistr('\30D5\30A1\30A4\30EB\540D')
,p_source=>'FILE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30930794435715210170)
,p_name=>'P9_CONTENT_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(30930791351367210158)
,p_item_source_plug_id=>wwv_flow_api.id(30930791351367210158)
,p_prompt=>unistr('\967D\6027\60A3\8005\5C5E\6027\30C7\30FC\30BFURL')
,p_source=>'CONTENT_URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>400
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30930794836486210170)
,p_name=>'P9_HOME_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(30930791351367210158)
,p_item_source_plug_id=>wwv_flow_api.id(30930791351367210158)
,p_prompt=>unistr('\90FD\9053\5E9C\770C\30DB\30FC\30E0URL')
,p_source=>'HOME_URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>400
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30930795174044210171)
,p_name=>'P9_OFFICIAL_SITE_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(30930791351367210158)
,p_item_source_plug_id=>wwv_flow_api.id(30930791351367210158)
,p_prompt=>unistr('\90FD\9053\5E9C\770C\30B3\30ED\30CA\60C5\5831URL')
,p_source=>'OFFICIAL_SITE_URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>400
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(29996319444684090889)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(30930793705548210169)
,p_validation_name=>'P9_LAST_UPDATE_DATE must be timestamp'
,p_validation_sequence=>40
,p_validation=>'P9_LAST_UPDATE_DATE'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>unistr('#LABEL#\306F\6709\52B9\306A\30BF\30A4\30E0\30B9\30BF\30F3\30D7\3067\3042\308B\5FC5\8981\304C\3042\308A\307E\3059\3002')
,p_associated_item=>wwv_flow_api.id(30930793221911210168)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30930798773863210175)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(30930798688578210175)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30930799632074210177)
,p_event_id=>wwv_flow_api.id(30930798773863210175)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30930801951540210180)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(30930791351367210158)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\30D7\30ED\30BB\30B9\30FB\30D5\30A9\30FC\30E0\90FD\9053\5E9C\770C\30C7\30FC\30BF\66F4\65B0')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30930802353734210180)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\30C0\30A4\30A2\30ED\30B0\3092\9589\3058\308B')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30930801537165210179)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(30930791351367210158)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\671F\5316\30D5\30A9\30FC\30E0\90FD\9053\5E9C\770C\30C7\30FC\30BF\66F4\65B0')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(29996343038713090914)
,p_name=>unistr('\30ED\30B0\30A4\30F3\30FB\30DA\30FC\30B8')
,p_alias=>'LOGIN'
,p_step_title=>unistr('\65B0\578B\30B3\30ED\30CA\30A6\30A4\30EB\30B9\611F\67D3\75C7\967D\6027\60A3\8005\5C5E\6027 - \30B5\30A4\30F3\30A4\30F3')
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(29996211081578090805)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_last_upd_yyyymmddhh24miss=>'20200718023246'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29996346993939090931)
,p_plug_name=>unistr('\65B0\578B\30B3\30ED\30CA\30A6\30A4\30EB\30B9\611F\67D3\75C7\967D\6027\60A3\8005\5C5E\6027')
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29996257065345090842)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29996351746159090940)
,p_plug_name=>unistr('\8A00\8A9E\30BB\30EC\30AF\30BF')
,p_parent_plug_id=>wwv_flow_api.id(29996346993939090931)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(29996230963559090822)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(29996349813171090937)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(29996346993939090931)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29996320494261090891)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\30B5\30A4\30F3\30A4\30F3')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29996347375800090932)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(29996346993939090931)
,p_item_default=>'demo'
,p_prompt=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_placeholder=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(29996319102362090889)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29996347773147090933)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(29996346993939090931)
,p_prompt=>unistr('\30D1\30B9\30EF\30FC\30C9')
,p_placeholder=>unistr('\30D1\30B9\30EF\30FC\30C9')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(29996319102362090889)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29996348904183090935)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(29996346993939090931)
,p_prompt=>unistr('\30E6\30FC\30B6\30FC\540D\3092\8A18\61B6')
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(29996348062825090934)||'.'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when_type=>'PLSQL_EXPRESSION'
,p_field_template=>wwv_flow_api.id(29996319102362090889)
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
 p_id=>wwv_flow_api.id(29996350590160090939)
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
 p_id=>wwv_flow_api.id(29996350159481090938)
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
 p_id=>wwv_flow_api.id(29996351434307090940)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>unistr('\30DA\30FC\30B8\30FB\30AD\30E3\30C3\30B7\30E5\306E\30AF\30EA\30A2')
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29996350966782090939)
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
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(30790155471215876317)
);
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