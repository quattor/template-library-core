# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <stijn.deweirdt@ugent.be>
#

# 
# #
# systemd, 17.8.0-rc3, rc3_1, Mon Oct 09 2017
#

unique template components/systemd/config;
include 'components/systemd/schema';

include 'components/systemd/functions';

bind '/software/components/systemd' = component_systemd;

'/software/packages' = pkg_repl('ncm-systemd','17.8.0-rc3_1','noarch');

prefix '/software/components/systemd';
'dependencies/pre' ?= list ('spma');
'active' ?= true;
'dispatch' ?= true;
