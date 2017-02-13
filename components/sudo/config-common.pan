# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# #
# Author(s): Luis Fernando Muñoz Mejías, Nick Williams, Loic Brarda
#

# #
# sudo, 16.12.0, 1, Wed Jan 04 2017
#

unique template components/sudo/config-common;

include 'components/sudo/schema';

# Set prefix to root of component configuration.
prefix '/software/components/sudo';

#'version' = '16.12.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
