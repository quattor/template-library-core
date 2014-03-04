# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Thorsten Kleinwort <Thorsten.Kleinwort@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#


# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/portmap/schema;

include {'quattor/schema'};

type component_portmap_type = {
  include structure_component
  "enabled" : boolean
};

bind "/software/components/portmap" = component_portmap_type;
