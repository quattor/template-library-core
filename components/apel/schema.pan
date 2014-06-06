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
      # apel, 14.5.0, 1, 20140606-1647
      #
#

declaration template components/apel/schema;

include { 'quattor/schema' };
include { 'pan/types' };

type structure_apel_db_delete_processor = {
	'cleanAll' : string with match(SELF, 'yes|no')
};

type structure_apel_cpu_processor = {
	'GIIS' ? type_hostname
	'DefaultCPUSpec' ? string with match(SELF, '^\d+:\d+$')
};

type structure_apel_event_log_processor = {
	'searchSubDirs' ? string with match(SELF, 'yes|no')
	'reprocess' ? string with match(SELF, 'yes|no')
	'Dir' : string
	'ExtraFile' ? string[]
	'Timezone' ? string
};

type structure_apel_gk_log_processor = {
	'SubmitHost' : type_hostname
	'searchSubDirs' ? string with match(SELF, 'yes|no')
	'reprocess' ? string with match(SELF, 'yes|no')
	'GKLogs' : string[]
	'MessageLogs' : string[]
};

type structure_apel_blahd_log_processor = {
	'SubmitHost' : type_hostname
	'BlahdLogPrefix' : string
	'BlahdLogDir' : string[]
	'searchSubDirs' : string with match(SELF, 'yes|no')
	'reprocess' : string with match(SELF, 'yes|no')
};


type structure_apel_join_processor = {
	'publishGlobalUserName' : string with match(SELF, 'yes|no')
	'Republish' : string with match(SELF, 'all|missing|nothing')
};

type structure_apel_file = {
	'enableDebugLogging' ? string with match(SELF, 'yes|no')
	'inspectTables' ? string with match(SELF, "yes|no")
	'DBURL' : string
	'DBUsername' : string
	'DBPassword' : string
        # Do not enforce a default for publishLimit in schema as this
        # option is not supported by old version of publisher
	'publishLimit' ? long
	'SiteName' : string
	'DBDeleteProcessor' ? structure_apel_db_delete_processor
	'CPUProcessor' ? structure_apel_cpu_processor
	'EventLogProcessor' ? structure_apel_event_log_processor
	'GKLogProcessor' ? structure_apel_gk_log_processor
	'JoinProcessor' ? structure_apel_join_processor
	'BlahdLogProcessor' ? structure_apel_blahd_log_processor
	# do not enforce following options, they are not supported by previous versions
	# BUT they are REQUIRED for newest versions, and will cause an unexplained apel crash
	# if not present
	'MaxInsertBatch' ? long
		#default value: 2000
	'ConsumerTimeout' ? long
		#default value 1800000
};


type apel_component = {
	include structure_component
	'configFiles' ? structure_apel_file{}
};

bind '/software/components/apel' = apel_component;
