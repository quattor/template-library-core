# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# condorconfig, 15.4.0, 1, 2015-06-03T15:27:32Z
#
#

declaration template components/condorconfig/schema;

include { 'quattor/schema' };

type condorconfig_component = {
        include structure_component
        'configFile' : string = '/opt/condor-c/etc/condor_config'
        'localConfigFile' : string = '/opt/condor-c/local.localhost/condor_config.local'
        'user' : string = 'glite'
        'RELEASE_DIR' ? string
        'LOCAL_DIR' ? string
        'CONDOR_ADMIN' ? string
        'MAIL' ? string
        'CONDOR_HOST' ? string
        'UID_DOMAIN' ? string
        'FILESYSTEM_DOMAIN' ? string
        'COLLECTOR_NAME' ? string
        'USERNAME' ? string
        'LOCK' ? string
        'FLOCK_FROM' ? string
        'FLOCK_TO' ? string
        'FLOCK_NEGOTIATOR_HOSTS' ? string
        'FLOCK_COLLECTOR_HOSTS' ? string
        'ALLOW_ADMINISTRATOR' ? string
        'ALLOW_OWNER' ? string
        'ALLOW_READ' ? string
        'ALLOW_WRITE' ? string
        'ALLOW_NEGOTIATOR' ? string
        'ALLOW_NEGOTIATOR_SCHEDD' ? string
        'ALLOW_WRITE_COLLECTOR' ? string
        'ALLOW_WRITE_STARTD' ? string
        'ALLOW_READ_COLLECTOR' ? string
        'ALLOW_READ_STARTD' ? string
        'GLIDEIN_SITES' ? string
        'NEGOTIATOR_IGNORE_USER_PRIORITIES' ? string
        'CONDOR_IDS' ? string
        'MAX_COLLECTOR_LOG' ? string
        'COLLECTOR_DEBUG' ? string
        'MAX_NEGOTIATOR_LOG' ? string
        'NEGOTIATOR_DEBUG' ? string
        'MAX_NEGOTIATOR_MATCH_LOG' ? string
        'MAX_SCHEDD_LOG' ? string
        'SCHEDD_DEBUG' ? string
        'MAX_SHADOW_LOG' ? string
        'SHADOW_DEBUG' ? string
        'MAX_STARTD_LOG' ? string
        'STARTD_DEBUG' ? string
        'MINUTE' ? string
        'HOUR' ? string
        'StateTimer' ? string
        'ActivityTimer' ? string
        'ActivationTimer' ? string
        'LastCkpt' ? string
        'STANDARD' ? string
        'VANILLA' ? string
        'IsVanilla' ? string
        'IsStandard' ? string
        'NonCondorLoadAvg' ? string
        'BackgroundLoad' ? string
        'HighLoad' ? string
        'StartIdleTime' ? string
        'ContinueIdleTime' ? string
        'MaxSuspendTime' ? string
        'MaxVacateTime' ? string
        'KeyboardBusy' ? string
        'ConsoleBusy' ? string
        'CPUIdle' ? string
        'CPUBusy' ? string
        'BigJob' ? string
        'MediumJob' ? string
        'SmallJob' ? string
        'JustCPU' ? string
        'MachineBusy' ? string
        'WANT_SUSPEND' ? string
        'WANT_VACATE' ? string
        'START' ? string
        'SUSPEND' ? string
        'CONTINUE' ? string
        'PREEMPT' ? string
        'KILL' ? string
        'LOG' ? string
        'SPOOL' ? string
        'EXECUTE' ? string
        'BIN' ? string
        'LIB' ? string
        'SBIN' ? string
        'HISTORY' ? string
        'COLLECTOR_LOG' ? string
        'MASTER_LOG' ? string
        'NEGOTIATOR_LOG' ? string
        'NEGOTIATOR_MATCH_LOG' ? string
        'SCHEDD_LOG' ? string
        'SHADOW_LOG' ? string
        'STARTD_LOG' ? string
        'SHADOW_LOCK' ? string
        'COLLECTOR_HOST' ? string
        'RESERVED_DISK' ? string
        'HIGHPORT' ? string
        'LOWPORT' ? string
        'DAEMON_LIST' ? string
        'MASTER' ? string
        'STARTD' ? string
        'SCHEDD' ? string
        'NEGOTIATOR' ? string
        'COLLECTOR' ? string
        'MASTER_ADDRESS_FILE' ? string
        'PREEN' ? string
        'PREEN_ARGS' ? string
        'MASTER_UPDATE_INTERVAL' ? string
        'STARTER_LIST' ? string
        'STARTER' ? string
        'STARTER_STANDARD' ? string
        'STARTER_LOCAL' ? string
        'STARTD_ADDRESS_FILE' ? string
        'UPDATE_INTERVAL' ? string
        'STARTD_JOB_EXPRS' ? string
        'SHADOW' ? string
        'SCHEDD_ADDRESS_FILE' ? string
        'SCHEDD_INTERVAL' ? string
        'SHADOW_SIZE_ESTIMATE' ? string
        'SHADOW_RENICE_INCREMENT' ? string
        'QUEUE_SUPER_USERS' ? string
        'VALID_SPOOL_FILES' ? string
        'INVALID_LOG_FILES' ? string
        'JAVA_MAXHEAP_ARGUMENT' ? string
        'GRIDMANAGER' ? string
        'GT2_GAHP' ? string
        'GRID_MONITOR' ? string
        'GRIDMANAGER_DEBUG' ? string
        'GRIDMANAGER_LOG' ? string
        'MAX_GRIDMANAGER_LOG' ? string
        'GRIDSHELL' ? string
        'GRIDMANAGER_MAX_JOBMANAGERS_PER_RESOURCE' ? string
        'GRIDMANAGER_CHECKPROXY_INTERVAL' ? string
        'GRIDMANAGER_MINIMUM_PROXY_TIME' ? string
        'DEFAULT_UNIVERSE' ? string
        'CRED_MIN_TIME_LEFT' ? string
        'ENABLE_GRID_MONITOR' ? string
        'CONDOR_GAHP' ? string
        'MAX_C_GAHP_LOG' ? string
        'C_GAHP_LOG' ? string
        'C_GAHP_WORKER_THREAD_LOG' ? string
        'NORDUGRID_GAHP' ? string
        'C_GAHP_TIMEOUT_MULTIPLIER' ? string
        'C_GAHP_WORKER_THREAD_TIMEOUT_MULTIPLIER' ? string
        'CLASSAD_LIFETIME' ? string
        'CONDOR_JOB_POLL_INTERVAL' ? string
        'COLLECTOR_TIMEOUT_MULTIPLIER' ? string
        'DAGMAN_ALLOW_EVENTS' ? string
        'GLITE_CONDORC_DEBUG_LEVEL' ? string
        'GLITE_CONDORC_LOG_DIR' ? string
        'GLOBUS_GATEKEEPER_TIMEOUT' ? string
        'GRID_MONITOR_HEARTBEAT_TIMEOUT' ? string
        'GRID_MONITOR_RETRY_DURATION' ? string
        'GRIDMANAGER_GLOBUS_COMMIT_TIMEOUT' ? string
        'GRIDMANAGER_MAX_PENDING_SUBMITS_PER_RESOURCE' ? string
        'GRIDMANAGER_MAX_SUBMITTED_JOBS_PER_RESOURCE' ? string
        'GRIDMANAGER_TIMEOUT_MULTIPLIER' ? string
        'GSI_DAEMON_CERT' ? string
        'GSI_DAEMON_KEY' ? string
        'HOLD_JOB_IF_CREDENTIAL_EXPIRES' ? string
        'HOSTALLOW_WRITE' ? string
        'NEGOTIATOR_INTERVAL' ? string
        'NEGOTIATOR_MATCHLIST_CACHING' ? string
        'NEGOTIATOR_UPDATE_INTERVAL' ? string
        'SEC_DEFAULT_NEGOTIATION' ? string
        'SEC_DEFAULT_AUTHENTICATION' ? string
        'SEC_DEFAULT_AUTHENTICATION_METHODS' ? string
        'SCHEDD_TIMEOUT_MULTIPLIER' ? string
        'TOOL_TIMEOUT_MULTIPLIER' ? string
};

bind '/software/components/condorconfig' = condorconfig_component;
