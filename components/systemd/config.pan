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
# systemd, 18.12.0-rc4, rc4_1, Fri Apr 12 2019
#

unique template components/systemd/config;
include 'components/systemd/schema';

include 'components/systemd/functions';

bind '/software/components/systemd' = component_systemd;

'/software/packages' = pkg_repl('ncm-systemd','18.12.0-rc4_1','noarch');

prefix '/software/components/systemd';
'dependencies/pre' ?= list ('spma');
'active' ?= true;
'dispatch' ?= true;
