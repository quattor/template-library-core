################################################################################
# This is 'TPL/config.tpl', a ncm-fmonagent's file
################################################################################
#
# VERSION:    1.3.3-@RELASE@, 10/12/08 17:49
# AUTHOR:     Miroslav Siket <miroslav.siket@cern.ch>, Dennis Waldron <dennis.waldron@cern.ch>
# MAINTAINER: Miroslav Siket <miroslav.siket@cern.ch>, Dennis Waldron <dennis.waldron@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
#  ** Generated file : do not edit **
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/fmonagent/config;
include { 'components/fmonagent/schema' };

# Package to install
"/software/packages"=pkg_repl("ncm-fmonagent","1.3.3-1","noarch");

'/software/components/fmonagent/version' ?= '1.3.3';

"/software/components/fmonagent/dependencies/pre" ?= list("spma");
"/software/components/fmonagent/active" 		?= true;
"/software/components/fmonagent/dispatch" 		?= true;
"/software/components/fmonagent/register_change" 	?= list("/system/monitoring");

