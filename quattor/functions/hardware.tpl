################################################################################
# This is 'namespaces/standard/quattor/functions/hardware.tpl', a pan-templates's file
################################################################################
#
# VERSION:    3.2.9-1, 25/11/09 16:16
# AUTHOR:     Martin Bock
# MAINTAINER: Marco Emilio Poleggi <Marco.Emilio.Poleggi@cern.ch>, German Cancio <German.Cancio.Melia@cern.ch>, Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
#
# System Function Definitions for manipulating /hardware
#
################################################################################

declaration template quattor/functions/hardware;


############################################################
# FUNCTION get_num_of_cores
############################################################
function get_num_of_cores = {
  #
  # Get total number of cores
  #
  
  core_num = 0;
  foreach (i;cpu;value('/hardware/cpu')) {
    if ( is_defined(cpu['cores']) ) {
      core_num = core_num + cpu['cores'];
    } else {
      core_num = core_num + 1;
    };
  };
  core_num;
};
