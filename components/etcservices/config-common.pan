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
# etcservices, 21.4.0-rc2, rc2_1, Sat May 01 2021
#

unique template components/etcservices/config-common;

include 'components/etcservices/schema';

# Set prefix to root of component configuration.
prefix '/software/components/etcservices';

#'version' = '21.4.0-rc2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
