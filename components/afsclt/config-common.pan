# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jaroslaw Polok <jaroslaw.polok@cern.ch>
#

# 
# #
# afsclt, 15.8.0-rc6, rc6_1, 2015-10-23T12:33:34Z
#

unique template components/afsclt/config-common;

include { 'components/afsclt/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/afsclt';

#'version' = '15.8.0-rc6';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
