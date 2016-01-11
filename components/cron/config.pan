# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#   Mark Wilson <Mark.Wilson@morganstanley.com>
#

# 
# #
# cron, 15.12.0-rc3, rc3_1, 2016-01-11T13:49:46Z
#

unique template components/cron/config;

include { 'components/cron/config-common' };
include { 'components/cron/config-rpm' };
