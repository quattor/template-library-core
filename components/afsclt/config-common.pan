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
# afsclt, 15.12.0-rc2, rc2_1, 2016-01-07T13:57:35Z
#

unique template components/afsclt/config-common;

include { 'components/afsclt/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/afsclt';

#'version' = '15.12.0-rc2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
