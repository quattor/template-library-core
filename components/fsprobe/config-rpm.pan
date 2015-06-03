# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Tim Bell <tim.bell@cern.ch>
#

# 

# template pro_software_component_fsprobe

unique template components/fsprobe/config-rpm;
include {'components/fsprobe/schema'};
include {'components/fsprobe/functions'};

# Package to install:
# Package to install
"/software/packages" = pkg_repl("ncm-fsprobe", "15.4.0-1", "noarch");

 # This component should be run after ncm-accounts, if present.
"/software/components/fsprobe/dependencies/pre" = {
	if (exists ("/software/components/accounts")) {
		return (list("accounts"));
	} else {
		return (list("spma"));
	};
};
"/software/components/fsprobe/active" ?= true;
"/software/components/fsprobe/dispatch" ?= true;

valid "/software/components/fsprobe" = valid_roles ("/software/components/fsprobe");
