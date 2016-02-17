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
# systemd, 16.2.0-rc2, rc2_1, 2016-02-17T15:40:39Z
#

unique template components/systemd/config;
include 'components/systemd/schema';

bind '/software/components/systemd' = component_systemd;

'/software/packages' = pkg_repl('ncm-systemd','16.2.0-rc2_1','noarch');

prefix '/software/components/systemd';
'dependencies/pre' ?= list ('spma');
'active' ?= true;
'dispatch' ?= true;
