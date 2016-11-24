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
# fmonagent, 16.10.0-rc4, rc4_1, Thu Nov 24 2016
#

unique template components/fmonagent/config;

include { 'components/fmonagent/config-common' };
include { 'components/fmonagent/config-rpm' };
