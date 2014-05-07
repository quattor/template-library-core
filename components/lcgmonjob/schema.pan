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
      # lcgmonjob, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141754, 20140507-1517
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


