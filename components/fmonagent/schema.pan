# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Miroslav Siket <dennis.waldron@cern.ch>
#

# 

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
