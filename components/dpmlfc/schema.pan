# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# dpmlfc, 17.12.0-rc1, rc1_1, Mon Dec 18 2017
#
#

declaration template components/dpmlfc/schema;

include 'quattor/schema';

function component_dpmlfc_number_string_valid = {
    if ( !match(ARGV[0], '^\d+$') ) {
        error(format("String '%s' is not a valid number", ARGV[0]));
    };
    true;
};

function component_dpmlfc_global_options_valid = {
    if ( !is_defined(ARGV[0]) ) {
        error('Internal error: DPM/LFC global options undefined in validation function');
    };

    if ( exists(ARGV[0]['accessProtocols']) && is_defined(ARGV[0]['accessProtocols']) ) {
        if ( !is_list(ARGV[0]['accessProtocols']) ) {
            error("Global option 'accessProtocols' must be a list");
        };
        foreach (i;protocol;ARGV[0]['accessProtocols']) {
            if ( !match(protocol, '^https|gsiftp|rfio|xroot$') ) {
                error('Invalid DPM access protocol specified (' + protocol + '). Must be https, gsiftp, rfio or xroot');
            };
        };
    };

    if ( exists(ARGV[0]['controlProtocols']) && is_defined(ARGV[0]['controlProtocols']) ) {
        if ( !is_list(ARGV[0]['controlProtocols']) ) {
            error("Global option 'controlProtocols' must be a list");
        };
        foreach (i;protocol;ARGV[0]['controlProtocols']) {
            if ( !match(protocol, '^srmv1|srmv2|srmv2.2$') ) {
                error('Invalid DPM control protocol specified (' + protocol + '). Must be srmv1, srmv2 or srmv2.2');
            };
        };
    };

    true;
};

# Validation of xroot access rules
function component_dpmlfc_xroot_access_rules_valid = {
    if ( !is_defined(ARGV[0]) ) {
        error('Internal error: DPM xroot access rules undefined in validation function');
    };

    foreach (i;operation_type;list('authenticated', 'unauthenticated')) {
        if ( is_defined(ARGV[0][operation_type]) ) {
            foreach (j;operation;ARGV[0][operation_type]) {
                if ( !match(operation, '^delete|read|write|write-once$') ) {
                    error('Invalid operation (' + operation + ') specified in xroot access rules for ' + operation_type + ' operations');
                };
            };
        };
    };
    true;
};

# Validation of node parameters
function component_dpmlfc_node_config_valid = {
    # Check 'requestMaxAge is a valid value. See man dpm.
    if ( is_defined(ARGV[0]['requestMaxAge']) ) {
        if ( !match(ARGV[0]['requestMaxAge'], '^[0-9]+[ymdh]*$') ) {
            error("'requestMaxAge' must be a number optionally followed by 'y' (year), 'm' (month), 'd' (day) or 'h' (hour).");
        }
    };
    true;
};

# Validation of dav parameters
function component_dpmlfc_dav_config_valid = {
    valid_disk_ns_flags = '^Write|RemoteCopy|NoAuthn$';
    if ( is_defined(ARGV[0]['DiskFlags']) ) {
        foreach (i;flag;ARGV[0]['DiskFlags']) {
            if ( !match(flag, valid_disk_ns_flags) ) error(format("DiskFlags invalid value (must match '%s')", valid_disk_ns_flags));
        };
    };
    if ( is_defined(ARGV[0]['NSFlags']) ) {
        foreach (i;flag;ARGV[0]['NSFlags']) {
            if ( !match(flag, valid_disk_ns_flags) ) error(format("NSFlags invalid value (must match '%s')", valid_disk_ns_flags));
        };
    };
    true;
};

type dpmlfc_component_fs_entry = {
    "host" ? string
    "name" ? string
    "status" ? string
};

type dpmlfc_component_pool_entry = {
    "def_filesize" ? string
    "gc_start_thresh" ? long(0..)
    "gc_stop_thresh" ? long(0..)
    "def_pintime" ? long(0..)
    "gid" ? long(1..)
    "group" ? string
    "put_retenp" ? long(0..)
    "s_type" ? string with match (SELF, '^-|D|P|V$')
    "fs" ? dpmlfc_component_fs_entry[]
};

type dpmlfc_component_vo_entry = {
    "gid" ? long = -1
};

type dpmlfc_component_node_config = {
    "logfile" ? string
    "port" ? type_port
    "allowCoreDump" ? boolean
    "threads" ? long
    "maxOpenFiles" ? long
    "globusThreadModel" : string = "pthread"
} with component_dpmlfc_node_config_valid(SELF);

type dpmlfc_component_dpm_node_config = {
    include dpmlfc_component_node_config
    "requestMaxAge" ? string
    "fastThreads" ? long
    "slowThreads" ? long
    "useSyncGet" ? boolean
};

type dpmlfc_component_rfio_gsiftp_node_config = {
    include dpmlfc_component_node_config
    "portRange" ? string
};

type dpmlfc_component_dpns_node_config = {
    include dpmlfc_component_node_config
    "readonly" ? boolean
};

# DAV related parameters: see zlcgdm-dav.conf for parameter documentation
type dpmlfc_component_dav_node_config = {
    "DiskAnonUser" ? string
    "DiskFlags" ? string[]
    "NSAnonUser" ? string
    "NSFlags" ? string[]
    "NSMaxReplicas" ? long
    "NSRedirectPort" ? long[] with length(SELF) == 2
    "NSSecureRedirect" ? string with match(to_lowercase(SELF), '^on|off$')
    "NSServer" ? string[] with length(SELF) == 2 && component_dpmlfc_number_string_valid(SELF[1])
    "NSTrustedDNs" ? string[]
    "NSType" ? string with match(SELF, '^DPM|LFC$')
    "SSLCertFile" ? string
    "SSLCertKey" ? string
    "SSLCACertPath" ? string
    "SSLCARevocationPath" ? string
    "SSLCipherSuite" ? string[]
    "SSLHonorCipherOrder" ? string
    "SSLOptions" ? string[]
    "SSLProtocol" ? string[]
    "SSLSessionCache" ? string
    "SSLSessionCacheTimeout" ? long
    "SSLVerifyClient" ? string with match(to_lowercase(SELF), '^none|optional|require$')
    "SSLVerifyDepth" ? long
} with component_dpmlfc_dav_config_valid(SELF);

type dpmlfc_component_lfc_node_config = {
    include dpmlfc_component_dpns_node_config
    "disableAutoVirtualIDs" ? boolean
};

# Protocol options acts as default values for node specific options.
# Using protocol options rather than node specific options helps to
# maintain a consistent configuration across nodes.
type dpmlfc_component_protocol_options = {
    "dav" ? dpmlfc_component_dav_node_config
    "dpm" ? dpmlfc_component_dpm_node_config
    "dpns" ? dpmlfc_component_dpns_node_config
    "gsiftp" ? dpmlfc_component_rfio_gsiftp_node_config
    "rfio" ? dpmlfc_component_rfio_gsiftp_node_config
    "srmv1" ? dpmlfc_component_node_config
    "srmv2" ? dpmlfc_component_node_config
    "srmv22" ? dpmlfc_component_node_config
    "xroot" ? dpmlfc_component_node_config
    "copyd" ? dpmlfc_component_node_config
};

type dpmlfc_component_db_conn_options = {
    "configfile" ? string
    "configmode" ? string = '600'
    "server" ? string
    "user" : string = "dpmmgr"
    "password" : string
    "infoFile" ? string
    "infoUser" ? string
    "infoPwd" ? string
};

type dpmlfc_component_global_options = {
    "user" ? string
    "group" ? string
    "db" ? dpmlfc_component_db_conn_options
    "installDir" ? string = '/'
    "gridmapfile" ? string
    "gridmapdir" ? string
    "accessProtocols" ? string[]
    "controlProtocols" ? string[]
} with component_dpmlfc_global_options_valid(SELF);

type dpmlfc_component_global_options_tree = {
    "dpm" ? dpmlfc_component_global_options
    "lfc" ? dpmlfc_component_global_options
};

type dpmlfc_component = {
    include structure_component

    "dav" ? dpmlfc_component_dav_node_config{}
    "dpm" ? dpmlfc_component_dpm_node_config{}
    "dpns" ? dpmlfc_component_dpns_node_config{}
    "gsiftp" ? dpmlfc_component_rfio_gsiftp_node_config{}
    "rfio" ? dpmlfc_component_rfio_gsiftp_node_config{}
    "srmv1" ? dpmlfc_component_node_config{}
    "srmv2" ? dpmlfc_component_node_config{}
    "srmv22" ? dpmlfc_component_node_config{}
    "xroot" ? dpmlfc_component_node_config{}
    "copyd" ? dpmlfc_component_node_config{}

    "pools" ? dpmlfc_component_pool_entry{}
    "vos" ? dpmlfc_component_vo_entry{}

    "lfc" ? dpmlfc_component_lfc_node_config{}
    "lfc-dli" ? dpmlfc_component_node_config{}

    "options" ? dpmlfc_component_global_options_tree
    "protocols" ? dpmlfc_component_protocol_options
};

bind "/software/components/dpmlfc" = dpmlfc_component;
