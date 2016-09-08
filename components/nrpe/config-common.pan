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
# nrpe, 16.8.0-rc2, rc2_1, Thu Sep 08 2016
#

unique template components/nrpe/config-common;

include { 'components/nrpe/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/nrpe';

#'version' = '16.8.0-rc2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
