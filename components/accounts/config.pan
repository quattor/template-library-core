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

unique template components/accounts/config;

include { 'components/accounts/schema' };
include { 'components/accounts/functions' };
include { 'components/accounts/config-common' };
include { 'components/accounts/config-rpm' };

# Package to install
