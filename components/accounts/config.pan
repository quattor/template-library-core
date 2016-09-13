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
# accounts, 16.8.0-rc3, rc3_1, Tue Sep 13 2016
#


unique template components/accounts/config;

include 'components/accounts/schema';
include 'components/accounts/functions';

# Define configuration module default configuration
prefix '/software/components/accounts';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?= list('spma');
'version' = '16.8.0';

# Include system users and groups which shouldn't be removed
# by default.  The machine configuration can still modify or
# remove them manually.
include 'components/accounts/sysgroups';
include 'components/accounts/sysusers';

# Package to install
"/software/packages" = pkg_repl("ncm-accounts", "16.8.0-rc3_1", "noarch");

