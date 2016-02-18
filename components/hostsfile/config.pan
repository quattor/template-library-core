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
# hostsfile, 16.2.0-rc3, rc3_1, 2016-02-18T17:02:48Z
#

unique template components/hostsfile/config;

include 'components/hostsfile/schema';

# Package to install
"/software/packages" = pkg_repl("ncm-hostsfile", "16.2.0-rc3_1", "noarch");

# Set prefix to root of component configuration.
prefix '/software/components/hostsfile';

'version' = '16.2.0';
'active' ?= false;
'dispatch' ?= false;
