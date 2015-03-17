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
# Author(s): David Groep
#

# #
# authconfig, 15.2.0-rc4, rc4_1, 20150317-1257
#

unique template components/authconfig/config-common;

include { 'components/authconfig/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/authconfig';

#'version' = '15.2.0-rc4';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
