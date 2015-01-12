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
# postfix, 14.12.0-rc3, rc3_1, 20150112-1043
#

unique template components/postfix/config-common;

include { 'components/postfix/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/postfix';

#'version' = '1.0-SNAPSHOT';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
