# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# #
# Author(s): David Groep
#

# #
# authconfig, 16.12.0, 1, Wed Jan 04 2017
#


unique template components/authconfig/config;

include 'components/authconfig/schema';

bind "/software/components/authconfig" = component_authconfig_type;

'/software/packages' = pkg_repl('ncm-authconfig', '16.12.0-1', 'noarch');

prefix '/software/components/authconfig';
'dependencies/pre' ?= list ('spma');
'active' ?= true;
'dispatch' ?= true;

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
