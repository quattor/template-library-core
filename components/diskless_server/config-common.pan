# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Vasilis Christaras <Vasileios.Christaras@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # diskless_server, 13.1.1, 1, 20130830-1520
      #

unique template components/diskless_server/config-common;

include { 'components/diskless_server/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/diskless_server';

#'version' = '13.1.1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
