################################################################################
# This is 'namespaces/standard/pan/units.tpl', a pan-templates's file
################################################################################
#
# VERSION:    3.2.7, 21/08/09 22:22
# AUTHOR:     Martin Bock
# MAINTAINER: Marco Emilio Poleggi <Marco.Emilio.Poleggi@cern.ch>, German Cancio <German.Cancio.Melia@cern.ch>, Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
#
# Unit definitions
#
################################################################################

declaration template pan/units;

#
# Constants
#
final variable mb = 1;
final variable gb = 1024 * mb;
final variable tb = 1024 * gb;

final variable MB = 1;
final variable GB = 1024 * MB;
final variable TB = 1024 * GB;

final variable MHz = 1;
final variable GHz = 1000 * MHz;
