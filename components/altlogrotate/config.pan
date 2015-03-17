# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# 
# #
# altlogrotate, 15.2.0-rc4, rc4_1, 20150317-1257
#

unique template components/altlogrotate/config;

include { 'components/altlogrotate/config-common' };
include { 'components/altlogrotate/config-rpm' };
