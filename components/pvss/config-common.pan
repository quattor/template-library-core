# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Loic Brarda <Loic.Brarda@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # pvss, 13.1.2, 1, 20131015-1106
      #

unique template components/pvss/config-common;

include { 'components/pvss/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/pvss';

#'version' = '13.1.2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
