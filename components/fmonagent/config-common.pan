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
# fmonagent, 19.12.0-rc2, rc2_1, Tue Jan 21 2020
#

unique template components/fmonagent/config-common;

include 'components/fmonagent/schema';

# Set prefix to root of component configuration.
prefix '/software/components/fmonagent';

#'version' = '19.12.0-rc2';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
