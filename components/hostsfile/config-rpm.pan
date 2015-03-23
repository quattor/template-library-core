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


unique template components/hostsfile/config-rpm;
include { 'components/hostsfile/schema' };

"/software/components/hostsfile/active" ?= false;
"/software/components/hostsfile/dispatch" ?= false;

# Package to install
"/software/packages" = pkg_repl("ncm-hostsfile", "15.2.0-1", "noarch");

'/software/components/hostsfile/version' = '15.2.0';
