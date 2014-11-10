# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Guillaume Philippon <philippo@lal.in2p3.fr>
#

# #
# Author(s): Daniel Jouvenot
#

# #
      # openldap, 14.10.0-rc3, rc3_1, 20141110-1446
      #

unique template components/openldap/config-common;

include { 'components/openldap/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/openldap';

'version' = '14.10.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
