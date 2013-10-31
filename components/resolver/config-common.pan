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
      # resolver, 13.1.2, 1, 20131015-1106
      #

unique template components/resolver/config-common;

include { 'components/resolver/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/resolver';

#'version' = '13.1.2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
