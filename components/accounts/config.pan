# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# 
# #
# accounts, 16.6.0-rc4, rc4_1, Fri Jul 15 2016
#


unique template components/accounts/config;

include 'components/accounts/schema';
include 'components/accounts/functions';

# Define configuration module default configuration
prefix '/software/components/accounts';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?= list('spma');
'version' = '16.6.0';

# Include system users and groups which shouldn't be removed
# by default.  The machine configuration can still modify or
# remove them manually.
include 'components/accounts/sysgroups';
include 'components/accounts/sysusers';

# Package to install
"/software/packages" = pkg_repl("ncm-accounts", "16.6.0-rc4_1", "noarch");

