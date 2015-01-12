# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Juan Pelegrin <Juan.Pelegrin@cern.ch>
#

# 

# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/etcservices/schema;

include {'quattor/schema'};

type component_etcservices_type = {
	include structure_component
	"entries" : string []
};

bind "/software/components/etcservices" = component_etcservices_type;

