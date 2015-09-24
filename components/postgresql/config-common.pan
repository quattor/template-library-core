# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   wouter.depypere@ugent.be <wouter.depypere@ugent.be>
#

# 
# #
# postgresql, 15.8.0-rc2, rc2_1, 2015-09-24T16:21:27Z
#

unique template components/postgresql/config-common;

include { 'components/postgresql/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/postgresql';

#'version' = '15.8.0-rc2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
