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



unique template components/authconfig/config-rpm;
include { 'components/authconfig/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-authconfig", "15.2.0-1", "noarch");


"/software/components/authconfig/dependencies/pre" ?= list("spma");
"/software/components/authconfig/active" ?= true;
"/software/components/authconfig/dispatch" ?= true;

"/software/components/authconfig/safemode" ?= false;

"/software/components/authconfig/useshadow" ?= true;
"/software/components/authconfig/usecache" ?= true;

"/software/components/authconfig/usemd5" ?= true;
"/software/components/authconfig/passalgorithm" ?= {
    v = "md5";
    if (!value("/software/components/authconfig/usemd5")) {
	# Fall back to the most stupid option you can even imagin.
	# But it is portable. Huh.
	v = "descrypt";
    };
    v;
};
