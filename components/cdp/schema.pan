################################################################################
# This is 'TPL/schema.tpl', a ncm-cdp's file
################################################################################
#
# VERSION:    1.0.3, 29/03/07 20:37
# AUTHOR:     Charles Loomis <charles.loomis@cern.ch>
# MAINTAINER: Charles Loomis <charles.loomis@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/cdp/schema;

include { 'quattor/schema' };

type component_cdp = {
    include structure_component
    'configFile'  : string = '/etc/cdp-listend.conf'
    'port'        ? type_port
    'nch'         ? string
    'nch_smear'   ? long(0..)
    'fetch'       ? string
    'fetch_smear' ? long(0..)
};

bind '/software/components/cdp' = component_cdp;
