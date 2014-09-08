# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Wouter Depypere <Wouter.Depypere@UGent.be>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # icinga, 14.8.0-rc6, rc6_1, 20140908-1633
      #

unique template components/icinga/config-common;

include { 'components/icinga/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/icinga';

#'version' = '14.8.0-rc6';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
