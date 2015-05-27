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
# authconfig, 15.4.0-rc5, rc5_1, 2015-05-27T15:51:56Z
#


unique template components/authconfig/config;

include 'components/authconfig/schema';

'/software/packages'=pkg_repl('ncm-authconfig','15.4.0-rc5_1','noarch');

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


