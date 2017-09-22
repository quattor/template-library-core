#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

#
# Author(s): David Groep
#


unique template components/authconfig/config;

include 'components/authconfig/schema';

bind '/software/components/authconfig' = authconfig_component;

'/software/packages' = pkg_repl('ncm-authconfig', '17.8.0-rc1_1', 'noarch');

include if_exists('components/authconfig/site-config.pan');

prefix '/software/components/authconfig';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '17.8.0';
'dependencies/pre' ?= list('spma');

"safemode" ?= false;

"useshadow" ?= true;
"usecache" ?= true;

"usemd5" ?= true;
"passalgorithm" ?= {
    if (value("/software/components/authconfig/usemd5")) {
        "md5";
    } else {
        # Fall back to the most stupid option you can even imagine.
        # But it is portable. Huh.
        "descrypt";
    };
};
