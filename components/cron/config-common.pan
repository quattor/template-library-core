# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#   Mark Wilson <Mark.Wilson@morganstanley.com>
#   Guillaume Philippon <philippo@lal.in2p3.fr>
#

# 
# #
# cron, 17.2.0-rc2, rc2_1, Wed Mar 01 2017
#

unique template components/cron/config-common;

include 'components/cron/schema';

# Set prefix to root of component configuration.
prefix '/software/components/cron';

#'version' = '17.2.0-rc2';
#'package' = 'NCM::Component';

'securitypath' ?= {
    if (exists('/system/archetype/os') &&
            value('/system/archetype/os') == 'solaris') {
        '/etc/cron.d';
    } else {
        '/etc';
    };
};
'active' ?= true;
'dispatch' ?= true;
