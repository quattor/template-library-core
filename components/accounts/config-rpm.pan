# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# #
# Author(s): Jane SMITH, Joe DOE
#


unique template components/accounts/config-rpm;

include { 'components/accounts/schema' };
include { 'components/accounts/functions' };
include { 'components/accounts/config-common'};

# Package to install
"/software/packages" = pkg_repl("ncm-accounts", "12.12.1-SNAPSHOT20130104151644", "noarch");

'/software/components/accounts/dependencies/pre' ?= list('spma');

'/software/components/accounts/version' = '12.12.1';

# Include system users and groups which shouldn't be removed
# by default.  The machine configuration can still modify or
# remove them manually.
include { 'components/accounts/sysgroups' };
include { 'components/accounts/sysusers' };
