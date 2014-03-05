################################################################################
# This is 'TPL/config.tpl', a ncm-gridmapdir's file
################################################################################
#
# VERSION:    2.0.1, 12/02/10 18:20
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template components/gridmapdir/config;
include { 'components/gridmapdir/schema' };

# Package to install
'/software/packages'=pkg_repl('ncm-gridmapdir','2.0.1-1','noarch'); 
'/software/components/gridmapdir/dependencies/pre' ?= list('spma');

'/software/components/gridmapdir/version' = '2.0.1';

'/software/components/gridmapdir/register_change' ?= list('/software/components/accounts');
