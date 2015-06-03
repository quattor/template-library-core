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

################################################################################
# This is 'TPL/config.tpl', a ncm-syslogng's file
################################################################################
#
#
################################################################################
unique template components/syslogng/config-rpm;
include {'components/syslogng/schema'};


# Package to install
"/software/packages" = pkg_repl("ncm-syslogng", "15.4.0-1", "noarch");

"/software/components/syslogng/dependencies/pre" ?=  list ("spma");

"/software/components/syslogng/active" ?= true;
"/software/components/syslogng/dispatch" ?= true;
