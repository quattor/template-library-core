# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # mysql, 14.5.0-rc10, rc10_1, 20140606-1155
      #

unique template components/mysql/config-common;

include { 'components/mysql/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/mysql';

#'version' = '14.5.0-rc10';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
