################################################################################
# This is 'TPL/schema.tpl', a ncm-afsclt's file
################################################################################
#
# VERSION:    1.5.6, 29/09/08 23:38
# AUTHOR:     Jaroslaw Polok <jaroslaw.polok@cern.ch>
# MAINTAINER: Jan Iven <jan.iven@cern.ch>, Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
#  ** Generated file : do not edit **
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/afsclt/schema;

include { 'quattor/schema' };

type component_afsclt_entry = {
#   include component_type
    include structure_component

   "thiscell"   : string         # "AFS home cell"
   "suidcells"  ? list           # "List of suid cells"
   "settime"    ? boolean        # "Shall AFS client sync sys time?"
   "cellservdb"    ? string         # "Where Master CellServDB can be found"
   "afsmount"   ? string         # "AFS mount point (/afs)"
   "cachemount" ? string         # "AFS cache location (/usr/vice/etc/cache)"
   "cachesize"  ? string         # "AFS cache size in kB"
   "options"    ? nlist          # "AFS client options"
   "enabled"    : string with match (SELF, 'yes|no') 
   				 # "Shall AFS client be active ?"


   # PAM configuration for AFS/Kerberos
   "libpam"     ? string         # "PAM library"
   "libpam_options_auth_auth" ? string # "PAM options for authentication, PAM-auth"
   "libpam_options_auth_session" ? string # "PAM options for authentication, PAM-session"
   "libpam_options_auth_passwd" ? string # "PAM options for authentication, PAM-passwd"
   "libpam_options_auth" ? string # "PAM options for authentication, PAM-session etc"
   "libpam_options_refresh" ? string # "PAM options for refresh"	

   "verbose"    ? string
   "debug"      ? boolean
   
};

bind "/software/components/afsclt" = component_afsclt_entry;
   
