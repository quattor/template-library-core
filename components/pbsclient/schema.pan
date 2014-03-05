################################################################################
# This is 'TPL/schema.tpl', a ncm-pbsclient's file
################################################################################
#
# VERSION:    2.0.2, 26/09/12 17:53
# AUTHOR:     David Groep <davidg@nikhef.nl>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
#  ** Generated file : do not edit **
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################


declaration template components/pbsclient/schema;

include { 'quattor/schema' };

type component_pbsclient_pathmapping_type = {
    "locations" : string
    "path"      : string
};

type component_pbsclient_scripts_type = {
    "epilogue"          ? string
    "epilogue.user"     ? string
    "epilogue.parallel" ? string
    "prologue"          ? string
    "prologue.user"     ? string
    "prologue.parallel" ? string
};

type component_pbsclient_structure_initialisation = {
    ## initialisation values
    ## regular (see PBSINITIALISATIONVALUES)
    ## The expressions start with the variable t  (total  assigned  CPUs)  or  c  (existing CPUs), an operator (+ - / *), and followed by a float constant
    "auto_ideal_load"           ? string with match (SELF,'^[tc][+-/*]\d+(\.\d+)?')
    "auto_max_load"             ? string with match (SELF,'^[tc][+-/*]\d+(\.\d+)?')

    "check_poll_time"           ? long(0..)

    "checkpoint_interval"       ? long
    "checkpoint_script"         ? string
    "checkpoint_run_exe"        ? string
    
    "configversion"             ? string 
    
    "cputmult"                  ? double
    
    "down_on_error"             ? boolean 
    
    "enablemomrestart"          ? boolean
    
    "ideal_load"                ? double
    
    "igncput"                   ? boolean
    "ignmem"                   ? boolean
    "ignvmem"                   ? boolean 
    "ignwalltime"               ? boolean
    
    ## octal, hex, or "userdefault"
    "job_output_file_mask"      ? string
     
    "log_directory"             ? string 
    "logevent"                  ? long
    "log_file_suffix"           ? string
    "log_keep_days"             ? long(0..)
    "loglevel"                  ? long(0..7)
    "log_file_max_size"         ? long(0..) 
    "log_file_roll_depth"       ? long(1..)

    "max_conn_timeout_micro_sec" ? long

    "max_load"                  ? double 
    
    "memory_pressure_threshold" ? double  
    "memory_pressure_duration"  ? long(0..)
    
    "node_check_script"         ? string
    "node_check_interval"       ? string[]
    
    "nodefile_suffix"           ? string 
    
    "nospool_dir_list"          ? string[]

    "prologalarm"               ? long 

    "rcpcmd"                    ? string             

    "remote_checkpoint_dirs"    ? string 

    "remote_reconfig"           ? boolean

    "restart_script"            ? string

    "source_login_batch"        ? boolean
    "source_login_interactive"  ? boolean

    "spool_as_final_name"       ? boolean

    "status_update_time"        ? long
    
    "tmpdir"                   ? string
    
    "timeout"                   ? long

    "use_smt"                   ? boolean

    "wallmult"                  ? double 

    ## camelCase style (legacy) (see PBSINITIALISATIONVALUESMAP)
    "cpuTimeMultFactor"         ? double
    "idealLoad"                 ? double
    "logEvent"                  ? long
    "maxLoad"                   ? double
    "nodeCheckScriptPath"       ? string
    "nodeCheckIntervalSec"      ? long
    "prologAlarmSec"            ? long
    "wallTimeMultFactor"        ? double
};

type component_pbsclient_structure_options = {
    ## other options
    'mom_host'              ? string
    'xauthpath'             ? string
};


type component_pbsclient_type = {
    include structure_component

    "pbsroot"    ? string
    "configPath" ? string
    "initScriptPath" ? string

    ## if behaviour = Torque, first entry of the masters is the $pbsmastername (which is old torque option?)
    ##                Torque3 uses $pbsserver instead of $clienthost
    ## default is ok
    "behaviour" ? string = 'OpenPBS' with match (SELF,'OpenPBS|Torque|Torque3')

    "masters"       : string[]
    "pbsclient"     ? string[]
    "aliases"       ? string[]
    "restricted"    ? string[]
    "cpuinfo"       ? string[]
    "varattr"       ? string[]

    ## Static Resources / Shell Commands / size[fs=<FS>]
    "resources" ? string[]

    ## $usecp directives
    "directPaths" ? component_pbsclient_pathmapping_type[]

    ## prologue and epilogue
    "scripts" ? component_pbsclient_scripts_type

    include component_pbsclient_structure_initialisation

    include component_pbsclient_structure_options
};


bind "/software/components/pbsclient" = component_pbsclient_type;
