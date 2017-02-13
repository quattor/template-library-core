# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# #
# Author(s): Germán Cancio, Marco Emilio Poleggi, Michel Jouvin, Jan Iven, Mark R. Bannister, Jindrich Novy
#



declaration template components/spma/ips/schema;

include 'components/spma/schema';

type component_spma_ips_type = {
    "bename" ? string         # BE name to use with IPS commands
    "rejectidr" : boolean = true # Reject Solaris IDRs on upgrade?
    "freeze" : boolean = true # Ignore frozen packages?
    "imagedir" ? string         # Override temporary image directory
};

type component_spma_ips = {
    include structure_component
    include component_spma_common
    "ips" ? component_spma_ips_type
};

bind "/software/components/spma" = component_spma_ips;
