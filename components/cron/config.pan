#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#   Mark Wilson <Mark.Wilson@morganstanley.com>
#   Guillaume Philippon <philippo@lal.in2p3.fr>
#



unique template components/cron/config;

include 'components/cron/schema';

bind '/software/components/cron' = cron_component;

'/software/packages' = pkg_repl('ncm-cron', '21.12.0-rc2_1', 'noarch');

include if_exists('components/cron/site-config');

prefix '/software/components/cron';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '21.12.0';
'dependencies/pre' ?= list('spma');

'securitypath' ?= {
    if (exists('/system/archetype/os') &&
            value('/system/archetype/os') == 'solaris') {
        '/etc/cron.d';
    } else {
        '/etc';
    };
};
