################################################################################
# This is 'TPL/config.tpl', a ncm-cron's file
################################################################################
#
# VERSION:    1.4.3, 02/02/10 15:50
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Guillaume Philippon <philippo@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/cron/config;
include { 'components/cron/schema' };

# Package to install
'/software/packages'=pkg_repl('ncm-cron','1.4.3-1','noarch');
'/software/components/cron/dependencies/pre' ?= list('spma');

'/software/components/cron/version' = '1.4.3';
