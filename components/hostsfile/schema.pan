# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Tim Bell <tim.bell@cern.ch>
#

# 

############################################################
#
# type definition components/hostsfile
#
#
#
############################################################

declaration template components/hostsfile/schema;

include { 'quattor/schema' };

type component_hostsfile_type = {
    include structure_component
    "file" ? string	    # File to store in.  Default is /etc/hosts
    "entries" : nlist
    "takeover" : boolean = false
};

bind "/software/components/hostsfile" = component_hostsfile_type;
