################################################################################
# This is 'TPL/config.tpl', a ncm-sshkeys's file
################################################################################
#
# VERSION:    1.1.6, 11/03/11 22:44
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Guillaume Philippon <philippo@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/sshkeys/config;

include { 'components/sshkeys/schema' };

# Package to install
'/software/packages'=pkg_repl('ncm-sshkeys','1.1.6-1','noarch');
'/software/components/sshkeys/dependencies/pre' ?= list('spma');

'/software/components/sshkeys/version' = '1.1.6';

