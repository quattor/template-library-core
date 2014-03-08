# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
#

# 

unique template components/aiiserver/config-rpm;
include {'components/aiiserver/schema'};

# Package to install
"/software/packages" = pkg_repl("ncm-aiiserver", "14.2.1-1", "noarch");

"/software/components/aiiserver/dependencies/pre" ?=  list ("spma");

"/software/components/aiiserver/active" ?= true;
"/software/components/aiiserver/dispatch" ?= true;

"/software/components/aiiserver/aii-shellfe/ca_file" ?= {
	if (is_defined ("/software/components/ccm/ca_file" + "")) {
		value ("/software/components/ccm/ca_file");
	};
};

"/software/components/aiiserver/aii-shellfe/key_file" ?= {
 	if (is_defined ("/software/components/ccm/key_file" + "")) {
		value ("/software/components/ccm/key_file");
	};
};

"/software/components/aiiserver/aii-shellfe/cert_file" ?= {
 	if (is_defined ("/software/components/ccm/cert_file" + "")) {
		value ("/software/components/ccm/cert_file");
	};
};
