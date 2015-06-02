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

# #
# lcgmonjob, 15.4.0-rc11, rc11_1, 2015-06-02T11:20:26Z
#
#

declaration template components/lcgmonjob/schema;

include { 'quattor/schema' };

type lcgmonjob_component = {
	include structure_component
	'EDG_LOCATION' : string
	'LCG_LOCATION' : string
};

bind '/software/components/lcgmonjob' = lcgmonjob_component;


