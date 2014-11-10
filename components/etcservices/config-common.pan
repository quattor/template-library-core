# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Juan Pelegrin <Juan.Pelegrin@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # etcservices, 14.10.0-rc3, rc3_1, 20141110-1446
      #

unique template components/etcservices/config-common;

include { 'components/etcservices/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/etcservices';

#'version' = '14.10.0-rc3';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
