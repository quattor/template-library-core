# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Juan Pelegrin <Juan.Pelegrin@cern.ch>
#

# 
# #
# etcservices, 17.2.0-rc2, rc2_1, Wed Mar 01 2017
#

unique template components/etcservices/config-common;

include 'components/etcservices/schema';

# Set prefix to root of component configuration.
prefix '/software/components/etcservices';

#'version' = '17.2.0-rc2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
