################################################################################
# This is 'TPL/schema.tpl', a ncm-fmonagent's file
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

declaration template components/fmonagent/schema;

include { 'quattor/schema' };

type component_fmonagent = {
    include structure_component
    "LEMONversion" ? long
    "no_contact_timeout" : long = 120
};

bind "/software/components/fmonagent" = component_fmonagent;
