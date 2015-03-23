# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Miroslav Siket <dennis.waldron@cern.ch>
#

# 

# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/fmonagent/config-rpm;
include { 'components/fmonagent/schema' };

# Package to install
"/software/packages" = pkg_repl("ncm-fmonagent", "15.2.0-1", "noarch");


'/software/components/fmonagent/version' ?= '15.2.0';

"/software/components/fmonagent/dependencies/pre" ?= list("spma");
"/software/components/fmonagent/active" 		?= true;
"/software/components/fmonagent/dispatch" 		?= true;
"/software/components/fmonagent/register_change" 	?= list("/system/monitoring");

