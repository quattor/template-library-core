# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Miroslav Siket <dennis.waldron@cern.ch>
#

# 
# #
# fmonagent, 15.12.0-rc1, rc1_1, 2015-12-12T17:19:33Z
#

unique template components/fmonagent/config-common;

include { 'components/fmonagent/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/fmonagent';

#'version' = '15.12.0-rc1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
