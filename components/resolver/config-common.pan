# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   njw <njw>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # resolver, 14.8.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140901141109, 20140901-1511
      #

unique template components/resolver/config-common;

include { 'components/resolver/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/resolver';

#'version' = '14.8.0-rc3-SNAPSHOT';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
