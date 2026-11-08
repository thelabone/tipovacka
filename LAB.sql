prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_default_workspace_id=>9444737413101040
);
end;
/
prompt  WORKSPACE 9444737413101040
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   10:53 Sunday November 8, 2026
--   Exported By:     LAB
--   Export Type:     Workspace Export
--   Version:         26.1.6
--   Instance ID:     9199931660279867
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_260100
 
begin
    wwv_flow_imp.set_security_group_id(p_security_group_id=>9444737413101040);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace LAB...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 9445013539101041
 ,p_provisioning_company_id => 9444737413101040
 ,p_short_name => 'LAB'
 ,p_display_name => 'LAB'
 ,p_first_schema_provisioned => 'TIPOVACKA'
 ,p_company_schemas => 'TIPOVACKA'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_data_reporter_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'LAB'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'TIPOVACKA'
 ,p_files_version => 1
 ,p_is_extension_yn => 'N'
 ,p_env_banner_yn => 'N'
 ,p_env_banner_pos => 'LEFT'
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1405898031030452,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1405745204030452,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1405683304030451,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '9444905847101040',
  p_user_name                    => 'LAB',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => '',
  p_web_password                 => 'EA09ABD85FACF8F9789FADE5EE9F8A31957B902930FFAACDD7D2ABDD28C64400900D8993FD0806120DDD068E308B06A676295E2D301733A71BF6ECAFA6B7A86B',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL:DR_ADMIN',
  p_default_schema               => 'TIPOVACKA',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202605251824','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_data_reporter_yn       => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
---------------------------
-- D G  B L U E P R I N T S
-- Creating Data Generator Blueprints...
----------------
--Click Count Logs
--
----------------
--mail
--
----------------
--mail log
--
----------------
--app models
--
----------------
--password history
--
begin
  wwv_imp_workspace.create_password_history (
    p_id => 9445219638101052,
    p_user_id => 9444905847101040,
    p_password => 'EA09ABD85FACF8F9789FADE5EE9F8A31957B902930FFAACDD7D2ABDD28C64400900D8993FD0806120DDD068E308B06A676295E2D301733A71BF6ECAFA6B7A86B');
end;
/
----------------
--preferences
--
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14234192819293968,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4485T3',
    p_attribute_value => '666074525535755551.4485',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14234212682293969,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4486T3',
    p_attribute_value => '666074525535755551.4486',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14234315521293970,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4487T3',
    p_attribute_value => '666074525535755551.4487',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14234461078293970,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4488T3',
    p_attribute_value => '666074525535755551.4488',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14234507493293970,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4489T3',
    p_attribute_value => '666074525535755551.4489',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14234678957293971,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4491T3',
    p_attribute_value => '666074525535755551.4491',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14234785586293971,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4492T3',
    p_attribute_value => '666074525535755551.4492',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14234868702293971,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4493T3',
    p_attribute_value => '666074525535755551.4493',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14234942327293971,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4494T3',
    p_attribute_value => '666074525535755551.4494',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14235068245293972,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4495T3',
    p_attribute_value => '666074525535755551.4495',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14235136898293972,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4496T3',
    p_attribute_value => '666074525535755551.4496',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14235294143293972,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4497T3',
    p_attribute_value => '666074525535755551.4497',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14235325258293973,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4498T3',
    p_attribute_value => '666074525535755551.4498',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14235425029293973,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4499T3',
    p_attribute_value => '666074525535755551.4499',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14235533222293973,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4541T3',
    p_attribute_value => '666074525535755551.4541',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14235615192293974,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4542T3',
    p_attribute_value => '666074525535755551.4542',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14235743851293974,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4543T3',
    p_attribute_value => '666074525535755551.4543',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14235896566293974,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4544T3',
    p_attribute_value => '666074525535755551.4544',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14235992136293975,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4545T3',
    p_attribute_value => '666074525535755551.4545',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14236080654293975,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4546T3',
    p_attribute_value => '666074525535755551.4546',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14236174528293975,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4473T3',
    p_attribute_value => '666074525535755551.4473',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14236240463293975,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4003T3',
    p_attribute_value => '556394191660089195.4003',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14236381583293976,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4023T101',
    p_attribute_value => '556395924287093657.4023',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14236462991293976,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4053T3',
    p_attribute_value => '556396783772095832.4053',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14236553393293976,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4103T3',
    p_attribute_value => '558983737888014296.4103',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14236654863293979,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4021T101',
    p_attribute_value => '556395924287093657.4021',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14236772502293980,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4051T3',
    p_attribute_value => '556396783772095832.4051',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14236859570293980,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4359T3',
    p_attribute_value => '556398380302103261.4359',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14236950574293980,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4509T3',
    p_attribute_value => '556399735490108657.4509',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14237011432293981,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4547T3',
    p_attribute_value => '666074525535755551.4547',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14237105679293981,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4481T3',
    p_attribute_value => '666074525535755551.4481',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14237299868293981,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4482T3',
    p_attribute_value => '666074525535755551.4482',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14237396410293982,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4483T3',
    p_attribute_value => '666074525535755551.4483',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14237475800293982,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4484T3',
    p_attribute_value => '666074525535755551.4484',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14237545470293982,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4303T3',
    p_attribute_value => '556398088115101278.4303',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14237640473293982,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4323T3',
    p_attribute_value => '560457475065358618.4323',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14237775624293983,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4353T3',
    p_attribute_value => '556398380302103261.4353',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14237877585293983,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4503T3',
    p_attribute_value => '556399735490108657.4503',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14237903215293983,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4553T3',
    p_attribute_value => '556400768767112539.4553',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14238043022293984,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4603T101',
    p_attribute_value => '556401045591113938.4603',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14238147940293984,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4653T3',
    p_attribute_value => '556401916469117281.4653',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14238271840293984,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4703T3',
    p_attribute_value => '556402214051120170.4703',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14238313257293984,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4753T3',
    p_attribute_value => '556403147888123468.4753',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14238400396293985,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4853T3',
    p_attribute_value => '556403468587125379.4853',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14238546202293985,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4471T3',
    p_attribute_value => '666074525535755551.4471',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14238687833293985,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4001T3',
    p_attribute_value => '556394191660089195.4001',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14238742844293986,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4604T101',
    p_attribute_value => '556401045591113938.4604',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14238806546293986,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4654T3',
    p_attribute_value => '556401916469117281.4654',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14238997962293986,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4704T3',
    p_attribute_value => '556402214051120170.4704',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14239074437293987,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4754T3',
    p_attribute_value => '556403147888123468.4754',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14239119613293987,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4854T3',
    p_attribute_value => '556403468587125379.4854',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14239243353293987,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4479T3',
    p_attribute_value => '666074525535755551.4479',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14239352486293987,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4009T3',
    p_attribute_value => '556394191660089195.4009',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14239475745293988,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4029T101',
    p_attribute_value => '556395924287093657.4029',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14239524760293988,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4059T3',
    p_attribute_value => '556396783772095832.4059',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14239641058293988,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4109T3',
    p_attribute_value => '558983737888014296.4109',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14239784816293989,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4309T3',
    p_attribute_value => '556398088115101278.4309',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14239888927293989,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4329T3',
    p_attribute_value => '560457475065358618.4329',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14239929277293989,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4101T3',
    p_attribute_value => '558983737888014296.4101',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14240096448293989,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4301T3',
    p_attribute_value => '556398088115101278.4301',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14240155197293990,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4321T3',
    p_attribute_value => '560457475065358618.4321',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14240284692293990,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4351T3',
    p_attribute_value => '556398380302103261.4351',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14240322164293990,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4501T3',
    p_attribute_value => '556399735490108657.4501',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14240445559293991,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4551T3',
    p_attribute_value => '556400768767112539.4551',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14240572408293991,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4601T101',
    p_attribute_value => '556401045591113938.4601',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14240687439293991,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4651T3',
    p_attribute_value => '556401916469117281.4651',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14240736745293991,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4701T3',
    p_attribute_value => '556402214051120170.4701',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14240813477293992,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4751T3',
    p_attribute_value => '556403147888123468.4751',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14240977136293992,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4851T3',
    p_attribute_value => '556403468587125379.4851',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14241021152293992,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4472T3',
    p_attribute_value => '666074525535755551.4472',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14241165316293993,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4002T3',
    p_attribute_value => '556394191660089195.4002',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14241271663293993,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4022T101',
    p_attribute_value => '556395924287093657.4022',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14241369798293993,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4052T3',
    p_attribute_value => '556396783772095832.4052',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14241447583293994,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4102T3',
    p_attribute_value => '558983737888014296.4102',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14241502957293994,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4302T3',
    p_attribute_value => '556398088115101278.4302',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14241699850293995,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4322T3',
    p_attribute_value => '560457475065358618.4322',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14241777859293995,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4352T3',
    p_attribute_value => '556398380302103261.4352',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14241825702293995,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4502T3',
    p_attribute_value => '556399735490108657.4502',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14241928610293996,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4552T3',
    p_attribute_value => '556400768767112539.4552',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14242009946293996,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4602T101',
    p_attribute_value => '556401045591113938.4602',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14242108160293996,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4652T3',
    p_attribute_value => '556401916469117281.4652',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14242252514293996,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4702T3',
    p_attribute_value => '556402214051120170.4702',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14242318800293997,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4752T3',
    p_attribute_value => '556403147888123468.4752',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14242426088293997,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4852T3',
    p_attribute_value => '556403468587125379.4852',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14242568296293997,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4474T3',
    p_attribute_value => '666074525535755551.4474',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14242646904293998,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4004T3',
    p_attribute_value => '556394191660089195.4004',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14242705304293998,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4024T101',
    p_attribute_value => '556395924287093657.4024',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14242809065293998,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4054T3',
    p_attribute_value => '556396783772095832.4054',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14242913449293999,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4104T3',
    p_attribute_value => '558983737888014296.4104',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14243099863293999,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4304T3',
    p_attribute_value => '556398088115101278.4304',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14243130370293999,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4324T3',
    p_attribute_value => '560457475065358618.4324',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14243245411294000,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4354T3',
    p_attribute_value => '556398380302103261.4354',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14243361843294000,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4504T3',
    p_attribute_value => '556399735490108657.4504',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14243414018294000,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4554T3',
    p_attribute_value => '556400768767112539.4554',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14243526871294001,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4476T3',
    p_attribute_value => '666074525535755551.4476',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14243631045294001,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4006T3',
    p_attribute_value => '556394191660089195.4006',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14243722197294001,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4026T101',
    p_attribute_value => '556395924287093657.4026',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14243801242294002,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4056T3',
    p_attribute_value => '556396783772095832.4056',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14243936485294002,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4106T3',
    p_attribute_value => '558983737888014296.4106',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14244048238294002,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4306T3',
    p_attribute_value => '556398088115101278.4306',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14244103441294003,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4326T3',
    p_attribute_value => '560457475065358618.4326',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14244282291294003,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4356T3',
    p_attribute_value => '556398380302103261.4356',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14244353934294003,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4506T3',
    p_attribute_value => '556399735490108657.4506',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14244449607294003,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4556T3',
    p_attribute_value => '556400768767112539.4556',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14244550695294004,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4606T101',
    p_attribute_value => '556401045591113938.4606',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14244627705294004,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4656T3',
    p_attribute_value => '556401916469117281.4656',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14244766939294004,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4706T3',
    p_attribute_value => '556402214051120170.4706',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14244825806294005,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4756T3',
    p_attribute_value => '556403147888123468.4756',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14244946441294005,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4856T3',
    p_attribute_value => '556403468587125379.4856',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14245032555294005,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4477T3',
    p_attribute_value => '666074525535755551.4477',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14245123726294006,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4007T3',
    p_attribute_value => '556394191660089195.4007',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14245244293294006,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4027T101',
    p_attribute_value => '556395924287093657.4027',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14245361766294006,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4057T3',
    p_attribute_value => '556396783772095832.4057',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14245451540294006,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4107T3',
    p_attribute_value => '558983737888014296.4107',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14245540729294007,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4307T3',
    p_attribute_value => '556398088115101278.4307',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14245642077294007,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4327T3',
    p_attribute_value => '560457475065358618.4327',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14245754834294007,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4357T3',
    p_attribute_value => '556398380302103261.4357',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14245830624294008,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4507T3',
    p_attribute_value => '556399735490108657.4507',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14245904091294008,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4557T3',
    p_attribute_value => '556400768767112539.4557',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14246057923294008,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4607T101',
    p_attribute_value => '556401045591113938.4607',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14246112368294008,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4657T3',
    p_attribute_value => '556401916469117281.4657',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14246249491294009,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4707T3',
    p_attribute_value => '556402214051120170.4707',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14246352464294009,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4757T3',
    p_attribute_value => '556403147888123468.4757',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14246403961294009,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4857T3',
    p_attribute_value => '556403468587125379.4857',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14246546143294010,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4559T3',
    p_attribute_value => '556400768767112539.4559',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14246623787294010,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4609T101',
    p_attribute_value => '556401045591113938.4609',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14246772006294010,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4659T3',
    p_attribute_value => '556401916469117281.4659',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14246835253294011,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4709T3',
    p_attribute_value => '556402214051120170.4709',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14246948286294011,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4759T3',
    p_attribute_value => '556403147888123468.4759',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14247043125294011,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4859T3',
    p_attribute_value => '556403468587125379.4859',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14247190971294011,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4478T3',
    p_attribute_value => '666074525535755551.4478',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14247204536294012,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4008T3',
    p_attribute_value => '556394191660089195.4008',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14247374233294012,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4028T101',
    p_attribute_value => '556395924287093657.4028',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14247455069294012,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4058T3',
    p_attribute_value => '556396783772095832.4058',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14247565613294013,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4108T3',
    p_attribute_value => '558983737888014296.4108',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14247676462294013,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4308T3',
    p_attribute_value => '556398088115101278.4308',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14247700904294013,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4328T3',
    p_attribute_value => '560457475065358618.4328',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14247878166294014,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4358T3',
    p_attribute_value => '556398380302103261.4358',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14247981453294014,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4508T3',
    p_attribute_value => '556399735490108657.4508',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14248063236294014,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4558T3',
    p_attribute_value => '556400768767112539.4558',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14248136073294014,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4608T101',
    p_attribute_value => '556401045591113938.4608',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14248230130294015,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4658T3',
    p_attribute_value => '556401916469117281.4658',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14248338799294015,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4708T3',
    p_attribute_value => '556402214051120170.4708',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14248483697294015,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4758T3',
    p_attribute_value => '556403147888123468.4758',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14248595153294016,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4858T3',
    p_attribute_value => '556403468587125379.4858',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14248605663294016,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4475T3',
    p_attribute_value => '666074525535755551.4475',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14248761775294016,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4005T3',
    p_attribute_value => '556394191660089195.4005',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14248845722294016,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4025T101',
    p_attribute_value => '556395924287093657.4025',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14248986651294017,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4055T3',
    p_attribute_value => '556396783772095832.4055',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14249096618294017,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4105T3',
    p_attribute_value => '558983737888014296.4105',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14249168778294017,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4305T3',
    p_attribute_value => '556398088115101278.4305',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14249290277294018,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4325T3',
    p_attribute_value => '560457475065358618.4325',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14249313935294018,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4355T3',
    p_attribute_value => '556398380302103261.4355',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14249475139294018,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4505T3',
    p_attribute_value => '556399735490108657.4505',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14249557882294018,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4555T3',
    p_attribute_value => '556400768767112539.4555',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14249609561294019,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4605T101',
    p_attribute_value => '556401045591113938.4605',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14249706581294019,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4655T3',
    p_attribute_value => '556401916469117281.4655',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14249851075294019,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4705T3',
    p_attribute_value => '556402214051120170.4705',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14249937276294020,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4755T3',
    p_attribute_value => '556403147888123468.4755',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 14250002653294020,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4855T3',
    p_attribute_value => '556403468587125379.4855',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 17638283458261594,
    p_user_id => 'LAB',
    p_preference_name => 'EXPORT_TYPE',
    p_attribute_value => 'APEXLANG',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 17638397714261595,
    p_user_id => 'LAB',
    p_preference_name => 'EXPORT_MODE',
    p_attribute_value => 'MIG',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 1630000823793262,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4000T3',
    p_attribute_value => '556394191660089195',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 1630192070793264,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4020T101',
    p_attribute_value => '556395924287093657',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 1630295286793264,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4050T3',
    p_attribute_value => '556396783772095832',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 1630399303793265,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4100T3',
    p_attribute_value => '558983737888014296',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 1630433218793265,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4300T3',
    p_attribute_value => '556398088115101278',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 1630552121793266,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4320T3',
    p_attribute_value => '560457475065358618',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 1630608704793266,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4350T3',
    p_attribute_value => '556398380302103261',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 1630717018793266,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4470T3',
    p_attribute_value => '666074525535755551',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 1630843683793267,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4500T3',
    p_attribute_value => '556399735490108657',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 1630925224793267,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4550T3',
    p_attribute_value => '556400768767112539',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 1631059192793267,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4600T101',
    p_attribute_value => '556401045591113938',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 1631156763793268,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4650T3',
    p_attribute_value => '556401916469117281',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 1631286464793268,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4700T3',
    p_attribute_value => '556402214051120170',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 1631324273793269,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4750T3',
    p_attribute_value => '556403147888123468',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 1631491266793269,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_THEME_STYLE_A4850T3',
    p_attribute_value => '556403468587125379',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11420622662378231,
    p_user_id => 'LAB',
    p_preference_name => 'CODE_LANGUAGE',
    p_attribute_value => 'PLSQL',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 13070590859402427,
    p_user_id => 'LAB',
    p_preference_name => 'PERSISTENT_ITEM_P34_ROWS',
    p_attribute_value => '',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 13070656966402439,
    p_user_id => 'LAB',
    p_preference_name => 'FSP4000_P34_R77549119545304597_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 13072662048425833,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4000_P19_W451745617575288584',
    p_attribute_value => '451746507039288843____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11420565473372177,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4000_P4101_W47836204953827708',
    p_attribute_value => '47837809399835130____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11979520471604399,
    p_user_id => 'LAB',
    p_preference_name => 'PD_PE_CODE_EDITOR_DLG_H',
    p_attribute_value => '569',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12261451594168280,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4000_P4400_W27796519609844319',
    p_attribute_value => '27798220762844327____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 13073387232426820,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4000_P431_W478896025956673213',
    p_attribute_value => '478896612991674411____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11419515935363613,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4000_P4100_W3727618522871356',
    p_attribute_value => '3728530690872449____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11906289687033233,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'FSP_IR_200_P9_W11880697562689724',
    p_attribute_value => '11905749227033207____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11910130987093699,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'FSP200_P99_R11882027472689738_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11919394686112542,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'FSP200_P99_R11882555351689743_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11930366177468462,
    p_user_id => 'gregorovic.stefan@gmail.com',
    p_preference_name => 'APEX_IG_9444409752953649_CURRENT_REPORT',
    p_attribute_value => '11673393495220681:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12155347791053757,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'FSP_IR_200_P11_W12117397718021929',
    p_attribute_value => '12154868201053737____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12385438800262799,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'APEX_THEME_STYLE_A200T42',
    p_attribute_value => '2721322117358710262',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12388118458116906,
    p_user_id => 'llavrincikova@gmail.com',
    p_preference_name => 'FSP200_P4_R12327992719323408_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 13072285288422239,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4000_P516_W478906809191866600',
    p_attribute_value => '478908119205874812____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 13073558197427006,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4000_P514_W478900029710775865',
    p_attribute_value => '478900807852776971____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 13073713917427616,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4000_P527_W478911116494917969',
    p_attribute_value => '478911808086918993____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 13822008180256937,
    p_user_id => 'vackova.anna@gmail.com',
    p_preference_name => 'APEX_IG_12281959228874629_CURRENT_REPORT',
    p_attribute_value => '12300305505337509:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11923922771396751,
    p_user_id => 'vackova.anna@gmail.com',
    p_preference_name => 'FSP_IR_200_P9_W11880697562689724',
    p_attribute_value => '11905749227033207____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9619515435251166,
    p_user_id => 'LAB',
    p_preference_name => 'FSP4000_P1621_R117792038112505908_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9619691544251168,
    p_user_id => 'LAB',
    p_preference_name => 'FSP4000_P1621_R117792568458505913_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11658155807295390,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'FSP200_P1_R9442510500953630_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11928003380442558,
    p_user_id => 'spamrasto@gmail.com',
    p_preference_name => 'FSP_IR_200_P9_W11880697562689724',
    p_attribute_value => '11905749227033207____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11936617592916245,
    p_user_id => 'kubinova.simona@gmail.com',
    p_preference_name => 'FSP_IR_200_P9_W11880697562689724',
    p_attribute_value => '11905749227033207____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11996241701590705,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'FSP200_P11_R11912528486111024_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12000435769593320,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'FSP_IR_200_P11_W11912818481111027',
    p_attribute_value => '11999922752593313____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12006667609597777,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'FSP_IR_200_P11_W11913264511111031',
    p_attribute_value => '12006142603597770____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12394096382340145,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4350_P25_W9307709001462905',
    p_attribute_value => '9309908769463151____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12394471245340224,
    p_user_id => 'LAB',
    p_preference_name => 'PERSISTENT_ITEM_P25_DATE',
    p_attribute_value => '.125',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12822074583026451,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4000_P4207_W47814307723191364',
    p_attribute_value => '47815210532192150____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 13068397036300627,
    p_user_id => 'LAB',
    p_preference_name => 'ADVISOR_CHECKS',
    p_attribute_value => 'SUBSTITUTION_SYNTAX:COLUMN_SYNTAX:BIND_VARIABLE_SYNTAX:APPL_PAGE_ITEM_REF:PAGE_NUMBER_EXISTS:VALID_SQL_PLSQL_CODE:DML_PROCESSES:BRANCH_SEQUENCE:WHEN_BUTTON_PRESSED:BUTTON_DA_COMPATIBLE:SQL_INJECTION:INSECURE_APPLICATION_DEFAULTS:AUTHORIZATION:SESSION_STATE_PROTECTION:BROWSER_SECURITY:IS_ITEM_OF_TARGET_PAGE:PAGE_ITEM_REF_AS_STRING:CLEAR_CACHE_PAGE_NUMBER:ITEM_NAME_LENGTH:BUTTON_DA_INCONSISTENT_REFS:AJAX_ITEMS_WITH_SSP:LEGACY_ORPHAN_COMPONENTS:V_FUNCTION_IN_SQL:UI_INCLUDES_COMPATIBILITY_JS:HARDCODED_APPLICATION_ID:REPORT_DEFAULT_ORDER:HAS_HELP_TEXT:DEPRECATED_ATTRIBUTES:VALIDATION_ASSOCIATED_ITEM:THEME_STYLE_IS_ACCESSIBLE:HAS_PAGE_TITLE:REGION_HAS_ROW_HEADER:ITEM_HAS_LABEL:ITEMS_NO_CONTEXT_CHANGE:IMAGE_ITEM_HAS_ALT',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 18218615384870227,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_IG_359175352067742002_CURRENT_REPORT',
    p_attribute_value => '359189423622765512:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9657418830818736,
    p_user_id => 'LAB',
    p_preference_name => 'FSP4000_P197_R935666971301945228_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11867301975372713,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'FSP200_P60_R11670402428206528_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11937356577081628,
    p_user_id => 'llavrincikova@gmail.com',
    p_preference_name => 'APEX_IG_9444409752953649_CURRENT_REPORT',
    p_attribute_value => '11673393495220681:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12350966404288606,
    p_user_id => 'llavrincikova@gmail.com',
    p_preference_name => 'APEX_IG_12281959228874629_CURRENT_REPORT',
    p_attribute_value => '12300305505337509:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12384955739253229,
    p_user_id => 'LAB',
    p_preference_name => 'FSP4000_P109_R632164936929856023_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12516727935497456,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'FSP200_P7_R12366373797235630_SORT',
    p_attribute_value => 'sort_1_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12384833000251449,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4000_P714_W200451301656287640',
    p_attribute_value => '200452123851291895____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9687707688792254,
    p_user_id => 'LAB',
    p_preference_name => 'FSP4000_P365_R166963705763992521_SORT',
    p_attribute_value => 'sort_3_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9687362223791212,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4000_P546_W30205316146531602',
    p_attribute_value => '30206031208532453____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9687681566792246,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4000_P365_W30202319058481190',
    p_attribute_value => '30203321895482437____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11819837007015330,
    p_user_id => 'LAB',
    p_preference_name => 'F4000_1157687726908338238_SPLITTER_STATE',
    p_attribute_value => '165:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11927342899436649,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'FSP_IR_200_P99_W11911100258111010',
    p_attribute_value => '11926864094436637____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12113011334987008,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'FSP_IR_200_P11_W12081232328982648',
    p_attribute_value => '12112595874987002____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12434722219635297,
    p_user_id => 'gregorovic.stefan@gmail.com',
    p_preference_name => 'APEX_IG_12281959228874629_CURRENT_REPORT',
    p_attribute_value => '12300305505337509:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12496198825356392,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'FSP200_P6_R12364836101235615_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12655793715349877,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'APEX_IG_24931265064223268_CURRENT_REPORT',
    p_attribute_value => '24949611340686148:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12841066165017092,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4350_P29_W9294827650405715',
    p_attribute_value => '9296821143409975____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12892088571135029,
    p_user_id => 'kubinova.simona@gmail.com',
    p_preference_name => 'FSP_IR_200_P2_W12582693465826826',
    p_attribute_value => '12851013136235569____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 13036561095199885,
    p_user_id => 'kubinova.simona@gmail.com',
    p_preference_name => 'APEX_IG_12281959228874629_CURRENT_REPORT',
    p_attribute_value => '12300305505337509:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 18218106779839098,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4850_P110_W345304742814156446',
    p_attribute_value => '349792885320463043____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9495996674699993,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4000_P801_W47918412797645641',
    p_attribute_value => '47921608032702994____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9619244060208413,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4000_P1620_W312277037396040233',
    p_attribute_value => '312279461465115193____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9688184468792841,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4000_P405_W3852329031687921',
    p_attribute_value => '3853503855690337____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11922351138272164,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'FSP200_P99_R11910624896111005_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12012894949757771,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'FSP_IR_200_P11_W11913613480111035',
    p_attribute_value => '12012338610757763____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12851535413235613,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'FSP_IR_200_P2_W12582693465826826',
    p_attribute_value => '12851013136235569____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12892601249237846,
    p_user_id => 'spamrasto@gmail.com',
    p_preference_name => 'FSP_IR_200_P2_W12582693465826826',
    p_attribute_value => '12851013136235569____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12946711541415461,
    p_user_id => 'llavrincikova@gmail.com',
    p_preference_name => 'FSP_IR_200_P2_W12582693465826826',
    p_attribute_value => '12851013136235569____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12957471924273502,
    p_user_id => 'vackova.anna@gmail.com',
    p_preference_name => 'FSP_IR_200_P2_W12582693465826826',
    p_attribute_value => '12851013136235569____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 13072450677422382,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4000_P273_W48571614952501952',
    p_attribute_value => '48572307979502610____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11680158598220932,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'APEX_IG_9444409752953649_CURRENT_REPORT',
    p_attribute_value => '11673393495220681:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11865519866371410,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'FSP_IR_200_P60_W11670500801206529',
    p_attribute_value => '11865078384371358____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11927861514439763,
    p_user_id => 'spamrasto@gmail.com',
    p_preference_name => 'APEX_IG_9444409752953649_CURRENT_REPORT',
    p_attribute_value => '11673393495220681:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12928273860790096,
    p_user_id => 'gregorovic.stefan@gmail.com',
    p_preference_name => 'FSP_IR_200_P2_W12582693465826826',
    p_attribute_value => '12851013136235569____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 18218330514843005,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4850_P120_W349780070697459222',
    p_attribute_value => '349830769421520089____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 18218577978857326,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4850_P130_W708529861800941074',
    p_attribute_value => '708580560525001941____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9689416458033261,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4000_P971_W9832206744401027',
    p_attribute_value => '15125345793568912____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11994860441507355,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'FSP_IR_200_P11_W11911976921111018',
    p_attribute_value => '11994319813507340____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12321748165252785,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4350_P26_W9290710598383521',
    p_attribute_value => '9292829407383980____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12322105251252853,
    p_user_id => 'LAB',
    p_preference_name => 'PERSISTENT_ITEM_P26_SINCE',
    p_attribute_value => '.125',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9618578387065188,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11930689001485874,
    p_user_id => 'gregorovic.stefan@gmail.com',
    p_preference_name => 'FSP_IR_200_P9_W11880697562689724',
    p_attribute_value => '11905749227033207____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12003471923596039,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'APEX_IG_11912528486111024_CURRENT_REPORT',
    p_attribute_value => '12001460003595899:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9474654453659977,
    p_user_id => 'LAB',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9648772399643975,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4000_P4070_W47949429235486335',
    p_attribute_value => '47951124794493113____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9474922009660023,
    p_user_id => 'LAB',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '200',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9495883648699397,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9655480054798453,
    p_user_id => 'LAB',
    p_preference_name => 'PD_GAL_CUR_TAB',
    p_attribute_value => '0',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9687481111791894,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_IG_24600496863590512_CURRENT_REPORT',
    p_attribute_value => '24606193527613504:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9687952460792432,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4000_P369_W193060302178222275',
    p_attribute_value => '193061127085222281____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11653164542237100,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_IG_21546336307856480_CURRENT_REPORT',
    p_attribute_value => '21982973742995313:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11854373404025094,
    p_user_id => 'kubinova.simona@gmail.com',
    p_preference_name => 'APEX_IG_9444409752953649_CURRENT_REPORT',
    p_attribute_value => '11673393495220681:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11890502428779995,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'FSP_IR_200_P9_W11879229381689710',
    p_attribute_value => '11890023580779978____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12307912409340945,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'APEX_IG_12281959228874629_CURRENT_REPORT',
    p_attribute_value => '12300305505337509:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12384037306239374,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'FSP200_P4_R12327992719323408_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12387154174505417,
    p_user_id => 'vackova.anna@gmail.com',
    p_preference_name => 'FSP200_P4_R12327992719323408_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12638085042000102,
    p_user_id => 'LAB',
    p_preference_name => 'PD_PE_CODE_EDITOR_DLG_W',
    p_attribute_value => '1066',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9690810947486456,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4000_P4050_W29606701090180824',
    p_attribute_value => '1839984519963049____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11876317797593069,
    p_user_id => 'vackova.anna@gmail.com',
    p_preference_name => 'APEX_IG_9444409752953649_CURRENT_REPORT',
    p_attribute_value => '11673393495220681:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11937222266080160,
    p_user_id => 'llavrincikova@gmail.com',
    p_preference_name => 'FSP_IR_200_P9_W11880697562689724',
    p_attribute_value => '11905749227033207____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12018182514890949,
    p_user_id => 'miroslav.cech@gmail.com',
    p_preference_name => 'FSP_IR_200_P11_W11914139715111040',
    p_attribute_value => '12017652635890941____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12231866015486330,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_IG_20915676136405505_CURRENT_REPORT',
    p_attribute_value => '21352313571544338:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12231980344486374,
    p_user_id => 'LAB',
    p_preference_name => 'APEX_IG_266470409881026219_CURRENT_REPORT',
    p_attribute_value => '6462635633527704:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12386680481453416,
    p_user_id => 'gregorovic.stefan@gmail.com',
    p_preference_name => 'FSP200_P4_R12327992719323408_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12434164229808473,
    p_user_id => 'spamrasto@gmail.com',
    p_preference_name => 'APEX_IG_12281959228874629_CURRENT_REPORT',
    p_attribute_value => '12300305505337509:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12991696240533169,
    p_user_id => 'LAB',
    p_preference_name => 'FSP_IR_4500_P1004_W467833818073240350',
    p_attribute_value => '467836414517307027____',
    p_tenant_id => '');
end;
/
----------------
--query builder
--
----------------
--sql scripts
--
----------------
--sql commands
--
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12982393137335122
 ,p_command => 
'BEGIN'||wwv_flow.LF||
'    -- 28.06.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-06-28 21:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1256; -- Južná Afrika - Kanada'||wwv_flow.LF||
'    '||wwv_flow.LF||
'    -- 29.06.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-06-29 21:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1257; -- Brazília - Japonsko'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-06-29 23:55'', ''YYYY-MM-DD HH24:'||
'MI'') WHERE id = 1258; -- Nemecko - Paraguaj'||wwv_flow.LF||
'    '||wwv_flow.LF||
'    -- 30.06.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-06-30 20:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1259; -- Holandsko - Maroko'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-06-30 21:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1260; -- Pobrežie Slonoviny - Nórsko'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-06-30 '||
'23:55'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1261; -- Francúzsko - Švédsko'||wwv_flow.LF||
'    '||wwv_flow.LF||
'    -- 01.07.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-01 21:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1262; -- Mexiko - Ekvádor'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-01 22:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1263; -- Anglicko - Konžská DR'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = T'||
'O_DATE(''2026-07-01 23:55'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1264; -- Belgicko - Senegal'||wwv_flow.LF||
'    '||wwv_flow.LF||
'    -- 02.07.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-02 20:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1265; -- USA - Bosna a Hercegovina'||wwv_flow.LF||
''||wwv_flow.LF||
'    COMMIT;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281237','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12976552335992411
 ,p_command => 
'SELECT COUNT(*) FROM GAME WHERE TOURNAMENT_ID = 21 AND ROUND_NUMBER = 2 ;'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280853','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12982166704284853
 ,p_command => 
'select * from v_game where tournament_id = 21 and round_number = 2 ;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281229','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9618799713095124
 ,p_command => 
'declare'||wwv_flow.LF||
'    l_callback  varchar2(4000) ;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    l_callback apex_authentication.get_callback_url;'||wwv_flow.LF||
'    dbms_output.put_line(l_callback)'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202605280729','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9618841952097916
 ,p_command => 
'declare'||wwv_flow.LF||
'    l_callback varchar2(4000) ;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    l_callback apex_authentication.get_callback_url;'||wwv_flow.LF||
'    dbms_output.put_line(l_callback);'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202605280730','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12984925391574304
 ,p_command => 
'select count(*) from game where tournament_id = 21 and round_number = 2 ;'||wwv_flow.LF||
''
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281317','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12985303298580130
 ,p_command => 
'select id, home_team, away_team, to_char(game_date, ''dd.mm.yyyy hh24:mi'') from v_game where tournament_id = 21 and round_number = 2 ;'||wwv_flow.LF||
''||wwv_flow.LF||
'select * from game where tournament_id = 21 and round_number = 2 ;'||wwv_flow.LF||
'select count(*) from game where tournament_id = 21 and round_number = 2 ;'||wwv_flow.LF||
''||wwv_flow.LF||
'delete from game where tournament_id = 21 and round_number = 2 ; commit ;'||wwv_flow.LF||
''||wwv_flow.LF||
'select * from team where tournament_id = 21 ;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||
'BEGIN'||wwv_flow.LF||
'    -- 30.06.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-06-30 03:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1259; -- Holandsko - Maroko'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- 01.07.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-01 03:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1262; -- Mexiko - Ekvádor'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- 03.07.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-03 05:00'', ''YYYY-MM'||
'-DD HH24:MI'') WHERE id = 1268; -- Švajčiarsko - Alžírsko'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-03 20:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1269; -- Austrália - Egypt'||wwv_flow.LF||
'    -- Predpokladám ID pre zostávajúce zápasy (skontroluj si ID v DB, ak nesedia)'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-03 03:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1271; -- Kolumbia - Ghana'||wwv_flow.LF||
''||wwv_flow.LF||
' '||
'   -- 04.07.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-04 00:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1270; -- Argentína - Kapverdy'||wwv_flow.LF||
''||wwv_flow.LF||
'    COMMIT;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'SELECT g.id, ht.name AS home_team, at.name AS away_team, g.game_date'||wwv_flow.LF||
'FROM game g'||wwv_flow.LF||
'JOIN team ht ON ht.id = g.home_team_id'||wwv_flow.LF||
'JOIN team at ON at.id = g.away_team_id'||wwv_flow.LF||
'WHERE ht.name IN (''Holandsko'',''Mexiko'',''Švajčiarsko'',''Austrália'',''Ar'||
'gentína'',''Kolumbia'')'||wwv_flow.LF||
'ORDER BY g.game_date;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
''||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''30.06.2026 03:00'', ''DD.MM.YYYY HH24:MI'') WHERE id = 1259;'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''01.07.2026 03:00'', ''DD.MM.YYYY HH24:MI'') WHERE id = 1262;'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''03.07.2026 05:00'', ''DD.MM.YYYY HH24:MI'') WHERE id = 1266;'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''03.07.2026 20:00'', ''DD.MM.Y'||
'YYY HH24:MI'') WHERE id = 1267;'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''04.07.2026 00:00'', ''DD.MM.YYYY HH24:MI'') WHERE id = 1268;'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''04.07.2026 03:00'', ''DD.MM.YYYY HH24:MI'') WHERE id = 1269;'||wwv_flow.LF||
''||wwv_flow.LF||
'COMMIT;'||wwv_flow.LF||
''||wwv_flow.LF||
'COMMIT;'||wwv_flow.LF||
''||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281318','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12980509435070948
 ,p_command => 
'SELECT F_BET_PIVOT(''21'', ''21'') FROM DUAL ;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280906','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12984407101549728
 ,p_command => 
'UPDATE game SET game_date = TO_DATE(''30.06.2026 03:00'', ''DD.MM.YYYY HH24:MI'') WHERE home_team_id = (SELECT id FROM team WHERE name = ''Holandsko'');'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''01.07.2026 03:00'', ''DD.MM.YYYY HH24:MI'') WHERE home_team_id = (SELECT id FROM team WHERE name = ''Mexiko'');'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''03.07.2026 05:00'', ''DD.MM.YYYY HH24:MI'') WHERE home_team_id = (SELECT id'||
' FROM team WHERE name = ''Švajčiarsko'');'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''03.07.2026 20:00'', ''DD.MM.YYYY HH24:MI'') WHERE home_team_id = (SELECT id FROM team WHERE name = ''Austrália'');'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''04.07.2026 00:00'', ''DD.MM.YYYY HH24:MI'') WHERE home_team_id = (SELECT id FROM team WHERE name = ''Argentína'');'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''04.07.2026 03:00'', ''DD.MM.YYY'||
'Y HH24:MI'') WHERE home_team_id = (SELECT id FROM team WHERE name = ''Kolumbia'');'||wwv_flow.LF||
''||wwv_flow.LF||
'COMMIT;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281313','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12993359918537499
 ,p_command => 
'select * from v_game where tournament_id = 21 and round_number = 2'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281844','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12993699159541095
 ,p_command => 
'select * from bet_user ;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281845','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9631911883464938
 ,p_command => 
'CREATE OR REPLACE PROCEDURE p_check_user_allowed AS'||wwv_flow.LF||
'  v_count NUMBER;'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'  SELECT COUNT(*) INTO v_count'||wwv_flow.LF||
'  FROM app_user'||wwv_flow.LF||
'  WHERE LOWER(google_email) = LOWER(:APP_USER)'||wwv_flow.LF||
'    AND is_active = 1;'||wwv_flow.LF||
'  '||wwv_flow.LF||
'  IF v_count = 0 THEN'||wwv_flow.LF||
'    apex_authentication.logout('||wwv_flow.LF||
'      p_this_app => :APP_ID,'||wwv_flow.LF||
'      p_next_app_page_sess => :APP_ID || '':9999'''||wwv_flow.LF||
'    );'||wwv_flow.LF||
'  ELSE'||wwv_flow.LF||
'    UPDATE app_user'||wwv_flow.LF||
'    SET last_seen = CURRENT_DATE'||wwv_flow.LF||
'    W'||
'HERE LOWER(google_email) = LOWER(:APP_USER);'||wwv_flow.LF||
'    COMMIT;'||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
'END;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202605280831','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12974143478910319
 ,p_command => 
'select * from all_objects where owner = ''TIPOVACKA'''
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280840','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12974404854935431
 ,p_command => 
'select * from all_objects where owner = ''TIPOVACKA'' and object_type = ''PROCEDURE'' ;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'SELECT DBMS_METADATA.GET_DDL(''PROCEDURE'', ''P_ADD_GAME'') FROM DUAL ;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280844','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12974888859959997
 ,p_command => 
'select * from all_objects where owner = ''TIPOVACKA'' and object_type = ''PROCEDURE'' ;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'SELECT DBMS_METADATA.GET_DDL(''PROCEDURE'', ''P_ADD_GAME'') FROM DUAL ;'||wwv_flow.LF||
'select dbms_metadata.get_ddl(''PROCEDURE'', ''P_ADD_GAME'') from dual;'||wwv_flow.LF||
'SELECT * FROM TEAM WHERE TOURNAMENT_ID = 21 ;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280848','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12975092684966612
 ,p_command => 
'SELECT * FROM TEAM WHERE TOURNAMENT_ID = 21 AND CODE IN (''COD'', ''CPV'', ''CIV'');'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280849','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12980429658066367
 ,p_command => 
'SELECT DBMS_METADATA.GET_DDL(''FUNCTION'', ''F_BET_PIVOT_HTML'') FROM DUAL ;'||wwv_flow.LF||
''
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280906','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12993587815539400
 ,p_command => 
'select * from app_user ;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281844','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12993758053541797
 ,p_command => 
'select * from bet ;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281845','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9496009742747896
 ,p_command => 
'DECLARE'||wwv_flow.LF||
'    l_callback VARCHAR2(4000);'||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    l_callback := apex_authentication.get_callback_url;'||wwv_flow.LF||
'    dbms_output.put_line(l_callback);'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202605260718','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12973894115906646
 ,p_command => 
'select * from all_objects where object_type = ''FUNCTION'''
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280839','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12981928544283449
 ,p_command => 
'select * from v_game ;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281229','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12984522484550985
 ,p_command => 
'begin'||wwv_flow.LF||
''||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''30.06.2026 03:00'', ''DD.MM.YYYY HH24:MI'') WHERE home_team_id = (SELECT id FROM team WHERE name = ''Holandsko'');'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''01.07.2026 03:00'', ''DD.MM.YYYY HH24:MI'') WHERE home_team_id = (SELECT id FROM team WHERE name = ''Mexiko'');'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''03.07.2026 05:00'', ''DD.MM.YYYY HH24:MI'') WHERE home_team_id = (SE'||
'LECT id FROM team WHERE name = ''Švajčiarsko'');'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''03.07.2026 20:00'', ''DD.MM.YYYY HH24:MI'') WHERE home_team_id = (SELECT id FROM team WHERE name = ''Austrália'');'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''04.07.2026 00:00'', ''DD.MM.YYYY HH24:MI'') WHERE home_team_id = (SELECT id FROM team WHERE name = ''Argentína'');'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''04.07.2026 03:00'', ''DD'||
'.MM.YYYY HH24:MI'') WHERE home_team_id = (SELECT id FROM team WHERE name = ''Kolumbia'');'||wwv_flow.LF||
''||wwv_flow.LF||
'COMMIT;'||wwv_flow.LF||
''||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281313','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12984651145555805
 ,p_command => 
'begin'||wwv_flow.LF||
''||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''30.06.2026 03:00'', ''DD.MM.YYYY HH24:MI'') WHERE id = 1259;'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''01.07.2026 03:00'', ''DD.MM.YYYY HH24:MI'') WHERE id = 1262;'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''03.07.2026 05:00'', ''DD.MM.YYYY HH24:MI'') WHERE id = 1266;'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''03.07.2026 20:00'', ''DD.MM.YYYY HH24:MI'') WHERE id = 1267;'||wwv_flow.LF||
'UPDATE game S'||
'ET game_date = TO_DATE(''04.07.2026 00:00'', ''DD.MM.YYYY HH24:MI'') WHERE id = 1268;'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''04.07.2026 03:00'', ''DD.MM.YYYY HH24:MI'') WHERE id = 1269;'||wwv_flow.LF||
''||wwv_flow.LF||
'COMMIT;'||wwv_flow.LF||
''||wwv_flow.LF||
'COMMIT;'||wwv_flow.LF||
''||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281314','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12985222547578034
 ,p_command => 
'commit ;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281318','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12985402743580315
 ,p_command => 
'select * from team where tournament_id = 21 ;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281318','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11842189528398072
 ,p_command => 
'SELECT TO_CHAR(game_date, ''DD.MM.YYYY HH24:MI:SS'') FROM TIPOVACKA.V_GAME;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606101546','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11842251384398939
 ,p_command => 
'SELECT TO_CHAR(game_date, ''DD.MM HH24:MI'') FROM TIPOVACKA.V_GAME;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606101547','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12973217965858318
 ,p_command => 
'select * from all_objects where object_name = "FUNCTION"'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280544','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12975248598974684
 ,p_command => 
'BEGIN'||wwv_flow.LF||
'    -- Nedeľa, 28. jún 2026'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME('||wwv_flow.LF||
'        p_tournament_id  => 21, -- Nahraď reálnym ID turnaja MS 2026'||wwv_flow.LF||
'        p_home_team_code => ''RSA'', -- Južná Afrika'||wwv_flow.LF||
'        p_away_team_code => ''CAN'', -- Kanada'||wwv_flow.LF||
'        p_game_date      => TO_DATE(''2026-06-28'', ''YYYY-MM-DD''),'||wwv_flow.LF||
'        p_round_number   => 2,'||wwv_flow.LF||
'        p_round_name     => ''1/16-finále'','||wwv_flow.LF||
'        p_round_name_eng => ''Round o'||
'f 32'','||wwv_flow.LF||
'        p_allow_draw     => 0'||wwv_flow.LF||
'    );'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Pondelok, 29. jún 2026'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''BRA'', ''JPN'', TO_DATE(''2026-06-29'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''GER'', ''PAR'', TO_DATE(''2026-06-29'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Utorok, 30. jún 2026'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''NED'', ''MAR'', TO_DATE(''2026-06-30'||
''', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''CIV'', ''NOR'', TO_DATE(''2026-06-30'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''FRA'', ''SWE'', TO_DATE(''2026-06-30'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Streda, 1. júl 2026'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''MEX'', ''ECU'', TO_DATE(''2026-07-01'', ''YYYY-MM-DD''), 2, '||
'''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''ENG'', ''COD'', TO_DATE(''2026-07-01'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''BEL'', ''SEN'', TO_DATE(''2026-07-01'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Štvrtok, 2. júl 2026'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''USA'', ''BIH'', TO_DATE(''2026-07-02'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Roun'||
'd of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''ESP'', ''AUT'', TO_DATE(''2026-07-02'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''SUI'', ''ALG'', TO_DATE(''2026-07-02'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Piatok, 3. júl 2026'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''POR'', ''CRO'', TO_DATE(''2026-07-03'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIP'||
'OVACKA.P_ADD_GAME(21, ''ARG'', ''CPV'', TO_DATE(''2026-07-03'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''COL'', ''GHA'', TO_DATE(''2026-07-03'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''AUS'', ''EGY'', TO_DATE(''2026-07-03'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280850','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12975375145975341
 ,p_command => 
'COMMIT'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280850','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12976752591997111
 ,p_command => 
'DELETE FROM GAME WHERE TOURNAMENT_ID = 21 AND HOME_SCORE IS NULL AND ROUND_NUMBER = 2 ; '
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280854','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12976958606003419
 ,p_command => 
'BEGIN'||wwv_flow.LF||
'    -- Nedeľa, 28. jún 2026'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME('||wwv_flow.LF||
'        p_tournament_id  => 21,'||wwv_flow.LF||
'        p_home_team_code => ''RSA'','||wwv_flow.LF||
'        p_away_team_code => ''CAN'','||wwv_flow.LF||
'        p_game_date      => TO_DATE(''2026-06-28 21:00'', ''YYYY-MM-DD HH24:MI''),'||wwv_flow.LF||
'        p_round_number   => 2,'||wwv_flow.LF||
'        p_round_name     => ''1/16-finále'','||wwv_flow.LF||
'        p_round_name_eng => ''Round of 32'','||wwv_flow.LF||
'        p_allow_draw     => 0'||wwv_flow.LF||
'    );'||wwv_flow.LF||
''||wwv_flow.LF||
'    '||
'-- Pondelok, 29. jún 2026'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''BRA'', ''JPN'', TO_DATE(''2026-06-29 21:00'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''GER'', ''PAR'', TO_DATE(''2026-06-29 23:59'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Utorok, 30. jún 2026'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''NED'', ''MAR'', TO_DATE(''2026-06-30 20:00'', ''YYYY-MM-DD '||
'HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''CIV'', ''NOR'', TO_DATE(''2026-06-30 21:00'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''FRA'', ''SWE'', TO_DATE(''2026-06-30 23:59'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Streda, 1. júl 2026'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''MEX'', ''ECU'', TO_DATE(''2026-07-01'||
' 21:00'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''ENG'', ''COD'', TO_DATE(''2026-07-01 22:00'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''BEL'', ''SEN'', TO_DATE(''2026-07-01 23:59'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Štvrtok, 2. júl 2026'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''USA'', ''BIH'||
''', TO_DATE(''2026-07-02 20:00'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''ESP'', ''AUT'', TO_DATE(''2026-07-02 22:00'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''SUI'', ''ALG'', TO_DATE(''2026-07-02 23:59'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Piatok, 3. júl 2026'||wwv_flow.LF||
'    TIPOVACKA.P_ADD'||
'_GAME(21, ''POR'', ''CRO'', TO_DATE(''2026-07-03 20:00'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''ARG'', ''CPV'', TO_DATE(''2026-07-03 21:00'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''COL'', ''GHA'', TO_DATE(''2026-07-03 22:00'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(2'||
'1, ''AUS'', ''EGY'', TO_DATE(''2026-07-03 23:59'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280855','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12977059555004322
 ,p_command => 
'COMMIT;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280855','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12982239785290492
 ,p_command => 
'select id, home_team, away_team, to_char(game_date, ''dd.mm.yyyy hh24:mi'') from v_game where tournament_id = 21 and round_number = 2 ;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281230','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12984882255571589
 ,p_command => 
'select * from game where tournament_id = 21 and round_number = 2 ;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281317','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11878279642651189
 ,p_command => 
'SELECT F_BET_PIVOT(21, 21) FROM DUAL;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606110909','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12983306652343508
 ,p_command => 
'BEGIN'||wwv_flow.LF||
'    -- 28.06.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-06-28 21:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1256; -- Južná Afrika - Kanada'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- 29.06.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-06-29 19:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1257; -- Brazília - Japonsko'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-06-29 22:30'', ''YYYY-MM-DD HH24:MI'')'||
' WHERE id = 1258; -- Nemecko - Paraguaj'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- 30.06.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-01 03:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1259; -- Holandsko - Maroko (posun na 1.7. kvôli času 03:00)'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-06-30 19:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1260; -- Pobrežie Slonoviny - Nórsko'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_da'||
'te = TO_DATE(''2026-06-30 23:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1261; -- Francúzsko - Švédsko'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- 01.07.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-02 03:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1262; -- Mexiko - Ekvádor (posun na 2.7. kvôli času 03:00)'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-01 18:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1263; -- Anglicko - '||
'Konžská DR'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-01 22:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1264; -- Belgicko - Senegal'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- 02.07.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-03 02:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1265; -- USA - Bosna a Hercegovina (posun na 3.7. kvôli času 02:00)'||wwv_flow.LF||
''||wwv_flow.LF||
'    COMMIT;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281239','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12983999345477470
 ,p_command => 
'UPDATE game SET game_date = TIMESTAMP ''2026-06-30 02:00:00'' WHERE id = 1259; -- Holandsko vs Maroko'||wwv_flow.LF||
'UPDATE game SET game_date = TIMESTAMP ''2026-07-01 02:00:00'' WHERE id = 1262; -- Mexiko vs Ekvádor'||wwv_flow.LF||
''||wwv_flow.LF||
'COMMIT;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281301','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12984152835485054
 ,p_command => 
'begin '||wwv_flow.LF||
''||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''30.06.2026 02:00'', ''DD.MM.YYYY HH24:MI'') WHERE id = 1259;'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''01.07.2026 02:00'', ''DD.MM.YYYY HH24:MI'') WHERE id = 1262;'||wwv_flow.LF||
''||wwv_flow.LF||
'COMMIT;'||wwv_flow.LF||
''||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281302','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12984204922530228
 ,p_command => 
'BEGIN'||wwv_flow.LF||
'    -- 30.06.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-06-30 03:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1259; -- Holandsko - Maroko'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- 01.07.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-01 03:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1262; -- Mexiko - Ekvádor'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- 03.07.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-03 05:00'', ''YYYY-MM'||
'-DD HH24:MI'') WHERE id = 1268; -- Švajčiarsko - Alžírsko'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-03 20:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1269; -- Austrália - Egypt'||wwv_flow.LF||
'    -- Predpokladám ID pre zostávajúce zápasy (skontroluj si ID v DB, ak nesedia)'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-03 03:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1271; -- Kolumbia - Ghana'||wwv_flow.LF||
''||wwv_flow.LF||
' '||
'   -- 04.07.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-04 00:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1270; -- Argentína - Kapverdy'||wwv_flow.LF||
''||wwv_flow.LF||
'    COMMIT;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281310','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9618922616107764
 ,p_command => 
'declare'||wwv_flow.LF||
'    l_callback varchar2(4000) ;'||wwv_flow.LF||
'begin'||wwv_flow.LF||
'    l_callback := apex_authentication.get_callback_url;'||wwv_flow.LF||
'    dbms_output.put_line(l_callback);'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202605280731','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12976629746994917
 ,p_command => 
'SELECT * FROM GAME WHERE TOURNAMENT_ID = 21 AND ROUND_NUMBER = 2 ;'||wwv_flow.LF||
''
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280854','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12984089445481627
 ,p_command => 
'UPDATE game SET game_date = TO_DATE(''30.06.2026 02:00'', ''DD.MM.YYYY HH24:MI'') WHERE id = 1259;'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''01.07.2026 02:00'', ''DD.MM.YYYY HH24:MI'') WHERE id = 1262;'||wwv_flow.LF||
''||wwv_flow.LF||
'COMMIT;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281302','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12973785249905605
 ,p_command => 
'select * from all_objects'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280839','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12973930575908449
 ,p_command => 
'select * from all_objects where object_type = ''FUNCTION'' and owner = ''LAB'''
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280839','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12974074036909166
 ,p_command => 
'select * from all_objects where owner = ''LAB'''
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280839','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12974287871928322
 ,p_command => 
'select * from all_objects where owner = ''TIPOVACKA'' and object_type = ''FUNCTION'''
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280843','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12974321482930100
 ,p_command => 
'select * from all_objects where owner = ''TIPOVACKA'' and object_type = ''PROCEDURE'''
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280843','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12974534676943579
 ,p_command => 
'select * from all_objects where owner = ''TIPOVACKA'' and object_type = ''PROCEDURE'' ;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'SELECT DBMS_METADATA.GET_DDL(''PROCEDURE'', ''P_ADD_GAME'') FROM DUAL ;'||wwv_flow.LF||
'select dbms_metadata.get_ddl(''P_ADD_GAME'',''PROCEDURE'') from dual;'||wwv_flow.LF||
''
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280845','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12974648271944704
 ,p_command => 
'select * from all_objects where owner = ''TIPOVACKA'' and object_type = ''PROCEDURE'' ;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'SELECT DBMS_METADATA.GET_DDL(''PROCEDURE'', ''P_ADD_GAME'') FROM DUAL ;'||wwv_flow.LF||
'select dbms_metadata.get_ddl(''PROCEDURE'', ''P_ADD_GAME'') from dual;'||wwv_flow.LF||
''
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280845','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12974951320960489
 ,p_command => 
'SELECT * FROM TEAM WHERE TOURNAMENT_ID = 21 ;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280848','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12976303482988168
 ,p_command => 
'select * from all_objects where owner = ''TIPOVACKA'' and object_type = ''PROCEDURE'' ;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'SELECT DBMS_METADATA.GET_DDL(''PROCEDURE'', ''P_ADD_GAME'') FROM DUAL ;'||wwv_flow.LF||
'select dbms_metadata.get_ddl(''PROCEDURE'', ''P_ADD_GAME'') from dual;'||wwv_flow.LF||
'SELECT * FROM TEAM WHERE TOURNAMENT_ID = 21 AND CODE IN (''COD'', ''CPV'', ''CIV'');'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    -- Nedeľa, 28. jún 2026'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME('||wwv_flow.LF||
'        p_tournament_id  => 21, -- Nahr'||
'aď reálnym ID turnaja MS 2026'||wwv_flow.LF||
'        p_home_team_code => ''RSA'', -- Južná Afrika'||wwv_flow.LF||
'        p_away_team_code => ''CAN'', -- Kanada'||wwv_flow.LF||
'        p_game_date      => TO_DATE(''2026-06-28'', ''YYYY-MM-DD''),'||wwv_flow.LF||
'        p_round_number   => 2,'||wwv_flow.LF||
'        p_round_name     => ''1/16-finále'','||wwv_flow.LF||
'        p_round_name_eng => ''Round of 32'','||wwv_flow.LF||
'        p_allow_draw     => 0'||wwv_flow.LF||
'    );'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Pondelok, 29. jún 2026'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME'||
'(21, ''BRA'', ''JPN'', TO_DATE(''2026-06-29'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''GER'', ''PAR'', TO_DATE(''2026-06-29'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Utorok, 30. jún 2026'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''NED'', ''MAR'', TO_DATE(''2026-06-30'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''CIV'', ''NOR'', T'||
'O_DATE(''2026-06-30'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''FRA'', ''SWE'', TO_DATE(''2026-06-30'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Streda, 1. júl 2026'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''MEX'', ''ECU'', TO_DATE(''2026-07-01'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''ENG'', ''COD'', TO_DATE(''2026-07-01'', '||
'''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''BEL'', ''SEN'', TO_DATE(''2026-07-01'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Štvrtok, 2. júl 2026'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''USA'', ''BIH'', TO_DATE(''2026-07-02'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''ESP'', ''AUT'', TO_DATE(''2026-07-02'', ''YYYY-MM-DD''), 2, ''1'||
'/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''SUI'', ''ALG'', TO_DATE(''2026-07-02'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Piatok, 3. júl 2026'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''POR'', ''CRO'', TO_DATE(''2026-07-03'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''ARG'', ''CPV'', TO_DATE(''2026-07-03'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round o'||
'f 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''COL'', ''GHA'', TO_DATE(''2026-07-03'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(21, ''AUS'', ''EGY'', TO_DATE(''2026-07-03'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'SELECT * FROM GAME WHERE TOURNAMENT_ID = 21 AND ROUND_NUMBER = 2 ;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280853','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12976874519997729
 ,p_command => 
'COMMIT;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280854','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12980639307084252
 ,p_command => 
'CREATE OR REPLACE EDITIONABLE FUNCTION "TIPOVACKA"."F_BET_PIVOT_HTML" ( p_party_id IN NUMBER, p_tournament_id IN NUMBER ) RETURN VARCHAR2 AS v_sql VARCHAR2(32767); v_cols VARCHAR2(32767) := ''''; BEGIN FOR u IN ( SELECT u.id, u.username, u.full_name FROM TIPOVACKA.APP_USER u JOIN TIPOVACKA.PARTY_MEMBER pm ON pm.USER_ID = u.ID WHERE pm.PARTY_ID = p_party_id ORDER BY u.username ) LOOP v_cols := v_cols'||
' || '',MAX(CASE WHEN u.id = '' || u.id || '' THEN '' || ''CASE WHEN u.id = (SELECT id FROM TIPOVACKA.APP_USER WHERE google_email = :APP_USER) THEN '' || ''CASE WHEN g.game_date <= CAST(SYSTIMESTAMP AT TIME ZONE ''''Europe/Bratislava'''' AS DATE) THEN '' || ''CASE '' || ''WHEN NVL(bp.points, 0) = 3 THEN ''''<span class="bet-inline">'''' || b.home_score || '''':'''' || b.away_score || '''' ⭐</span>'''' '' || ''WHEN NVL(bp.point'||
's, 0) = 1 THEN ''''<span class="bet-inline">'''' || b.home_score || '''':'''' || b.away_score || '''' ✔️</span>'''' '' || ''WHEN bp.points IS NULL THEN ''''<span class="bet-inline bet-pending">'''' || b.home_score || '''':'''' || b.away_score || ''''</span>'''' '' || ''ELSE ''''<span class="bet-inline bg-wrong">'''' || b.home_score || '''':'''' || b.away_score || ''''</span>'''' '' || ''END '' || ''ELSE ''''<span>'''' || b.home_score || '''':'''' |'||
'| b.away_score || ''''</span>'''' END '' || ''WHEN g.game_date <= CAST(SYSTIMESTAMP AT TIME ZONE ''''Europe/Bratislava'''' AS DATE) THEN '' || ''CASE '' || ''WHEN NVL(bp.points, 0) = 3 THEN ''''<span class="bet-inline">'''' || b.home_score || '''':'''' || b.away_score || '''' ⭐</span>'''' '' || ''WHEN NVL(bp.points, 0) = 1 THEN ''''<span class="bet-inline">'''' || b.home_score || '''':'''' || b.away_score || '''' ✔️</span>'''' '' || ''WHE'||
'N bp.points IS NULL THEN ''''<span class="bet-inline bet-pending">'''' || b.home_score || '''':'''' || b.away_score || ''''</span>'''' '' || ''ELSE ''''<span class="bet-inline bg-wrong">'''' || b.home_score || '''':'''' || b.away_score || ''''</span>'''' '' || ''END '' || ''WHEN b.home_score IS NOT NULL THEN ''''<span>✅</span>'''' '' || ''END END) AS "'' || u.full_name || ''"'' || CHR(10); END LOOP; /*v_sql := ''SELECT g.game_date, TO_C'||
'HAR(g.game_date, ''''DD.MM HH24:MI'''') AS datum, '' || ''ht.emoji_flag || '''' '''' || ht.code || '''' - '''' || at.code || '''' '''' || at.emoji_flag AS game '' || v_cols || '', CASE WHEN g.home_score IS NULL THEN ''''-'''' ELSE g.home_score || '''':'''' || g.away_score END AS vysledok '' || ''FROM TIPOVACKA.GAME g '' || ''JOIN TIPOVACKA.TEAM ht ON g.home_team_id = ht.id '' || ''JOIN TIPOVACKA.TEAM at ON g.away_team_id = at.id '''||
' || ''LEFT JOIN TIPOVACKA.V_BET_LAST b ON g.id = b.game_id AND b.party_id = '' || p_party_id || '' '' || ''LEFT JOIN TIPOVACKA.APP_USER u ON b.user_id = u.id '' || ''LEFT JOIN TIPOVACKA.BET_POINTS bp ON bp.game_id = g.id AND bp.user_id = u.id AND bp.party_id = '' || p_party_id || '' '' || ''WHERE g.tournament_id = '' || p_tournament_id || '' '' || ''GROUP BY g.id, g.game_date, ht.code, at.code, ht.emoji_flag, at'||
'.emoji_flag, g.home_score, g.away_score '' || ''ORDER BY g.id'';*/ v_sql := ''SELECT TO_CHAR(g.game_date, ''''DD.MM HH24:MI''''), ''''<div title="'''' || ht.name || '''' - '''' || at.name || ''''" style="white-space: normal; line-height: 1.4; cursor: help;">'''' || '' || ''''''<span style="color: #888; font-size: 11px; white-space: nowrap;">'''' || TO_CHAR(g.game_date, ''''DD.MM HH24:MI'''') || ''''</span><br>'''' || '' || ''ht.emoj'||
'i_flag || '''' '''' || ht.code || '''' - '''' || at.code || '''' '''' || at.emoji_flag || ''''</div>'''' AS game '' || v_cols || '', CASE WHEN g.home_score IS NULL THEN ''''<span class="live-result">-</span>'''' ELSE g.home_score || '''':'''' || g.away_score END AS score '' || ''FROM TIPOVACKA.GAME g '' || ''JOIN TIPOVACKA.TEAM ht ON g.home_team_id = ht.id '' || ''JOIN TIPOVACKA.TEAM at ON g.away_team_id = at.id '' || ''LEFT JOIN '||
'TIPOVACKA.V_BET_LAST b ON g.id = b.game_id AND b.party_id = '' || p_party_id || '' '' || ''LEFT JOIN TIPOVACKA.APP_USER u ON b.user_id = u.id '' || ''LEFT JOIN TIPOVACKA.BET_POINTS bp ON bp.game_id = g.id AND bp.user_id = u.id AND bp.party_id = '' || p_party_id || '' '' || ''WHERE g.tournament_id = '' || p_tournament_id || '' '' || -- Do GROUP BY pridané ht.name a at.name, aby prešiel select ''GROUP BY g.id, g.'||
'game_date, ht.code, at.code, ht.emoji_flag, at.emoji_flag, g.home_score, g.away_score, ht.name, at.name '' || ''ORDER BY g.id''; RETURN v_sql; END F_BET_PIVOT_HTML;'||wwv_flow.LF||
''
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280909','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12980797648085438
 ,p_command => 
'CREATE OR REPLACE EDITIONABLE FUNCTION "TIPOVACKA"."F_BET_PIVOT_HTML" ( p_party_id IN NUMBER, p_tournament_id IN NUMBER ) RETURN VARCHAR2 AS v_sql VARCHAR2(32767); v_cols VARCHAR2(32767) := ''''; BEGIN FOR u IN ( SELECT u.id, u.username, u.full_name FROM TIPOVACKA.APP_USER u JOIN TIPOVACKA.PARTY_MEMBER pm ON pm.USER_ID = u.ID WHERE pm.PARTY_ID = p_party_id ORDER BY u.username ) LOOP v_cols := v_cols'||
' || '',MAX(CASE WHEN u.id = '' || u.id || '' THEN '' || ''CASE WHEN u.id = (SELECT id FROM TIPOVACKA.APP_USER WHERE google_email = :APP_USER) THEN '' || ''CASE WHEN g.game_date <= CAST(SYSTIMESTAMP AT TIME ZONE ''''Europe/Bratislava'''' AS DATE) THEN '' || ''CASE '' || ''WHEN NVL(bp.points, 0) = 3 THEN ''''<span class="bet-inline">'''' || b.home_score || '''':'''' || b.away_score || '''' ⭐</span>'''' '' || ''WHEN NVL(bp.point'||
's, 0) = 1 THEN ''''<span class="bet-inline">'''' || b.home_score || '''':'''' || b.away_score || '''' ✔️</span>'''' '' || ''WHEN bp.points IS NULL THEN ''''<span class="bet-inline bet-pending">'''' || b.home_score || '''':'''' || b.away_score || ''''</span>'''' '' || ''ELSE ''''<span class="bet-inline bg-wrong">'''' || b.home_score || '''':'''' || b.away_score || ''''</span>'''' '' || ''END '' || ''ELSE ''''<span>'''' || b.home_score || '''':'''' |'||
'| b.away_score || ''''</span>'''' END '' || ''WHEN g.game_date <= CAST(SYSTIMESTAMP AT TIME ZONE ''''Europe/Bratislava'''' AS DATE) THEN '' || ''CASE '' || ''WHEN NVL(bp.points, 0) = 3 THEN ''''<span class="bet-inline">'''' || b.home_score || '''':'''' || b.away_score || '''' ⭐</span>'''' '' || ''WHEN NVL(bp.points, 0) = 1 THEN ''''<span class="bet-inline">'''' || b.home_score || '''':'''' || b.away_score || '''' ✔️</span>'''' '' || ''WHE'||
'N bp.points IS NULL THEN ''''<span class="bet-inline bet-pending">'''' || b.home_score || '''':'''' || b.away_score || ''''</span>'''' '' || ''ELSE ''''<span class="bet-inline bg-wrong">'''' || b.home_score || '''':'''' || b.away_score || ''''</span>'''' '' || ''END '' || ''WHEN b.home_score IS NOT NULL THEN ''''<span>✅</span>'''' '' || ''END END) AS "'' || u.full_name || ''"'' || CHR(10); END LOOP; /*v_sql := ''SELECT TO_CHAR(g.game_da'||
'te, ''''DD.MM HH24:MI'''') AS datum, '' || ''ht.emoji_flag || '''' '''' || ht.code || '''' - '''' || at.code || '''' '''' || at.emoji_flag AS game '' || v_cols || '', CASE WHEN g.home_score IS NULL THEN ''''-'''' ELSE g.home_score || '''':'''' || g.away_score END AS vysledok '' || ''FROM TIPOVACKA.GAME g '' || ''JOIN TIPOVACKA.TEAM ht ON g.home_team_id = ht.id '' || ''JOIN TIPOVACKA.TEAM at ON g.away_team_id = at.id '' || ''LEFT JOI'||
'N TIPOVACKA.V_BET_LAST b ON g.id = b.game_id AND b.party_id = '' || p_party_id || '' '' || ''LEFT JOIN TIPOVACKA.APP_USER u ON b.user_id = u.id '' || ''LEFT JOIN TIPOVACKA.BET_POINTS bp ON bp.game_id = g.id AND bp.user_id = u.id AND bp.party_id = '' || p_party_id || '' '' || ''WHERE g.tournament_id = '' || p_tournament_id || '' '' || ''GROUP BY g.id, g.game_date, ht.code, at.code, ht.emoji_flag, at.emoji_flag, '||
'g.home_score, g.away_score '' || ''ORDER BY g.id'';*/ v_sql := ''SELECT TO_CHAR(g.game_date, ''''DD.MM HH24:MI''''), ''''<div title="'''' || ht.name || '''' - '''' || at.name || ''''" style="white-space: normal; line-height: 1.4; cursor: help;">'''' || '' || ''''''<span style="color: #888; font-size: 11px; white-space: nowrap;">'''' || TO_CHAR(g.game_date, ''''DD.MM HH24:MI'''') || ''''</span><br>'''' || '' || ''ht.emoji_flag || '''' '||
''''' || ht.code || '''' - '''' || at.code || '''' '''' || at.emoji_flag || ''''</div>'''' AS game '' || v_cols || '', CASE WHEN g.home_score IS NULL THEN ''''<span class="live-result">-</span>'''' ELSE g.home_score || '''':'''' || g.away_score END AS score '' || ''FROM TIPOVACKA.GAME g '' || ''JOIN TIPOVACKA.TEAM ht ON g.home_team_id = ht.id '' || ''JOIN TIPOVACKA.TEAM at ON g.away_team_id = at.id '' || ''LEFT JOIN TIPOVACKA.V_B'||
'ET_LAST b ON g.id = b.game_id AND b.party_id = '' || p_party_id || '' '' || ''LEFT JOIN TIPOVACKA.APP_USER u ON b.user_id = u.id '' || ''LEFT JOIN TIPOVACKA.BET_POINTS bp ON bp.game_id = g.id AND bp.user_id = u.id AND bp.party_id = '' || p_party_id || '' '' || ''WHERE g.tournament_id = '' || p_tournament_id || '' '' || -- Do GROUP BY pridané ht.name a at.name, aby prešiel select ''GROUP BY g.id, g.game_date, ht'||
'.code, at.code, ht.emoji_flag, at.emoji_flag, g.home_score, g.away_score, ht.name, at.name '' || ''ORDER BY g.id''; RETURN v_sql; END F_BET_PIVOT_HTML;'||wwv_flow.LF||
''
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280909','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12983744845430188
 ,p_command => 
'BEGIN'||wwv_flow.LF||
'    -- 02.07.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-02 21:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1266; -- Španielsko - Rakúsko'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- 03.07.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-03 01:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1267; -- Portugalsko - Chorvátsko'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-03 05:00'', ''YYYY-MM-DD HH24:'||
'MI'') WHERE id = 1268; -- Švajčiarsko - Alžírsko'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-03 20:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1269; -- Austrália - Egypt'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- 04.07.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-04 00:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1270; -- Argentína - Kapverdy'||wwv_flow.LF||
''||wwv_flow.LF||
'    COMMIT;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281253','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12973057781857050
 ,p_command => 
'select * from all_function'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280544','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12973187136857177
 ,p_command => 
'select * from all_functions'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280544','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12974742736946811
 ,p_command => 
'select dbms_metadata.get_ddl(''PROCEDURE'', ''P_ADD_GAME'') from dual;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280846','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12975104724968811
 ,p_command => 
'BEGIN'||wwv_flow.LF||
'    -- Nedeľa, 28. jún 2026'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME('||wwv_flow.LF||
'        p_tournament_id  => 1, -- Nahraď reálnym ID turnaja MS 2026'||wwv_flow.LF||
'        p_home_team_code => ''RSA'', -- Južná Afrika'||wwv_flow.LF||
'        p_away_team_code => ''CAN'', -- Kanada'||wwv_flow.LF||
'        p_game_date      => TO_DATE(''2026-06-28'', ''YYYY-MM-DD''),'||wwv_flow.LF||
'        p_round_number   => 2,'||wwv_flow.LF||
'        p_round_name     => ''1/16-finále'','||wwv_flow.LF||
'        p_round_name_eng => ''Round of'||
' 32'','||wwv_flow.LF||
'        p_allow_draw     => 0'||wwv_flow.LF||
'    );'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Pondelok, 29. jún 2026'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(1, ''BRA'', ''JPN'', TO_DATE(''2026-06-29'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(1, ''GER'', ''PAR'', TO_DATE(''2026-06-29'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Utorok, 30. jún 2026'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(1, ''NED'', ''MAR'', TO_DATE(''2026-06-30'', '''||
'YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(1, ''CIV'', ''NOR'', TO_DATE(''2026-06-30'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(1, ''FRA'', ''SWE'', TO_DATE(''2026-06-30'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Streda, 1. júl 2026'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(1, ''MEX'', ''ECU'', TO_DATE(''2026-07-01'', ''YYYY-MM-DD''), 2, ''1/16-f'||
'inále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(1, ''ENG'', ''COD'', TO_DATE(''2026-07-01'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(1, ''BEL'', ''SEN'', TO_DATE(''2026-07-01'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Štvrtok, 2. júl 2026'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(1, ''USA'', ''BIH'', TO_DATE(''2026-07-02'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', '||
'0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(1, ''ESP'', ''AUT'', TO_DATE(''2026-07-02'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(1, ''SUI'', ''ALG'', TO_DATE(''2026-07-02'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Piatok, 3. júl 2026'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(1, ''POR'', ''CRO'', TO_DATE(''2026-07-03'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_'||
'GAME(1, ''ARG'', ''CPV'', TO_DATE(''2026-07-03'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(1, ''COL'', ''GHA'', TO_DATE(''2026-07-03'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'    TIPOVACKA.P_ADD_GAME(1, ''AUS'', ''EGY'', TO_DATE(''2026-07-03'', ''YYYY-MM-DD''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'||wwv_flow.LF||
''
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280849','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12976407800988607
 ,p_command => 
'SELECT * FROM GAME WHERE TOURNAMENT_ID = 21 AND ROUND_NUMBER = 2 ;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280853','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12982053320284207
 ,p_command => 
'select * from v_game where tournament_id = 21 ;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281229','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12983499399376609
 ,p_command => 
'BEGIN'||wwv_flow.LF||
'    -- 28.06.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-06-28 21:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1256; -- Južná Afrika - Kanada'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- 29.06.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-06-29 19:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1257; -- Brazília - Japonsko'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-06-29 22:30'', ''YYYY-MM-DD HH24:MI'')'||
' WHERE id = 1258; -- Nemecko - Paraguaj'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- 30.06.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-06-30 03:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1259; -- Holandsko - Maroko'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-06-30 19:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1260; -- Pobrežie Slonoviny - Nórsko'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-06-30 23:00'', '||
'''YYYY-MM-DD HH24:MI'') WHERE id = 1261; -- Francúzsko - Švédsko'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- 01.07.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-01 03:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1262; -- Mexiko - Ekvádor'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-01 18:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1263; -- Anglicko - Konžská DR'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026'||
'-07-01 22:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1264; -- Belgicko - Senegal'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- 02.07.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-02 02:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1265; -- USA - Bosna a Hercegovina'||wwv_flow.LF||
''||wwv_flow.LF||
'    COMMIT;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281244','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12983894301465223
 ,p_command => 
'select id, home_team, away_team, to_char(game_date, ''dd.mm.yyyy hh24:mi'') from v_game where tournament_id = 21 and round_number = 2 ;'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281259','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12983555448401899
 ,p_command => 
'BEGIN'||wwv_flow.LF||
'    -- 02.07.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-02 21:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1266; -- Španielsko - Rakúsko'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- 03.07.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-03 01:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1267; -- Portugalsko - Chorvátsko'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-03 05:00'', ''YYYY-MM-DD HH24:'||
'MI'') WHERE id = 1268; -- Švajčiarsko - Alžírsko'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-03 20:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1269; -- Austrália - Egypt'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- 04.07.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-04 00:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1270; -- Argentína - Kapverdy'||wwv_flow.LF||
''||wwv_flow.LF||
'    COMMIT;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281248','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12984302561545977
 ,p_command => 
'SELECT g.id, ht.name AS home_team, at.name AS away_team, g.game_date'||wwv_flow.LF||
'FROM game g'||wwv_flow.LF||
'JOIN team ht ON ht.id = g.home_team_id'||wwv_flow.LF||
'JOIN team at ON at.id = g.away_team_id'||wwv_flow.LF||
'WHERE ht.name IN (''Holandsko'',''Mexiko'',''Švajčiarsko'',''Austrália'',''Argentína'',''Kolumbia'')'||wwv_flow.LF||
'ORDER BY g.game_date;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281312','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12984704142571300
 ,p_command => 
'select id, home_team, away_team, to_char(game_date, ''dd.mm.yyyy hh24:mi'') from v_game where tournament_id = 21 and round_number = 2 ;'||wwv_flow.LF||
''||wwv_flow.LF||
'select * from game where tournament_id = 21 and round_number = 2 ;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
'    -- 30.06.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-06-30 03:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1259; -- Holandsko - Maroko'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- 01.07.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.G'||
'AME SET game_date = TO_DATE(''2026-07-01 03:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1262; -- Mexiko - Ekvádor'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- 03.07.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-03 05:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1268; -- Švajčiarsko - Alžírsko'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-03 20:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1269; -- Austrália - Egypt'||wwv_flow.LF||
'    -- Pr'||
'edpokladám ID pre zostávajúce zápasy (skontroluj si ID v DB, ak nesedia)'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-03 03:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1271; -- Kolumbia - Ghana'||wwv_flow.LF||
''||wwv_flow.LF||
'    -- 04.07.2026'||wwv_flow.LF||
'    UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-04 00:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1270; -- Argentína - Kapverdy'||wwv_flow.LF||
''||wwv_flow.LF||
'    COMMIT;'||wwv_flow.LF||
'END;'||wwv_flow.LF||
'/'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'SELECT g.id, ht.name AS'||
' home_team, at.name AS away_team, g.game_date'||wwv_flow.LF||
'FROM game g'||wwv_flow.LF||
'JOIN team ht ON ht.id = g.home_team_id'||wwv_flow.LF||
'JOIN team at ON at.id = g.away_team_id'||wwv_flow.LF||
'WHERE ht.name IN (''Holandsko'',''Mexiko'',''Švajčiarsko'',''Austrália'',''Argentína'',''Kolumbia'')'||wwv_flow.LF||
'ORDER BY g.game_date;'||wwv_flow.LF||
''||wwv_flow.LF||
'begin'||wwv_flow.LF||
''||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''30.06.2026 03:00'', ''DD.MM.YYYY HH24:MI'') WHERE id = 1259;'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''01.07.2026 03'||
':00'', ''DD.MM.YYYY HH24:MI'') WHERE id = 1262;'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''03.07.2026 05:00'', ''DD.MM.YYYY HH24:MI'') WHERE id = 1266;'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''03.07.2026 20:00'', ''DD.MM.YYYY HH24:MI'') WHERE id = 1267;'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''04.07.2026 00:00'', ''DD.MM.YYYY HH24:MI'') WHERE id = 1268;'||wwv_flow.LF||
'UPDATE game SET game_date = TO_DATE(''04.07.2026 03:00'', ''DD.MM.YYYY HH'||
'24:MI'') WHERE id = 1269;'||wwv_flow.LF||
''||wwv_flow.LF||
'COMMIT;'||wwv_flow.LF||
''||wwv_flow.LF||
'COMMIT;'||wwv_flow.LF||
''||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281316','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12985022153576309
 ,p_command => 
'delete from game where tournament_id = 21 and round_number = 2 ; commit ;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281317','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12985198722577682
 ,p_command => 
'delete from game where tournament_id = 21 and round_number = 2 ;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281318','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12985594341589029
 ,p_command => 
'begin'||wwv_flow.LF||
'TIPOVACKA.P_ADD_GAME(21, ''RSA'', ''CAN'', TO_DATE(''2026-06-28 21:00'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'TIPOVACKA.P_ADD_GAME(21, ''BRA'', ''JPN'', TO_DATE(''2026-06-29 19:00'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'TIPOVACKA.P_ADD_GAME(21, ''GER'', ''PAR'', TO_DATE(''2026-06-29 22:30'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'TIPOVACKA.P_A'||
'DD_GAME(21, ''NED'', ''MAR'', TO_DATE(''2026-06-30 03:00'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'TIPOVACKA.P_ADD_GAME(21, ''CIV'', ''NOR'', TO_DATE(''2026-06-30 19:00'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'TIPOVACKA.P_ADD_GAME(21, ''FRA'', ''SWE'', TO_DATE(''2026-06-30 23:00'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'TIPOVACKA.P_ADD_GAME(21, ''MEX'', '||
'''ECU'', TO_DATE(''2026-07-01 03:00'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'TIPOVACKA.P_ADD_GAME(21, ''ENG'', ''COD'', TO_DATE(''2026-07-01 18:00'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'TIPOVACKA.P_ADD_GAME(21, ''BEL'', ''SEN'', TO_DATE(''2026-07-01 22:00'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'TIPOVACKA.P_ADD_GAME(21, ''USA'', ''BIH'', TO_DATE(''202'||
'6-07-02 02:00'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'TIPOVACKA.P_ADD_GAME(21, ''ESP'', ''AUT'', TO_DATE(''2026-07-02 21:00'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'TIPOVACKA.P_ADD_GAME(21, ''POR'', ''CRO'', TO_DATE(''2026-07-03 01:00'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'TIPOVACKA.P_ADD_GAME(21, ''SUI'', ''ALG'', TO_DATE(''2026-07-03 05:00'', ''YY'||
'YY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'TIPOVACKA.P_ADD_GAME(21, ''AUS'', ''EGY'', TO_DATE(''2026-07-03 20:00'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'TIPOVACKA.P_ADD_GAME(21, ''ARG'', ''CPV'', TO_DATE(''2026-07-04 00:00'', ''YYYY-MM-DD HH24:MI''), 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
'TIPOVACKA.P_ADD_GAME(21, ''COL'', ''GHA'', TO_DATE(''2026-07-04 03:30'', ''YYYY-MM-DD HH24:MI''),'||
' 2, ''1/16-finále'', ''Round of 32'', 0);'||wwv_flow.LF||
''||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281319','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12993498066539039
 ,p_command => 
'select * from v_game where tournament_id = 21 and round_number = 2 ;'||wwv_flow.LF||
''||wwv_flow.LF||
'1272'||wwv_flow.LF||
''||wwv_flow.LF||
'select * from app_user ;'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281844','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12980802097102569
 ,p_command => 
'CREATE OR REPLACE EDITIONABLE FUNCTION "TIPOVACKA"."F_BET_PIVOT_HTML" ( '||wwv_flow.LF||
'    p_party_id      IN NUMBER, '||wwv_flow.LF||
'    p_tournament_id IN NUMBER '||wwv_flow.LF||
') RETURN VARCHAR2 AS '||wwv_flow.LF||
'    v_sql  VARCHAR2(32767); '||wwv_flow.LF||
'    v_cols VARCHAR2(32767) := ''''; '||wwv_flow.LF||
'BEGIN '||wwv_flow.LF||
'    -- Generovanie dynamických stĺpcov pre každého používateľa v parte'||wwv_flow.LF||
'    FOR u IN ( '||wwv_flow.LF||
'        SELECT u.id, u.username, u.full_name '||wwv_flow.LF||
'        FROM TIPOVACKA.APP_USER u '||wwv_flow.LF||
'   '||
'     JOIN TIPOVACKA.PARTY_MEMBER pm ON pm.USER_ID = u.ID '||wwv_flow.LF||
'        WHERE pm.PARTY_ID = p_party_id '||wwv_flow.LF||
'        ORDER BY u.username '||wwv_flow.LF||
'    ) LOOP '||wwv_flow.LF||
'        v_cols := v_cols || '',MAX(CASE WHEN u.id = '' || u.id || '' THEN '' || '||wwv_flow.LF||
'                  ''CASE WHEN u.id = (SELECT id FROM TIPOVACKA.APP_USER WHERE google_email = :APP_USER) THEN '' || '||wwv_flow.LF||
'                  ''CASE WHEN g.game_date <= CAST(SYSTIMESTAMP AT TIME '||
'ZONE ''''Europe/Bratislava'''' AS DATE) THEN '' || '||wwv_flow.LF||
'                  ''CASE '' || '||wwv_flow.LF||
'                  ''WHEN NVL(bp.points, 0) = 3 THEN ''''<span class="bet-inline">'''' || b.home_score || '''':'''' || b.away_score || '''' ⭐</span>'''' '' || '||wwv_flow.LF||
'                  ''WHEN NVL(bp.points, 0) = 1 THEN ''''<span class="bet-inline">'''' || b.home_score || '''':'''' || b.away_score || '''' ✔️</span>'''' '' || '||wwv_flow.LF||
'                  ''WHEN bp.point'||
's IS NULL THEN ''''<span class="bet-inline bet-pending">'''' || b.home_score || '''':'''' || b.away_score || ''''</span>'''' '' || '||wwv_flow.LF||
'                  ''ELSE ''''<span class="bet-inline bg-wrong">'''' || b.home_score || '''':'''' || b.away_score || ''''</span>'''' '' || '||wwv_flow.LF||
'                  ''END '' || '||wwv_flow.LF||
'                  ''ELSE ''''<span>'''' || b.home_score || '''':'''' || b.away_score || ''''</span>'''' END '' || '||wwv_flow.LF||
'                  ''WHEN g.'||
'game_date <= CAST(SYSTIMESTAMP AT TIME ZONE ''''Europe/Bratislava'''' AS DATE) THEN '' || '||wwv_flow.LF||
'                  ''CASE '' || '||wwv_flow.LF||
'                  ''WHEN NVL(bp.points, 0) = 3 THEN ''''<span class="bet-inline">'''' || b.home_score || '''':'''' || b.away_score || '''' ⭐</span>'''' '' || '||wwv_flow.LF||
'                  ''WHEN NVL(bp.points, 0) = 1 THEN ''''<span class="bet-inline">'''' || b.home_score || '''':'''' || b.away_score || '''' ✔️</span>'''''||
' '' || '||wwv_flow.LF||
'                  ''WHEN bp.points IS NULL THEN ''''<span class="bet-inline bet-pending">'''' || b.home_score || '''':'''' || b.away_score || ''''</span>'''' '' || '||wwv_flow.LF||
'                  ''ELSE ''''<span class="bet-inline bg-wrong">'''' || b.home_score || '''':'''' || b.away_score || ''''</span>'''' '' || '||wwv_flow.LF||
'                  ''END '' || '||wwv_flow.LF||
'                  ''WHEN b.home_score IS NOT NULL THEN ''''<span>✅</span>'''' '' || '||wwv_flow.LF||
'         '||
'         ''END END) AS "'' || u.full_name || ''"'' || CHR(10); '||wwv_flow.LF||
'    END LOOP; '||wwv_flow.LF||
''||wwv_flow.LF||
'    -- Zostavenie výsledného SQL dopytu s opraveným TO_CHAR a GROUP BY'||wwv_flow.LF||
'    v_sql := ''SELECT g.game_date, TO_CHAR(g.game_date, ''''DD.MM HH24:MI'''') AS datum, '' ||'||wwv_flow.LF||
'             ''''''<div title="'''' || ht.name || '''' - '''' || at.name || ''''" style="white-space: normal; line-height: 1.4; cursor: help;">'''' || '' || '||wwv_flow.LF||
'             ''''''<spa'||
'n style="color: #888; font-size: 11px; white-space: nowrap;">'''' || TO_CHAR(g.game_date, ''''DD.MM HH24:MI'''') || ''''</span><br>'''' || '' || '||wwv_flow.LF||
'             ''ht.emoji_flag || '''' '''' || ht.code || '''' - '''' || at.code || '''' '''' || at.emoji_flag || ''''</div>'''' AS game '' || v_cols || '||wwv_flow.LF||
'             '', CASE WHEN g.home_score IS NULL THEN ''''<span class="live-result">-</span>'''' ELSE g.home_score || '''':'''' || g.away_sco'||
're END AS score '' || '||wwv_flow.LF||
'             ''FROM TIPOVACKA.GAME g '' || '||wwv_flow.LF||
'             ''JOIN TIPOVACKA.TEAM ht ON g.home_team_id = ht.id '' || '||wwv_flow.LF||
'             ''JOIN TIPOVACKA.TEAM at ON g.away_team_id = at.id '' || '||wwv_flow.LF||
'             ''LEFT JOIN TIPOVACKA.V_BET_LAST b ON g.id = b.game_id AND b.party_id = '' || p_party_id || '' '' || '||wwv_flow.LF||
'             ''LEFT JOIN TIPOVACKA.APP_USER u ON b.user_id = u.id '' || '||wwv_flow.LF||
'             ''LE'||
'FT JOIN TIPOVACKA.BET_POINTS bp ON bp.game_id = g.id AND bp.user_id = u.id AND bp.party_id = '' || p_party_id || '' '' || '||wwv_flow.LF||
'             ''WHERE g.tournament_id = '' || p_tournament_id || '' '' || '||wwv_flow.LF||
'             ''GROUP BY g.id, g.game_date, TO_CHAR(g.game_date, ''''DD.MM HH24:MI''''), ht.code, at.code, ht.emoji_flag, at.emoji_flag, g.home_score, g.away_score, ht.name, at.name '' || '||wwv_flow.LF||
'             ''ORDER BY g.id'''||
'; '||wwv_flow.LF||
''||wwv_flow.LF||
'    RETURN v_sql; '||wwv_flow.LF||
'END F_BET_PIVOT_HTML;'||wwv_flow.LF||
'/'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606280912','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 12983691849427563
 ,p_command => 
'    BEGIN'||wwv_flow.LF||
'        -- 02.07.2026'||wwv_flow.LF||
'        UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-02 21:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1266; -- Španielsko - Rakúsko'||wwv_flow.LF||
''||wwv_flow.LF||
'        -- 03.07.2026'||wwv_flow.LF||
'        UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-03 01:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1267; -- Portugalsko - Chorvátsko'||wwv_flow.LF||
'        UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-03 0'||
'5:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1268; -- Švajčiarsko - Alžírsko'||wwv_flow.LF||
'        UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-03 20:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1269; -- Austrália - Egypt'||wwv_flow.LF||
''||wwv_flow.LF||
'        -- 04.07.2026'||wwv_flow.LF||
'        UPDATE TIPOVACKA.GAME SET game_date = TO_DATE(''2026-07-04 00:00'', ''YYYY-MM-DD HH24:MI'') WHERE id = 1270; -- Argentína - Kapverdy'||wwv_flow.LF||
''||wwv_flow.LF||
'        COMMIT;'||wwv_flow.LF||
'    END;'||wwv_flow.LF||
'    /'
    ,p_created_by => 'LAB'
    ,p_created_on => to_date('202606281253','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'TIPOVACKA');
end;
/
----------------
--Quick SQL saved models
--
----------------
--user access log
--
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'miroslav.cech@gmail.com',
    p_auth_method => 'Google Login',
    p_app => 200,
    p_owner => 'TIPOVACKA',
    p_access_date => to_date('202610220721','YYYYMMDDHH24MI'),
    p_ip_address => '81.89.54.4',
    p_remote_user => 'ORDS_PLSQL_GATEWAY',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'miroslav.cech@gmail.com',
    p_auth_method => 'Google Login',
    p_app => 200,
    p_owner => 'TIPOVACKA',
    p_access_date => to_date('202610220721','YYYYMMDDHH24MI'),
    p_ip_address => '81.89.54.4',
    p_remote_user => 'ORDS_PLSQL_GATEWAY',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'LAB',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202610220720','YYYYMMDDHH24MI'),
    p_ip_address => '81.89.54.4',
    p_remote_user => 'ORDS_PLSQL_GATEWAY',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'LAB',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_260100',
    p_access_date => to_date('202611081050','YYYYMMDDHH24MI'),
    p_ip_address => '81.89.54.4',
    p_remote_user => 'ORDS_PLSQL_GATEWAY',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...feedback
--
begin
null;
end;
/
--
prompt ...Issue Templates
--
begin
null;
end;
/
--
prompt ...Issue Email Prefs
--
begin
null;
end;
/
--
prompt ...Label Groups
--
begin
null;
end;
/
--
prompt ...Labels
--
begin
null;
end;
/
--
prompt ... Milestones
--
begin
null;
end;
/
--
prompt ... Issues
--
begin
null;
end;
/
--
prompt ... Issue Attachments
--
begin
null;
end;
/
--
prompt ... Issues Milestones
--
begin
null;
end;
/
--
prompt ... Issues Labels
--
begin
null;
end;
/
--
prompt ... Issues stakeholders
--
begin
null;
end;
/
--
prompt ... Issues Comments
--
begin
null;
end;
/
--
prompt ... Issues Events
--
begin
null;
end;
/
--
prompt ... Issues Notifications
--
begin
null;
end;
/
 
prompt ... Extension Links
 
 
prompt ... Extension Grants
 
 
prompt ...workspace objects
 
begin
wwv_imp_workspace.create_credential(
 p_id=>9619449369215397
,p_name=>'Google_Auth_Keys'
,p_static_id=>'Google_Auth_Keys'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_scope=>'email,profile'
,p_prompt_on_install=>true
,p_oauth_token_request_type=>'BASIC'
);
end;
/
 
prompt ...RESTful Services
 
-- SET SCHEMA
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_schema   := 'TIPOVACKA';
   wwv_flow_hint.check_schema_privs;
 
end;
/

 
--------------------------------------------------------------------
prompt  SCHEMA TIPOVACKA - User Interface Defaults, Table Defaults
--
-- Import using sqlplus as the Oracle user: APEX_260100
-- Exported 10:53 Sunday November 8, 2026 by: LAB
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 10:53 Sunday November 8, 2026 by: LAB
--
-- SHOW EXPORTING WORKSPACE
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_exp_workspace := 'LAB';
 
end;
/

begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
