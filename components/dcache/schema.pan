# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn.De.Weirdt@cern.ch <Stijn.De.Weirdt@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# dcache, 15.2.0, 1, 20150323-1249
#
#

declaration template components/dcache/schema;

include { 'quattor/schema' };

type structure_dcache_unit_units = {
	"cond" : string
	"ugroup" : string[]
};

type structure_dcache_unit = {
	"units" : structure_dcache_unit_units[]{}
	"ignore_ugroup" ? string[]
};

type structure_dcache_link_preference = {
	"read" ? long with (self>=0)	
	"write" ? long with (self>=0)	
	"cache" ? long with (self>=0)	
	"p2p"	? long with (self>=0)	
};

type structure_dcache_link_default_preference = {
	include structure_dcache_link_preference
	"default" ? long with (self>=0)	
};

type structure_dcache_link_policy = {
	"nearline" ? boolean
	"online" ? boolean
	"custodial" ? boolean
	"output" ? boolean
	"replica" ? boolean
};

type structure_dcache_link_default_policy = {
	include structure_dcache_link_policy
	"default" ? boolean
};

type structure_dcache_link_linkgroups = {
	include structure_dcache_link_policy
	"links" ? string[]
};

type structure_dcache_link_links = {
	include structure_dcache_link_preference
	"ugroup" : string[]
	"pgroup" : string[]
	"lgroup" ? string
};

type structure_dcache_link = {
	"links" : structure_dcache_link_links{}
	"ignore_link" ? string[]
	"def_preference" ? structure_dcache_link_default_preference
	"def_policy" ? structure_dcache_link_default_policy
	"ignore_linkgroup" ? string[]
	"linkgroups" ? structure_dcache_link_linkgroups{}
};

type structure_dcache_pool_pools = {
	"path" : string
	"size" ? long with (self>=0)	
	"opt" ? string
	"pgroup" ? string[]
	"mover_max" ? long with (self>=0)	
	"ulimit_n" ? long with (self>=0)
};


type structure_dcache_pool = {
	"pools" ? structure_dcache_pool_pools[]{}
	"ignore_pgroup" ? string[]
	"default_mover_max" ? long with (self>=0)
	"default_ulimit_n" ? long with (self>=0)	
	"max_true_pool_size_prom" ? long with (self>=0)	
};

type structure_dcache_dcachesetup = {
	"serviceLocatorHost" : type_fqdn
	"cacheInfo" ? string
	"java" ? string
	"pnfs" ? string
	"ftpBase" ? string
	"portBase" ? long with (self>=0)	
	"logArea" ? string
	"parallelStreams" ? long with (self>=0)	
	"bufferSize" ? long with (self>=0)	
	"tcpBufferSize" ? long with (self>=0)	
	"billingToDb" ? string
	"infoProviderStaticFile" ? string
	"metaDataRepository" ? string
	"metaDataRepositoryImport" ? string
	"PermissionHandlerDataSource" ? string
};	

type structure_dcache_node_config = {
	"node_type" : string
	# dcache_base_dir is deprecated for dcache_home
	#"dcache_base_dir" ? string

	"dcache_home" ? string
	
	"pnfs_root" ? string
	"pnfs_install_dir" ? string
	"pnfs_start" ? boolean
	"pnfs_overwrite" ? boolean
	
	"pool_path" ? string
	"number_of_movers" ? long with (self>=0)	
	"server_id" ? string
	"admin_node" ? type_fqdn
	
	"gsidcap" ? boolean
	"gridftp" ? boolean
	"srm" ? boolean
	"xrootd" ? boolean
	"dcap" ? boolean
	"replicaManager" ? boolean
	"pnfsManager" ? boolean
	"lmDomain" ? boolean
	"httpDomain" ? boolean
	"adminDoor" ? boolean
	"poolManager" ? boolean
	"utilityDomain" ? boolean
	"dirDomain" ? boolean
	"gPlazmaService" ? boolean
	"infoProvider" ? boolean
	
	"namespace" ? string
    "namespace_node" ? string
};

type structure_dcache_pnfs_setup = {
	"shmservers" ? long with (self>=0)	
};

type structure_dcache_pnfs_config = {
	"pnfs_install_dir" ? string
	"pnfs_root" ? string
	"pnfs_db" ? string
	"pnfs_log" ? string
	"pnfs_overwrite" ? boolean
	"pnfs_psql_user" ? string
};

type structure_dcache_pnfs_db = {
	"path" : string
	"name" : string
	"user" ? string
	"group" ? string
	"perm" ? string
};	

type structure_dcache_pnfs_exports_rule = {
	"mount" : string
	"path" : string
	"perm" : string
	"opt" ? string
};	

type structure_dcache_pnfs_exports = {
	"ip" : type_ip
	"netmask" ? type_ip
	"rule" : structure_dcache_pnfs_exports_rule[]
};	

type structure_dcache_pnfs = {
	"pnfs_config" ? structure_dcache_pnfs_config
	"pnfs_config_def" ? string[]
	"databases" ? structure_dcache_pnfs_db[]
	"exports" : structure_dcache_pnfs_exports[]
	"pnfs_setup" ? structure_dcache_pnfs_setup
	"pnfs_setup_def" ? string[]
};

type structure_dcache_create = {
	'batchname' : string
	'name' : string
	'cell' : string
	'context' ? string{}
	'opt' ? string{}
};

type structure_dcache_batch = {
	'create' : structure_dcache_create[]
	'batch_read' ? string
	'batch_write' ? string
	'batch_template' ? boolean
};

type structure_dcache_config = {
	"dc_dir" ? string
	"node_config_def" ? string[]
	"node_config" : structure_dcache_node_config
	"dCacheSetup_def" ? string[]
	"dCacheSetup" : structure_dcache_dcachesetup
	"admin_passwd" ? string
	"debug_print" ? long with (self>0)
	"jythonjavahome" : string
};

type structure_dcache_chimera = {
    "paths" ? string[]
    "exports" ? string[]
    "default_dcap" ? string
};

type dcache_component = {
    include structure_component
	include structure_component_dependency
	"pool"  ? structure_dcache_pool
	"config": structure_dcache_config
	"pnfs" ? structure_dcache_pnfs
    "chimera" ? structure_dcache_chimera
	"unit"  ? structure_dcache_unit
	"link"  ? structure_dcache_link
	"batch"	? structure_dcache_batch
	"postgresql" ? string
};

bind '/software/components/dcache' = dcache_component;

