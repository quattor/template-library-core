###############################################################################
# This is 'TPL/schema.tpl', a ncm-httpd's file
###############################################################################
#
# VERSION:    1.0.11-1, 11/10/08 08:38
# AUTHOR:     Judit Novak <Judit.Novak@cern.ch>
# MAINTAINER: Judit Novak <Judit.Novak@cern.ch>
# LICENSE:    GNU public license
#
###############################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
###############################################################################                                                                                                                 
declaration template components/httpd/schema;

include { 'quattor/schema' };

#include { 'components/httpd/functions' };
                                                                                                                 

##################################################################################
# Supporting types 
##################################################################################

# Type fur 'Alias' declarations
# reason: dir. pathes are less handy as hash keys
type structure_httpd_supporting_trgsrc = {
    "target"    :   string
    "src"    :   string
    
};    

type structure_httpd_supporting_trgtsf = {
    "target"    :   string
    "suffix"    :   string
    
};    

type structure_httpd_supporting_trgtopt = {
    "target"    :   string
    "option"    :   string
};    

type structure_httpd_supporting_acl = {
    "acl1"    :   string
    "acl2"    :   string
};    

##################################################################################
# Directives that can be used inside all subsectins
##################################################################################

# general (main_server, virt_host, dir)
type structure_httpd_general_all = {
    "Options"   ?   string
    "ServerSignature"   ?   string
    "AddDefaultCharset" ?   string

};

type structure_httpd_modset_all = {

    # mod_python options (main_serv, virt_host, dir)
    "PythonPath"    ?   string
    "PythonHandler" ?   string
    "PythonDebug"   ?   string with match (SELF, '(On|Off)')
    "PythonInterpreter" ?   string

    # mod_perl options (main_serv, virt_host, dir)
    "PerlHandler"   ?   string
    "PerlRequire"   ?   string
    "PerlOptions"   ?   string
    
    # mod_ssl options (main_serv, virt_host, dir)
    "SSLOptions"    ?   string
    "SSLRequireSSL" ?   string
    "SSLCipherSuite"    ?   string
    "SSLVerifyClient"  ?     string with match (SELF, '(require|none|optional|optional_no_ca)')
    "SSLVerifyDepth"    ?   long(0..10)

    # mod_dir
    "DirectoryIndex"    ?   string

    # mod_mime
    "AddLanguage"   ? structure_httpd_supporting_trgtsf[]
    "AddCharset"   ? structure_httpd_supporting_trgtsf[]
    "AddType"   ? structure_httpd_supporting_trgtsf[]
    "AddHandler"   ? structure_httpd_supporting_trgtsf[]
    "AddOutputFilter"   ? structure_httpd_supporting_trgtsf[]
    "AddEncoding"   ?   string[]
    "DefaultType"   ?   string

    # mod_autoindex
    "AddIcon"   ? structure_httpd_supporting_trgtsf[]
    "AddIconByType"   ? structure_httpd_supporting_trgtsf[]
    "AddIconByEncoding"   ? structure_httpd_supporting_trgtsf[]
    "IndexOptions"  ?   string
    "DefaultIcon"   ?   string
    "ReadmeName"    ?   string
    "HeaderName"    ?   string
    "IndexIgnore"   ?   string
    
    # mod_setenvif
    "BrowserMatch"  ? structure_httpd_supporting_trgtopt[]
    "SetEnvIf"  ?   string

    # mod_negotiation
    "ForceLanguagePriority" ?   string with match(SELF, '( None|Prefer|Fallback)' )
    
};





##################################################################################
# Type definitions for subsections (main serv, vhost, directury/location, files)
##################################################################################

##################################################################################
# Common structures for files, directory/location
##################################################################################

type structure_httpd_modset_file_dir = {

    include structure_httpd_modset_all

    # mod_access
    "Order" ?   structure_httpd_supporting_acl
    "Allow" ?   string[]
    "Deny" ?   string[]

    # mod_mime
    "SetHandler"    ?   string
};    

# All available directives
# This type is to avoid enforcing the more complex, module-based apprach

type structure_httpd_modules_file_dir = {
    "ssl"   ?   structure_httpd_modset_file_dir with match(hash_keys(SELF), '((^| )SSL.+)+' )
    "perl"   ?   structure_httpd_modset_file_dir with match(hash_keys(SELF), '((^| )Perl.+)+' )
    "python"   ?   structure_httpd_modset_file_dir with match(hash_keys(SELF), '((^| )Python.+)+' )
    "access"   ?   structure_httpd_modset_file_dir with match(hash_keys(SELF), '(Order|Allow|Deny)' )
    "autoindex"   ?   structure_httpd_modset_file_dir with match(hash_keys(SELF), '((^| ).*(Alt|Icon|Index).*)+' )
    "dir"   ?   structure_httpd_modset_file_dir with match(hash_keys(SELF), 'DirectoryIndex' )
    #  check too complicated
    "mime"   ?   structure_httpd_modset_file_dir
    "setenvif"   ?   structure_httpd_modset_file_dir with match(hash_keys(SELF), '((^| )(SetEnvIf|BrowserMatch).+)+' )
    "negotiation"   ?   structure_httpd_modset_file_dir with match(hash_keys(SELF), '(ForceLanguagePriority)+' )
};

type structure_httpd_general_file_dir = {
    include structure_httpd_general_all
    include structure_httpd_modset_file_dir    

    "modules"      ?   structure_httpd_modules_file_dir
    
};


##################################################################################
# <Files>
##################################################################################
type structure_httpd_general_file = {
    include structure_httpd_general_file_dir
};

type structure_httpd_file = {

    include structure_httpd_general_file

    "id"  :   string
    "apps"      ?   structure_httpd_general_file{}

};    

##################################################################################
# <Directory>, <Location>
##################################################################################
type structure_httpd_general_dir_loc = {

    include structure_httpd_general_file_dir
    include structure_httpd_modules_file_dir
        
    "Files"     ? structure_httpd_general_file[]
    "AllowOverride" ?   string

};

type structure_httpd_dir_loc = {

    include structure_httpd_general_dir_loc

    "id"  :   string
    "apps"      ?   structure_httpd_general_dir_loc{}

};    


##################################################################################
# Common structures for serv, vhost
##################################################################################

type structure_httpd_modset_serv_vhost = {

    include structure_httpd_modset_all

    # mod_ssl options 
    "SSLEngine" ?   string with match (SELF, '(on|off)')
    "SSLCertificateFile"  ?     string   
    "SSLCertificateKeyFile"  ?     string   
    "SSLCACertificatePath"  ?     string   
    "SSLCARevocationPath"  ?     string   
    
    # mod_perl options
    "PerlPostConfigRequire"   ?   string
    "PerlWarn"   ?  string 
    "PerlPassEnv"   ?   string[]
    "PerlSwitches"  ?   string
    "PerlModule"    ?   string

    # mod_alias
    "Alias" ? structure_httpd_supporting_trgsrc[]
    "ScriptAlias" ? structure_httpd_supporting_trgsrc[]

    # mod_mime (only in server, but it's easier 2 declare it here)
    "TypesConfig"   ?   string
    "HostnameLookups"   ?   string with match(SELF, '(On|Off|Double)' )

    # mod_config
    "LogFormat"     ?   string[]
    "TransferLog"   ?   string
    "CustomLog"  ?   string  

    # mod_negotiation (server only!)
    "LanguagePriority"  ?   string
    
};

# All available directives
# This type is to avoid enforcing the more complex, module-based apprach

type structure_httpd_modules_serv_vhost = {
    "ssl"   ?   structure_httpd_modset_serv_vhost with match(hash_keys(SELF), '((^| )SSL.+)+' )
    "perl"   ?   structure_httpd_modset_serv_vhost with match(hash_keys(SELF), '((^| )Perl.+)+' )
    "python"   ?   structure_httpd_modset_serv_vhost with match(hash_keys(SELF), '((^| )Python.+)+' )
    "alias"   ?   structure_httpd_modset_serv_vhost with match(hash_keys(SELF), '((^| ).*(Alias|Redirect).*)+' )
    "autoindex"   ?   structure_httpd_modset_serv_vhost with match(hash_keys(SELF), '((^| ).*(Alt|Icon|Index).*)+' )
    "dir"   ?   structure_httpd_modset_serv_vhost with match(hash_keys(SELF), 'DirectoryIndex' )
    "mime"   ?   structure_httpd_modset_serv_vhost
    "setenvif"   ?   structure_httpd_modset_serv_vhost with match(hash_keys(SELF), '((^| )(SetEnvIf|BrowserMatch).+)+' )
    "config"   ?   structure_httpd_modset_serv_vhost with match(hash_keys(SELF), '((^| ).*(Log).*)+' )
    "negotiation"   ?   structure_httpd_modset_serv_vhost with match(hash_keys(SELF), '(ForceLanguagePriority|LanguagePriority)+' )
};

type structure_httpd_general_serv_vhost = {
    include structure_httpd_general_all
    include structure_httpd_modset_serv_vhost
    
    "ServerName"   ?   string 
    "ErrorLog"  ?   string  
    "Timeout"   ?   long(0..)
    "KeepAlive" ?   string with match(SELF, '(On|Off)')
    "MaxKeepAliveRequests" ?   long(0..)
    "KeepAliveTimeout" ?   long(0..)
    "ServerAdmin"   ?   string
    "UseCanonicalName"  ?   string with match(SELF, '(On|Off|DNS)')
    "DocumentRoot"  ?   string
    "AccessFileName"    ?   string
    "LogLevel"  ?   string with match(SELF, '(emerg|alert|crit|error|warn|notice|info|debug)' )
    
    "Files"     ? structure_httpd_file[]
    "Directory"     ? structure_httpd_dir_loc[]
    "Location"     ? structure_httpd_dir_loc[]
    

    "modules"      ?   structure_httpd_modules_serv_vhost

};

##################################################################################
# <VirtualHost>
##################################################################################
type structure_httpd_general_vhost = {

    include structure_httpd_general_serv_vhost
    include structure_httpd_modset_serv_vhost    

    "ServerPath"    ?   string

};    

type structure_httpd_vhost = {

    include structure_httpd_general_vhost

    "id"  :   string
    "apps"    ?   structure_httpd_general_vhost{}

};

##################################################################################
# Main Server
##################################################################################
type structure_httpd_general_serv = {

    include structure_httpd_general_serv_vhost

    "Listen"   ?   string[]
    "NameVirtualHost" ?     string[]
    "ServerTokens"  ?   string with match( SELF, '(Major|Minor|Min|Minimal|Prod|ProductOnly|OS|Full)')
    "ServerRoot"    ?   string
    "PidFile"   ?   string
    "LoadModule"    ?   string[]
    "Include"    ?   string
    "User"    ?   string
    "Group"    ?   string
    
    "VirtualHost"     ?   structure_httpd_vhost[]

};    

type structure_httpd_serv = {

    include structure_httpd_general_serv

    "apps"    ?   structure_httpd_general_serv{}

};


type component_httpd = {
   include structure_component
   "conf"    :   structure_httpd_serv
};


bind "/software/components/httpd" = component_httpd;




