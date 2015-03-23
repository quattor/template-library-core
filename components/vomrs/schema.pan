# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Steve Traylen <steve.traylen@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# vomrs, 15.2.0, 1, 20150323-1249
#
#
############################################################
#
# type definition components/vomrs
#
#
#
#
#
############################################################

declaration template components/vomrs/schema;

include { 'quattor/schema' };

type structure_vomrs_vo = {
         "name"        : string
         "vomrs"              ? string{} # Related to vomrs configuration.
         "voinfo"             ? string{} # Related to VO
         "gridorg"            ? string{} # Grid Orgnisation Info.
         "tomcat"             ? string{} # Tomcat Information
         "cacert"             ? string{} # CA RelatedA
         "vomem"              ? string{} # VO Membership Related.
         "event"              ? string{} # Event Notification 
         "sync"               ? string{} # VOMS syncronisation
         "db"                 ? string{} # VOMRS Database details.
         "lcg"                ? string{} # LCG Registration.

 };

type vomrs_component = {
        include structure_component
        "VOs"                : list 
        "home"               : string  # VOMRS_LOCATION /opt/vomrs-1.3.
        "configure"          ? boolean # Should voms_configure be ran ? (default no)
        "confscript"         : string  # Pathc to voms_configure
        "confdir"            : string  # Path to create and use quattor created files.
        "vomrssecretdir"     ? string
        "vo"                 ? structure_vomrs_vo{}
};

bind '/software/components/vomrs' = vomrs_component;


