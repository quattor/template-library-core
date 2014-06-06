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
      # accounts, 14.5.0-rc10, rc10_1, 20140606-1155
      #

unique template components/accounts/config-common;

include { 'components/accounts/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/accounts';

#'version' = '14.5.0-rc10';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
