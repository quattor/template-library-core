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
# cron, 15.4.0, 1, 2015-06-03T15:21:52Z
#

unique template components/cron/config;

include { 'components/cron/config-common' };
include { 'components/cron/config-rpm' };
