# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# 
# #
# nrpe, 15.8.0, 1, 2015-10-29T11:33:30Z
#

unique template components/nrpe/config-common;

include { 'components/nrpe/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/nrpe';

#'version' = '15.8.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
