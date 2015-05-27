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
# etcservices, 15.4.0-rc5, rc5_1, 2015-05-27T15:51:56Z
#

unique template components/etcservices/config-common;

include { 'components/etcservices/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/etcservices';

#'version' = '15.4.0-rc5';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
