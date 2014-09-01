# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#



declaration template components/cdp/schema;

include { 'quattor/schema' };

type component_cdp = {
    include structure_component
    'configFile'   : string = '/etc/cdp-listend.conf'
    'port'         ? type_port
    'nch'          ? string
    'nch_smear'    ? long(0..)
    'fetch'        ? string
    'fetch_offset' ? long(0..)
    'fetch_smear'  ? long(0..)
};

bind '/software/components/cdp' = component_cdp;
