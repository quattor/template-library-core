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
# Author(s): Luis Fernando Muñoz Mejías, Nick Williams, Loic Brarda
#


unique template components/sudo/config-rpm;
include {'components/sudo/schema'};
include {'components/sudo/functions'};

# Package to install:
# Package to install
"/software/packages" = pkg_repl("ncm-sudo", "15.4.0-1", "noarch");

 # This component should be run after ncm-accounts, if present.
"/software/components/sudo/dependencies/pre" = {
	if (exists ("/software/components/accounts")) {
		return (list("accounts"));
	} else {
		return (list("spma"));
	};
};
"/software/components/sudo/active" ?= true;
"/software/components/sudo/dispatch" ?= true;
