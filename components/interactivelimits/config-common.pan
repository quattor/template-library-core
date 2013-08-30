# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Vladimir Bahyl <Vladimir.Bahyl@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # interactivelimits, 13.1.1, 1, 20130830-1520
      #

unique template components/interactivelimits/config-common;

include { 'components/interactivelimits/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/interactivelimits';

#'version' = '13.1.1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
