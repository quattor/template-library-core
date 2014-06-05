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
      # named, 14.5.0-rc7, rc7_1, 20140605-1100
      #

unique template components/named/config-common;

include { 'components/named/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/named';

#'version' = '14.5.0-rc7';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
