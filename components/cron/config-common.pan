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
      # cron, 14.10.0-rc3, rc3_1, 20141110-1446
      #

unique template components/cron/config-common;

include { 'components/cron/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/cron';

#'version' = '14.10.0-rc3';
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
