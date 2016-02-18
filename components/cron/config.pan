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
# cron, 16.2.0-rc3, rc3_1, 2016-02-18T17:02:48Z
#

unique template components/cron/config;

include { 'components/cron/config-common' };
include { 'components/cron/config-rpm' };
