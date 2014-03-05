################################################################################
# This is 'TPL/schema.tpl', a ncm-yaim's file
################################################################################
#
# VERSION:    1.2.8, 31/03/10 10:20
# AUTHOR:     Thorsten Kleinwort <Thorsten.Kleinwort@yahoo.de>
# MAINTAINER: Ulrich Schwickerath <ulrich.schwickerath@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
############################################################
#
# type definition components/yaim
#
#
#
#
#
############################################################

declaration template components/yaim/schema;

include { 'quattor/schema' };

type structure_yaim_conf = extensible {
    "YAIM_HOME"                         ? string
    "YAIM_SCRIPT"                       ? string
    "YAIM_VERSION"                      ? string
    "USERS_CONF"                        ? string
    "GROUPS_CONF"                       ? string

    "QUEUES"                            ? string
    "BDII_REGIONS"                      ? string

    "LCG_REPOSITORY"                    ? string
    "CA_REPOSITORY"                     ? string
    "REPOSITORY_TYPE"                   ? string
    "CE_HOST"                           ? string
    "CLASSIC_HOST"                      ? string
    "RB_HOST"                           ? string
    "PX_HOST"                           ? string
    "BDII_HOST"                         ? string
    "MON_HOST"                          ? string
    "REG_HOST"                          ? string
    "GRID_TRUSTED_BROKERS"              ? string
    "GRID_ACCEPTED_CREDENTIALS"         ? string
    "GRID_AUTHORIZED_RENEWERS"          ? string
    "GRID_DEFAULT_RENEWERS"             ? string
    "GRID_AUTHORIZED_RETRIEVERS"        ? string
    "GRID_DEFAULT_RETRIEVERS"           ? string
    "GRID_AUTHORIZED_KEY_RETRIEVERS"    ? string
    "GRID_DEFAULT_KEY_RETRIEVERS"       ? string
    "GRID_TRUSTED_RETRIEVERS"           ? string
    "GRID_DEFAULT_TRUSTED_RETRIEVERS"   ? string
    "WN_LIST"                           ? string
    "FUNCTIONS_DIR"                     ? string
    "MYSQL_PASSWORD"                    ? string
    "GRIDICE_SERVER_HOST"               ? string
    "SITE_EMAIL"                        ? string
    "SITE_SUPPORT_EMAIL"                ? string
    "SITE_BDII_HOST"                    ? string
    "SITE_NAME"                         ? string
    "SITE_VERSION"                      ? string
    "SITE_HTTP_PROXY"                   ? string
    "INSTALL_DATE"                      ? string
    "INSTALL_ROOT"                      ? string
    "OUTPUT_STORAGE"                    ? string
    "BDII_HTTP_URL"                     ? string
    "DCACHE_ADMIN"                      ? string
    "DCACHE_POOLS"                      ? string
    "DCACHE_PORT_RANGE"                 ? string
    "RESET_DCACHE_CONFIGURATION"        ? string
    "MY_DOMAIN"                         ? string
    "DPMCONFIG"                         ? string
    "DPMDATA"                           ? string
    "DPMDB_PWD"                         ? string
    "DPMFSIZE"                          ? string
    "DPM_HOST"                          ? string
    "DPMLOGS"                           ? string
    "DPMPOOL"                           ? string
    "DPM_POOLS"                         ? string
    "DPM_PORT_RANGE"                    ? string
    "DPMUSER_PWD"                       ? string
    "DPMMGR"                            ? string
    "DPM_FILESYSTEMS"                   ? string
    "DPM_DB_HOST"                       ? string
    "DPM_DB_USER"                       ? string
    "DPM_DB"                            ? string
    "DPNS_DB"                           ? string
    "DPM_DB_PASSWORD"                   ? string
    "DPM_INFO_USER"                     ? string
    "DPM_INFO_PASS"                     ? string
    "FTS_SERVER_URL"                    ? string
    "GLOBUS_TCP_PORT_RANGE"             ? string
    "GRIDMAP_AUTH"                      ? string
    "JAVA_LOCATION"                     ? string
    "JOB_MANAGER"                       ? string
    "LFC_HOST"                          ? string
    "SE_TYPE"                           ? string
    "LFC_DB_PASSWORD"                   ? string
    "LFC_DB"                            ? string
    "LFC_DB_HOST"                       ? string
    "LFC_LOCAL"                         ? string
    "LFC_CENTRAL"                       ? string
    "CRON_DIR"                          ? string
    "SITE_LOC"                          ? string
    "SITE_LAT"                          ? string
    "SITE_LONG"                         ? string
    "SITE_WEB"                          ? string
    "SITE_TIER"                         ? string
    "SITE_SUPPORT_SITE"                 ? string
    "APEL_DB_PASSWORD"                  ? string
    "VOBOX_HOST"                        ? string
    "VOBOX_PORT"                        ? string
    "GSSKLOG"                           ? string
    "GSSKLOG_SERVER"                    ? string
    "LFC_TYPE"                          ? string
    "LFC_HOST_ALIAS"                    ? string
    "TORQUE_SERVER"                     ? string
    "BATCH_SERVER"                      ? string
    "EDG_WL_SCRATCH"                    ? string
    "BATCH_LOG_DIR"                     ? string
    "BDII_FCR"                          ? string
    "CE_DATADIR"                        ? string
    "CLASSIC_STORAGE_DIR"               ? string
    "DPMPOOL_NODES"                     ? string
    "RB_RLS"                            ? string
    "SE_ARCH"                           ? string
    "YAIM_VERSION"                      ? string
    "VOMS_HOST"                         ? string
    "BATCH_BIN_DIR"                     ? string
    "BATCH_VERSION"                     ? string
    "BATCH_CONF_DIR"                    ? string
    "RFIO_PORT_RANGE"                   ? string
    "VO_SW_DIR"                         ? string
    "WMS_HOST"                          ? string
    "ORACLE_LOCATION"                   ? string
    "LB_HOST"                           ? string
    "GRIDVIEW_WSDL"                     ? string
    "GLITE_LOCATION"                    ? string
    "USERS_DN_WMS"                      ? string
    "SITE_DESC"                         ? string
    "SITE_SECURITY_EMAIL"               ? string
    "SITE_OTHER_GRID"                   ? string
    "SITE_OTHER_EGEE_ROC"               ? string
    "SITE_OTHER_EGEE_SERVICE"           ? string
    "SITE_OTHER_WLCG_TIER"              ? string
    "MYSQL_ADMIN"                       ? string
    "NAGIOS_ADMIN_DNS"                  ? string
    "NAGIOS_CGI_ENABLE_CONFIG"          ? string
    "NAGIOS_HOST"                       ? string
    "NAGIOS_HTTPD_ENABLE_CONFIG"        ? string
    "NAGIOS_NAGIOS_ENABLE_CONFIG"       ? string
    "NAGIOS_NCG_ENABLE_CONFIG"          ? string
    "NAGIOS_NSCA_PASS"                  ? string
    "NAGIOS_ROLE"                       ? string
    "NCG_VO"                            ? string
    "NAGIOS_MYPROXY_NAME"               ? string
    "NCG_GOCDB_COUNTRY_NAME"            ? string
    "NCG_GOCDB_ROC_NAME"                ? string
    "NCG_LDAP_FILTER"                   ? string
    "NCG_NRPE_UI"                       ? string
    "NCG_PROBES_TYPE"                   ? string
    "CEMON_HOST"                        ? string
    "ACCESS_BY_DOMAIN"                  ? string
    "CREAM_DB_USER"                     ? string
    "BLPARSER_HOST"                     ? string
    "BLP_PORT"                          ? string
    "CREAM_PORT"                        ? string
    "BLAH_JOBID_PREFIX"                 ? string
    "CREAM_CE_STATE"                    ? string

    "WMS_EXPIRY_PERIOD"                 ? string
    "WMS_MATCH_RETRY_PERIOD"            ? string
};

type structure_yaim_close_se = {
    "HOST"                              ? string
    "ACCESS_POINT"                      ? string
};

type structure_yaim_ce = {
    "closeSE"                           ? structure_yaim_close_se{}
    "BATCH_SYS"                         ? string
    "CAPABILITY"                        ? string
    "CPU_MODEL"                         ? string
    "CPU_VENDOR"                        ? string
    "CPU_SPEED"                         ? string
    "OS"                                ? string
    "OS_RELEASE"                        ? string
    "OS_ARCH"                           ? string
    "OS_VERSION"                        ? string
    "OTHERDESCR"                        ? string
    "MINPHYSMEM"                        ? string
    "MINVIRTMEM"                        ? string
    "SMPSIZE"                           ? string
    "SI00"                              ? string
    "SF00"                              ? string
    "OUTBOUNDIP"                        ? string
    "INBOUNDIP"                         ? string
    "RUNTIMEENV"                        ? string
    "BDII_SITE_TIMEOUT"                 ? string
    "BDII_RESOURCE_TIMEOUT"             ? string
    "GIP_RESPONSE"                      ? string
    "GIP_FRESHNESS"                     ? string
    "GIP_CACHE_TTL"                     ? string
    "GIP_TIMEOUT"                       ? string
    "PHYSCPU"                           ? string
    "LOGCPU"                            ? string
};

type structure_yaim_fts = {
    "HOST_ALIAS"                        ? string
    "DBURL"                             ? string
    "STATS_GENERATION_INTERVAL"         ? string
    "SUBMIT_VOMS_ATTRIBUTES"            ? string
    "ADMIN_VOMS_ATTRIBUTES"             ? string
    "DB_SQLPLUS_CONNECTSTRING"          ? string
    "DB_USER"                           ? string
    "DB_PASSWORD"                       ? string
};

type structure_yaim_vomsadmin = {
    "INSTALL"                           ? string
    "TOMCAT_GROUP"                      ? string
    "DEPLOY_DATABASE"                   ? string
    "ORACLE_CLIENT"                     ? string
    "SMTP_HOST"                         ? string
    "ORACLE_CONNECTION_STRING"          ? string
    "DB_HOST"                           ? string
    "WEB_REGISTRATION_DISABLE"          ? string
};

type structure_yaim_vo_services = {
    "SW_DIR"                            ? string
    "DEFAULT_SE"                        ? string
    "SE"                                ? string
    "QUEUES"                            ? string
    "SGM"                               ? string
    "USERS"                             ? string
    "STORAGE_DIR"                       ? string
    "VOMS_SERVERS"                      ? string
    "VOMS_EXTRA_MAPS"                   ? string
    "VOMS_POOL_PATH"                    ? string
    "VOMSES"                            ? string
    "VOMS_CA_DN"                        ? string
    "VOMS_DB_NAME"                      ? string
    "VOMS_PORT"                         ? string
    "VOMS_DB_USER"                      ? string
    "VOMS_ADMIN_DB_USER"                ? string
    "VOMS_CORE_TIMEOUT"                 ? string
    "VOMS_ADMIN_MAIL"                   ? string
    "VOMS_DB_USER_PASSWORD"             ? string
    "groupsroles"                       ? string
};

type structure_yaim_scas = {
    "SCAS_HOST"                         ? string
    "SCAS_PORT"                         ? long(1..65534)
    "SCAS_CONFIG"                       ? string
    "SCAS_DEBUG_LEVEL"                  ? long
    "SCAS_GROUP"                        ? string
    "SCAS_HOST_CERT"                    ? string
    "SCAS_HOST_KEY"                     ? string
    "SCAS_LCMAPS_CONFIG"                ? string
    "SCAS_LCMAPS_DEBUG_LEVEL"  	        ? long
    "SCAS_LCMAPS_DIR"                   ? string
    "SCAS_LCMAPS_LOG_LEVEL"             ? long
    "SCAS_LCAS_CONFIG"                  ? string 
    "SCAS_LCAS_DEBUG_LEVEL"             ? long
    "SCAS_LCAS_DIR"                     ? string
    "SCAS_LCAS_LOG_LEVEL"               ? long
    "SCAS_LOG_DIR"                      ? string
    "SCAS_LOG_FILE"                     ? string
    "SCAS_LOG_LEVEL"                    ? long
    "SCAS_USER"                         ? string
};

type structure_yaim_glexec = {
    "GLEXEC_WN_OPMODE"                  ? string
    "GLEXEC_WN_SCAS_ENABLED"            ? string
    "GLEXEC_WN_LCASLCMAPS_LOG"          ? string
    "GLEXEC_WN_LCAS_DEBUG_LEVEL"        ? long
    "GLEXEC_WN_LCAS_DIR"                ? string
    "GLEXEC_WN_LCAS_CONFIG"             ? string
    "GLEXEC_WN_LCAS_LOG_LEVEL"          ? long
    "GLEXEC_WN_LCMAPS_DEBUG_LEVEL"      ? long
    "GLEXEC_WN_LCMAPS_DIR"              ? string
    "GLEXEC_WN_LCMAPS_CONFIG"           ? string
    "GLEXEC_WN_LCMAPS_LOG_LEVEL"        ? long
    "GLEXEC_WN_LOG_DIR"                 ? string
    "GLEXEC_WN_LOG_FILE"                ? string
    "GLEXEC_WN_LOG_LEVEL"               ? long
    "GLEXEC_WN_LOG_DESTINATION"         ? string
    "PILOT_JOB_FLAG"                    ? string
    "GLEXEC_EXTRA_WHITELIST"            ? string
    "SCAS_HOST"                         ? string
    "SCAS_PORT"                         ? long
    "SCAS_ENDPOINTS"                    ? string
};

type structure_yaim_vo = {
    "name"                              : string
    "auth"                              ? string[] # was structure_vo_auth[], mandatory
    "services"                          ? structure_yaim_vo_services
};

type component_yaim = {
    include structure_component
    "configure"                         ? boolean # Should YAIM itself be run? (default no)
    "force"                             ? boolean = false   # force Yaim execution
    "conf"                              : structure_yaim_conf
    "nodetype"                          : string[]
    "CE"                                ? structure_yaim_ce
    "FTA"                               ? string{}
    "FTS"                               ? structure_yaim_fts
    "FTM"                               ? string{}
    "SCAS"                              ? structure_yaim_scas
    "GLEXEC"                            ? structure_yaim_glexec
    "extra"                             ? string{}
    "vo"                                ? structure_yaim_vo{}
    "SECRET_PASSWORDS"                  ? string
    "SITE_INFO_DEF_FILE"                ? string
    "USE_VO_D"                          ? boolean # store VO config in file per VO under vo.d (default no)
};

bind "/software/components/yaim" = component_yaim;


