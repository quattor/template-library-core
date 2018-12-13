#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Stijn De Weirdt <stijn.deweirdt@ugent.be>
#   Alvaro Simon Garcia <Alvaro.SimonGarcia@UGent.be>
#



unique template components/openstack/config;

include 'components/openstack/schema';

bind '/software/components/openstack' = openstack_component;

'/software/packages' = pkg_repl('ncm-openstack', '18.12.0-rc0_1', 'noarch');

include if_exists('components/openstack/site-config');

prefix '/software/components/openstack';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '18.12.0';

'dependencies/pre' ?= list('spma', 'accounts', 'sudo', 'useraccess');

include 'components/openstack/rootwrap';
