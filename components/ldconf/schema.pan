################################################################################
# This is 'TPL/schema.tpl', a ncm-ldconf's file
################################################################################
#
# VERSION:    1.3.3, 29/03/07 20:38
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/ldconf/schema;

include { 'quattor/schema' };

type component_ldconf = {
    include structure_component
    'conffile' : string = '/etc/ld.so.conf'
    'paths'    ? string[]
};

bind '/software/components/ldconf' = component_ldconf;


