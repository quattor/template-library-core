# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Guillaume PHILIPPON <philippo@lal.in2p3.fr>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # frontiersquid, 13.1.1, 1, 20130718-1811
      #

unique template components/frontiersquid/config-common;

include { 'components/frontiersquid/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/frontiersquid';

'version' = '13.1.1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
