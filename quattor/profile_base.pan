################################################################################
# This is 'namespaces/standard/quattor/profile_base.tpl', a pan-templates's file
################################################################################
#
# VERSION:    3.2.9, 25/11/09 16:16
# AUTHOR:     Martin Bock
# MAINTAINER: Marco Emilio Poleggi <Marco.Emilio.Poleggi@cern.ch>, German Cancio <German.Cancio.Melia@cern.ch>, Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

unique template quattor/profile_base;

include { 'pan/units' };
include { 'quattor/schema' };
  
# define the root type of the configuration data tree
bind '/' = structure_profile;
