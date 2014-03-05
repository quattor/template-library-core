################################################################################
# This is 'TPL/schema.tpl', a ncm-condorconfig's file
################################################################################
#
# VERSION:    1.1.0, 09/04/08 16:55
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Charles Loomis <charles.loomis@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/condorconfig/schema;

include { 'quattor/schema' };

type component_condorconfig = {
	include structure_component
        'configFile' : string = '/opt/condor/etc/condor.conf'
        'user' : string = 'edguser'
        'CONDOR_HOST' ? string
        'RELEASE_DIR' ? string
        'LOCAL_DIR' ? string
        'CONDOR_ADMIN' ? string
        'MAIL' ? string
        'UID_DOMAIN' ? string
        'FILESYSTEM_DOMAIN' ? string
        'GLIDEIN_SITES' ? string
        'DAEMON_LIST' ? string
        'NEGOTIATOR_HOST' ? string
        'POOL_HOSTS' ? string
        'FLOCK_FROM' ? string
        'FLOCK_TO' ? string
        'FLOCK_NEGOTIATOR_HOSTS' ? string
        'FLOCK_COLLECTOR_HOSTS' ? string
        'HOSTALLOW_ADMINISTRATOR' ? string
        'HOSTALLOW_OWNER' ? string
        'HOSTALLOW_READ' ? string
        'HOSTALLOW_WRITE' ? string
        'HOSTALLOW_NEGOTIATOR' ? string
        'HOSTALLOW_NEGOTIATOR_SCHEDD' ? string
        'HOSTALLOW_WRITE_COLLECTOR' ? string
        'HOSTALLOW_WRITE_STARTD' ? string
        'HOSTALLOW_READ_COLLECTOR' ? string
        'HOSTALLOW_READ_STARTD' ? string
        'LOCK' ? string
        'MAX_SCHEDD_LOG' ? string
        'SCHEDD_DEBUG' ? string
        'MAX_GRIDMANAGER_LOG' ? string
        'GRIDMANAGER_DEBUG' ? string
        'MAX_COLLECTOR_LOG' ? string
        'COLLECTOR_DEBUG' ? string
        'MAX_NEGOTIATOR_LOG' ? string
        'NEGOTIATOR_DEBUG' ? string
        'MAX_NEGOTIATOR_MATCH_LOG' ? string
        'MAX_SHADOW_LOG' ? string
        'SHADOW_DEBUG' ? string
        'MINUTE' ? string
        'HOUR' ? string
        'StateTimer' ? string
        'ActivityTimer' ? string
        'ActivationTimer' ? string
        'LastCkpt' ? string
        'STANDARD' ? string
        'PVM' ? string
        'VANILLA' ? string
        'IsPVM' ? string
        'IsVANILLA' ? string
        'IsSTANDARD' ? string
        'NonCondorLoadAvg' ? string
        'BackgroundLoad' ? string
        'HighLoad' ? string
        'StartIdleTime' ? string
        'ContinueIdleTime' ? string
        'MaxSuspendTime' ? string
        'MaxVacateTime' ? string
        'KeyboardBusy' ? string
        'ConsoleBusy' ? string
        'CPU_Idle' ? string
        'CPU_Busy' ? string
        'BigJob' ? string
        'MediumJob' ? string
        'SmallJob' ? string
        'JustCPU' ? string
        'MachineBusy' ? string
        'DISABLE_AUTH_NEGOTIATION' ? string
        'LOG' ? string
        'SPOOL' ? string
        'EXECUTE' ? string
        'BIN' ? string
        'LIB' ? string
        'SBIN' ? string
        'HISTORY' ? string
        'MASTER_LOG' ? string
        'SCHEDD_LOG' ? string
        'GRIDMANAGER_LOG' ? string
        'SHADOW_LOG' ? string
        'COLLECTOR_LOG' ? string
        'NEGOTIATOR_LOG' ? string
        'NEGOTIATOR_MATCH_LOG' ? string
        'SHADOW_LOCK' ? string
        'RESERVED_DISK' ? string
        'MASTER' ? string
        'SCHEDD' ? string
        'NEGOTIATOR' ? string
        'COLLECTOR' ? string
        'MASTER_ADDRESS_FILE' ? string
        'PREEN' ? string
        'PREEN_ARGS' ? string
        'SHADOW' ? string
        'SHADOW_PVM' ? string
        'GRIDMANAGER' ? string
        'GAHP' ? string
        'SCHEDD_ADDRESS_FILE' ? string
        'SHADOW_SIZE_ESTIMATE' ? string
        'SHADOW_RENICE_INCREMENT' ? string
        'QUEUE_SUPER_USERS' ? string
        'PVMD' ? string
        'PVMGS' ? string
        'DEFAULT_UNIVERSE' ? string
        'CRED_MIN_TIME_LEFT' ? string
        'VALID_SPOOL_FILES' ? string
        'INVALID_LOG_FILES' ? string
        'GLIDEIN_SERVER_NAME' ? string
        'GLIDEIN_SERVER_DIR' ? string
        'AUTHENTICATION_METHODS' ? string
        'ENABLE_GRID_MONITOR' ? boolean
        'GRID_MONITOR' ? string
        'GRIDMANAGER_MINIMUM_PROXY_TIME' ? string
        'GRIDMANAGER_MAX_SUBMITTED_JOBS_PER_RESOURCE' ? string
        'GRIDMANAGER_MAX_PENDING_SUBMITS_PER_RESOURCE' ? string
        'GRIDMANAGER_MAX_PENDING_REQUESTS' ? string
        'GRIDMANAGER_GAHP_CALL_TIMEOUT' ? string
        'GRID_MONITOR_HEARTBEAT_TIMEOUT' ? long
        'GRID_MONITOR_RETRY_DURATION' ? long
        'CONDOR_IDS' ? string
        'COLLECTOR_HOST' ? string
        'GLITE_CONDORC_DEBUG_LEVEL' ? string
        'GLITE_CONDORC_LOG_DIR' ? string
        'USERNAME' ? string
        'NEGOTIATOR_IGNORE_USER_PRIORITIES' ? boolean
        'LOCAL_CONFIG_FILE' ? string
        'STARTER_LIST' ? string
        'STARTER' ? string
        'STARTER_PVM' ? string
        'STARTER_STANDARD' ? string
        'STARTER_LOCAL' ? string
        'MAX_STARTD_LOG' ? string
        'STARTD_DEBUG' ? string
        'STARTD_LOG' ? string
        'STARTD' ? string
        'STARTD_ADDRESS_FILE' ? string
        'STARTD_EXPRS' ? string
        'STARTD_JOB_EXPRS' ? string
        'CONTINUE' ? string
        'WANT_SUSPEND' ? string
        'WANT_VACATE' ? string
        'KILL' ? boolean
        'PREEMPT' ? boolean
        'START' ? boolean
        'SUSPEND' ? boolean
        'GRIDMANAGER_CHECKPROXY_INTERVAL' ? long
        'GRIDMANAGER_GLOBUS_COMMIT_TIMEOUT' ? long
        'GRIDMANAGER_MAX_JOBMANAGERS_PER_RESOURCE' ? long
        'GRIDMANAGER_TIMEOUT_MULTIPLIER' ? long
        'CLASSAD_LIFETIME'? long
        'COLLECTOR_TIMEOUT_MULTIPLIER'? long
        'CONDOR_GAHP'? string
        'CONDOR_JOB_POLL_INTERVAL'? long
        'C_GAHP_LOG'? string
        'C_GAHP_TIMEOUT_MULTIPLIER'? long
        'C_GAHP_WORKER_THREAD_LOG'? string
        'C_GAHP_WORKER_THREAD_TIMEOUT_MULTIPLIER'? long
        'DAGMAN_ALLOW_EVENTS'? long
        'GLOBUS_GATEKEEPER_TIMEOUT'? long
        'GRIDSHELL'? string
        'GSI_DAEMON_CERT'? string
        'GSI_DAEMON_KEY'? string
        'GT2_GAHP'? string
        'HIGHPORT'? long
        'HOLD_JOB_IF_CREDENTIAL_EXPIRES'? boolean
        'LOWPORT' ? long
        'MASTER_UPDATE_INTERVAL'? long
        'MAX_C_GAHP_LOG'? long
        'NEGOTIATOR_INTERVAL'? long
        'NEGOTIATOR_MATCHLIST_CACHING'? boolean
        'NEGOTIATOR_UPDATE_INTERVAL'? long
        'SCHEDD_INTERVAL'? long
        'SCHEDD_TIMEOUT_MULTIPLIER'? long
        'SEC_DEFAULT_AUTHENTICATION'? string
        'SEC_DEFAULT_AUTHENTICATION_METHODS'? string
        'SEC_DEFAULT_NEGOTIATION'? string
        'TOOL_TIMEOUT_MULTIPLIER'? long
        'UPDATE_INTERVAL'? long
};

bind '/software/components/condorconfig' = component_condorconfig;
