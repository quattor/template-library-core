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
# gridmapdir, 24.10.0, 1, Fri Nov 22 2024
#
#

declaration template components/gridmapdir/schema;

include 'quattor/schema';

type gridmapdir_component = {
    include structure_component
    'gridmapdir' : string
    'poolaccounts' : long(0..0){}
    'sharedGridmapdir' ? string
    'owner' : string = 'root'
    'group' : string = 'root'
    'perms' : string = '0755'
};

bind '/software/components/gridmapdir' = gridmapdir_component;
