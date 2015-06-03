# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# 

unique template components/useraccess/config-rpm;
include {'components/useraccess/schema'};

# Package to install:
# Package to install
"/software/packages" = pkg_repl("ncm-useraccess", "15.4.0-1", "noarch");

 # This component should be run after ncm-accounts, if present.
"/software/components/useraccess/dependencies/pre" = {
	if (exists ("/software/components/accounts")) {
		return (list("accounts"));
	} else {
		return (list("spma"));
	};
};
"/software/components/useraccess/active" ?= true;
"/software/components/useraccess/dispatch" ?= true;

#valid "/software/components/useraccess" = valid_roles ("/software/components/useraccess");
