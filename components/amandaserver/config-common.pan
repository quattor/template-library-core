# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Laura del Caño Novales <laura.delcano@ft.uam.es>
#

# 
# #
# amandaserver, 24.10.0-rc1, rc1_1, Tue Oct 08 2024
#

unique template components/amandaserver/config-common;

include 'components/amandaserver/schema';

# Set prefix to root of component configuration.
prefix '/software/components/amandaserver';

#'version' = '24.10.0-rc1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
