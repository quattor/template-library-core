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
# #
# hostsfile, 16.12.0, 1, Wed Jan 04 2017
#

unique template components/hostsfile/config;

include 'components/hostsfile/schema';

# Package to install
"/software/packages" = pkg_repl("ncm-hostsfile", "16.12.0-1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/hostsfile';

'version' = '16.12.0';
'active' ?= false;
'dispatch' ?= false;
