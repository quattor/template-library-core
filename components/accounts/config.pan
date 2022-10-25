#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#



unique template components/accounts/config;

include 'components/accounts/schema';

bind '/software/components/accounts' = accounts_component;

'/software/packages' = pkg_repl('ncm-accounts', '21.12.1-rc3_1', 'noarch');

include if_exists('components/accounts/site-config');

prefix '/software/components/accounts';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '21.12.1';
'dependencies/pre' ?= list('spma');

include 'components/accounts/functions';

# Include system users and groups which shouldn't be removed
# by default.  The machine configuration can still modify or
# remove them manually.
include 'components/accounts/sysgroups';
include 'components/accounts/sysusers';
