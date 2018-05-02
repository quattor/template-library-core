# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Miroslav Siket <miroslav.siket@cern.ch>
#   Dennis Waldron <dennis.waldron@cern.ch>
#

# 
# #
# fmonagent, 18.3.0-rc3, rc3_1, Wed May 02 2018
#

unique template components/fmonagent/config-common;

include 'components/fmonagent/schema';

# Set prefix to root of component configuration.
prefix '/software/components/fmonagent';

#'version' = '18.3.0-rc3';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
