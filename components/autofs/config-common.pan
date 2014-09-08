# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   David Groep <davidg@nikhef.nl>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # autofs, 14.8.0-rc6, rc6_1, 20140908-1633
      #

unique template components/autofs/config-common;

include { 'components/autofs/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/autofs';

#'version' = '14.8.0-rc6';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
