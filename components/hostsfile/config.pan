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
# hostsfile, 17.7.0-rc3, rc3_1, Wed Aug 09 2017
#

unique template components/hostsfile/config;

include 'components/hostsfile/schema';

# Package to install
"/software/packages" = pkg_repl("ncm-hostsfile", "17.7.0-rc3_1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/hostsfile';

'version' = '17.7.0';
'active' ?= false;
'dispatch' ?= false;
