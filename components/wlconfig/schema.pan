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
# wlconfig, 15.2.0, 1, 20150323-1249
#
#

declaration template components/wlconfig/schema;

include { 'quattor/schema' };

type structure_wl_log = {
        'file'  : string
        'level' : long(1..)
};

type structure_wl_jobcontroller = {
        'condorSubmit'    : string = '${CONDORG_INSTALL_PATH}/bin/condor_submit'
        'condorRemove'    : string = '${CONDORG_INSTALL_PATH}/bin/condor_rm'
        'condorQuery'     : string = '${CONDORG_INSTALL_PATH}/bin/condor_q'
        'condorSubmitDAG' : string = '${CONDORG_INSTALL_PATH}/bin/condor_submit_dag'
        'condorRelease'   : string = '${CONDORG_INSTALL_PATH}/bin/condor_release'
        'container'       : long = 1000
        'submitFile'      : string = '${EDG_WL_TMP}/jobcontrol/submit'
        'outputFile'      : string = '${EDG_WL_TMP}/jobcontrol/cond'
        'queueFile'       : string = '${EDG_WL_TMP}/jobcontrol/queue.fl'
        'lockFile'        : string = '${EDG_WL_TMP}/jobcontrol/lock'
        'log'             : structure_wl_log = nlist('file', '${EDG_WL_TMP}/jobcontrol/log/events.log', 'level', 5)
};

type structure_wl_logmonitor = {
        'jobsPerCondorLog'   : long(1..) = 1000
        'mainLoopDuration'   : long(1..) = 10
        'condorLogDir'       : string = '${EDG_WL_TMP}/logmonitor/CondorG.log'
        'condorRecycleDir'   : string = '${EDG_WL_TMP}/logmonitor/CondorG.log/recycle'
        'monitorInternalDir' : string = '${EDG_WL_TMP}/logmonitor/internal'
        'idRepositoryName'   : string = 'irepository.dat'
        'abortedJobsTimeout' : long(1..) = 600
        'externalLogFile'    : string = '${EDG_WL_TMP}/logmonitor/log/external.log'
        'lockFile'           : string = '${EDG_WL_TMP}/logmonitor/lock'
        'log'                : structure_wl_log = nlist('file', '${EDG_WL_TMP}/logmonitor/log/events.log', 'level', 5)
};

type structure_wl_networkserver = {
        'iiPort'                : type_port = 2135
        'iiTimeout'             : long(1..) = 60
        'iiDN'                  : string = 'mds-vo-name=local, o=grid'
        'iiHost'                : type_hostname
        'grisPort'              : type_port = 2135
        'grisTimeout'           : long(1..) = 20
        'grisDN'                : string = 'mds-vo-name=local, o=grid'
        'backLogSize'           : long(0..) = 16
        'listeningPort'         : type_port = 7772
        'masterThreads'         : long(0..) = 8
        'dispatcherThreads'     : long(0..) = 8
        'sandboxStagingPath'    : string = '${EDG_WL_TMP}/SandboxDir'
        'quotaManagement'       : boolean = false
        'quotaSandboxSize'      : long(0..) = 10000000
        'quotaAdjustment'       : boolean = false
        'quotaAdjustmentAmount' : long(0..) = 2000
        'reservedDiskPercentage' : double = 2.0 with (self>=0.0 && self<=100.0) 
        'log'                   : structure_wl_log = nlist('file', '${EDG_WL_TMP}/networkserver/log/events.log', 'level', 5)
        'DLICatalog'            ? string[]
        'RLSCatalog'            ? string[]
};

type structure_wl_workloadmanager = {
        'pipeDepth'      : long(0..) = 1
        'workerThreads'  : long(0..) = 1
        'dispatcherType' : string = 'filelist'
        'inputFile'      : string = '${EDG_WL_TMP}/workload_manager/input.fl'
        'maxRetryCount'  : long(1..) = 10
        'log'            : structure_wl_log = nlist('file', '${EDG_WL_TMP}/workload_manager/log/events.log', 'level', 5)
};


type wlconfig_component = {
	include structure_component
        'configFile'      : string = 'edg_wl.conf'
        'user'            : string = '${EDG_WL_USER}'
        'hostProxyFile'   : string = '${EDG_WL_TMP}/networkserver/ns.proxy'
        'grisCache'       : long(1..) = 1
        'useCachedResourceInfo' : boolean = true
	'jobController'   : structure_wl_jobcontroller = nlist()
	'logMonitor'      : structure_wl_logmonitor = nlist()
	'networkServer'   : structure_wl_networkserver = nlist()
	'workloadManager' : structure_wl_workloadmanager = nlist()
};

bind '/software/components/wlconfig' = wlconfig_component;
