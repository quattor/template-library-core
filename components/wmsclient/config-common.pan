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
      # wmsclient, 14.12.0-rc4, rc4_1, 20150112-1343
      #

unique template components/wmsclient/config-common;

include { 'components/wmsclient/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/wmsclient';

'version' = '14.12.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
