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
# pbsserver, 15.4.0, 1, 2015-06-03T15:27:32Z
#
#

declaration template components/pbsserver/schema;

include { 'quattor/schema' };

type pbs_server_extended_att = {
    'attribute' : string
    'operator' : string with match(SELF, '^(\+\=|\=|\-\=)$')
    'value' : string
};

## from man pbs_server_attributes (NOT the read only ones!)
type pbs_server_attlist = {
    'accounting_keep_days'? long(0..)

    'acl_group_sloppy'    ? boolean
    'acl_host_enable'     ? boolean = false
    'acl_hosts'           ? string
    'acl_logic_or'        ? boolean = false
    'acl_user_enable'     ? boolean = false
    'acl_roots'           ? string

    'allow_node_submit'   ? boolean = false
    'allow_proxy_user'    ? boolean = false

    'auto_node_np'        ? boolean

    'clone_batch_delay'   ? long(0..)
    'clone_batch_size'    ? long(1..)

    'credential_lifetime' ? long(1..)

    'comment'             ? string

    'default_node'        ? string
    'default_queue'       ? string

    'down_on_error'       ? boolean

    'disable_server_id_check' ? boolean

    'extra_resc'          ? string

    'job_force_cancel_time' ? long(0..)

    'job_nanny'           ? boolean = false

    'job_start_timeout'   ? long(1..) 

    'job_stat_rate'       ? long(1..) = 150

    'keep_completed'      ? long(0..)

    'kill_delay'          ? long(0..)

    'lock_file'           ? string
    'lock_file_check_time' ? long(0..) 
    'lock_file_update_time' ? long(0..) 

    'log_events'          ? long(0..)
    'log_file_max_size'   ? long(0..) = 0
    'log_file_roll_depth' ? long(1..) = 10
    'log_keep_days'       ? long(0..)
    'log_level'           ? long(0..) = 0

    'mail_body_fmt'       ? string
    'mail_domain'         ? string
    'mail_from'           ? string
    'mail_subject_fmt'    ? string
    'mail_uid'            ? long(0..)
    
    'managers'            ? string

    'max_job_array_size'  ? long(0..)
    'max_slot_limit'      ? long(0..)
    'max_running'         ? long(0..)
    'max_user_run'        ? long(0..)
    'max_group_run'       ? long(0..)
    
    'mom_job_sync'        ? boolean = true
    
    'next_job_number'     ? long(0..)

    'no_mail_force'       ? boolean

    'node_check_rate'     ? long(10..) = 600
    'node_pack'           ? boolean
    'node_ping_rate'      ? long(10..) = 300
    'node_suffix'         ? string

    'np_default'          ? long(0..) 
    
    'operators'           ? string
    
    'owner_purge'         ? boolean
        
    'poll_jobs'           ? boolean = true
    
    'query_other_jobs'    ? boolean = false
    
    ## following does not exist in 3.0.X (should all be like resources_available.<resource>)
    'resources_available' ? string
    'resources_available.nodect' ? long(1..) = 2048
    ## following 2 are actually a list of 
    'resources_default'   ? string
    'resources_default.nodect' ? long(1..) 
    'resources_default.nodes' ? long(1..)
    'resources_max'       ? string
    
    'sched_version'       ? string
    'scheduler_iteration' ? long(1..)
    'scheduling'          ? boolean
    
    'server_name'         ? type_hostname
    
    'submit_hosts'         ? string
    
    'tcp_timeout'         ? long(1..) = 8

    'checkpoint_dir'    ? string

    'moab_array_compatible' ? boolean
    
    'authorized_users'	  ? string
};

type pbs_server = {
    'manualconfig' : boolean
    'attlist'      ? pbs_server_attlist
    'extended_att' ? pbs_server_extended_att[0..]
};

type pbs_queue_attlist = {
    'acl_group_enable'       ? boolean
    'acl_group_sloppy'       ? boolean
    'acl_groups'             ? string
    'acl_host_enable'        ? boolean
    'acl_hosts'              ? string
    'acl_logic_or'           ? boolean
    'acl_user_enable'        ? boolean
    'acl_users'              ? string
    
    'alter_router'           ? boolean
    
    'checkpoint_defaults'    ? string
    'checkpoint_min'         ? long(0..)
    
    ## comma-separated list
    'disallowed'             ? string

    'enabled'                ? boolean

    'from_route_only'        ? boolean

    'is_transit'             ? boolean 

    'keep_completed'         ? long(0..)
    
    'kill_delay'             ? long(0..)

    'max_queuable'           ? long(1..)
    'max_group_run'           ? long(0..)  
    'max_user_run'           ? long(0..)  
    'max_user_queuable'      ? long(1..)
    'max_running'            ? long(1..)

    'Priority'               ? long(0..)

    'queue_type'             ? string

    'resources_available.nodect' ? long(1..) = 2048
    'resources_default.mem'  ? string
    'resources_default.neednodes' ? string
    'resources_default.nice' ? long(0..)
    'resources_default.nodect'  ? long(1..)
    'resources_default.pmem' ? string
    'resources_default.pvmem' ? string
    'resources_default.vmem' ? string
    'resources_default.walltime' ? string
    'resources_max.cput'     ? string
    'resources_max.file'     ? string
    'resources_max.mem'      ? string
    'resources_max.nice'     ? long(1..)
    'resources_max.nodect'   ? long(1..)
    'resources_max.pcput'    ? string
    'resources_max.pmem'     ? string
    'resources_max.pvmem'    ? string
    'resources_max.vmem'     ? string
    'resources_max.walltime' ? string
    'resources_min.mem'      ? string
    'resources_min.nice'     ? long(1..)
    'resources_min.pmem'     ? string
    'resources_min.pvmem'    ? string
    'resources_min.vmem'     ? string
    'resources_min.walltime' ? string
    
    'started'                ? boolean

    'route_destinations'	 ? string
    'route_held_jobs'        ? boolean
    'route_lifetime'         ? long(0..)   
    'route_retry_time'       ? long(0..)
    'route_waiting_jobs'     ? boolean
};

type pbs_queue = {
    'manualconfig' : boolean
    'attlist'      ? pbs_queue_attlist
};

type pbs_queuelist = {
    'manualconfig' : boolean
    'queuelist'    ? pbs_queue{}
};

type pbs_node_attlist = {
    'np'         ? long(1..)
    'properties' ? string
    'state'      ? string with match(SELF,'free|down|offline')
    'ntype'      ? string
};

type pbs_node = {
    'manualconfig' : boolean
    'attlist'      ? pbs_node_attlist
};

type pbs_nodelist = {
    'manualconfig' : boolean
    'nodelist'     ? pbs_node{}
};

type pbsserver_component = {
    include structure_component
    'pbsroot'      ? string
    'binpath'      ? string
    'submitfilter' ? string
    'env'          ? string{}
    'server'       ? pbs_server
    'queue'        ? pbs_queuelist
    'node'         ? pbs_nodelist
    'ignoretorquecfg'    ? boolean = false
};

bind '/software/components/pbsserver' = pbsserver_component;
