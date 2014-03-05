################################################################################
# This is 'TPL/schema.tpl', a ncm-authconfig's file
################################################################################
#
# VERSION:    1.1.6, 13/02/08 22:33
# AUTHOR:     David Groep <davidg@nikhef.nl>
# MAINTAINER: David Groep <davidg@nikhef.nl>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/authconfig/schema;

include { 'quattor/schema' };
include { 'pan/types' };

type authconfig_pamadditions_line_type = {
  "order"       : string with match(SELF,"first|last")
  "entry"       : string
};

type authconfig_pamadditions_type = {
  "conffile"	: string
  "section"     : string with match(SELF,"auth|account|password|session")
  "lines"       : authconfig_pamadditions_line_type[]
};

type authconfig_method_generic_type = {
  "enable"	: boolean
};

type authconfig_method_afs_type = {
  include authconfig_method_generic_type
  "cell"	: type_fqdn
};

type authconfig_method_ldap_tls_type = {
  "enable"	: boolean
  "peercheck"	? boolean
  "cacertfile"	? string
  "cacertdir"	? string
  "ciphers"	? string
};

type authconfig_method_ldap_timeouts_type = {
  "idle"	? long
  "bind"	? long
  "search"	? long
};

type authconfig_method_ldap_type = {
  include authconfig_method_generic_type
  "servers"	: type_hostname[]
  "nssonly"	? boolean
  "conffile"	? string
  "basedn"	: string
  "tls"		? authconfig_method_ldap_tls_type
  "binddn"	? string
  "bindpw"	? string
  "rootbinddn"	? string
  "port"	? type_port
  "timeouts"	? authconfig_method_ldap_timeouts_type
  "pam_filter"	? string
};

type authconfig_method_nis_type = {
  include authconfig_method_generic_type
  "servers"	: type_hostname[]
  "domain"	: string
};

type authconfig_method_krb5_type = {
  include authconfig_method_generic_type
  "kdcs"	: type_hostname[]
  "adminserver"	: type_hostname[]
  "realm"	: string
};

type authconfig_method_smb_type = {
  include authconfig_method_generic_type
  "servers"     : type_hostname[]
  "workgroup"	: string
};

type authconfig_method_hesiod_type = {
  include authconfig_method_generic_type
  "lhs"		: string
  "rhs"		: string
};

type authconfig_method_files_type = {
  include authconfig_method_generic_type
};


type authconfig_method_type = {
  "files"	? authconfig_method_files_type 
  "ldap"	? authconfig_method_ldap_type
  "nis"		? authconfig_method_nis_type
  "krb5"	? authconfig_method_krb5_type
  "smb"		? authconfig_method_smb_type
  "hesiod"	? authconfig_method_hesiod_type
  "afs"		? authconfig_method_afs_type
};

type component_authconfig_type = {
  include structure_component
  "safemode"	? boolean
  "usemd5"	? boolean
  "useshadow"	? boolean
  "usecache"	? boolean
  "startstop"	? boolean

  "method"	? authconfig_method_type

  "pamadditions" ? authconfig_pamadditions_type{}
};

bind '/software/components/authconfig' = component_authconfig_type;

