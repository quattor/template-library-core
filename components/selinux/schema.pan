# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jan Iven <jan/iven@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # selinux, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141718, 20140507-1516
      #

declaration template components/selinux/schema;

include { 'quattor/schema' };

type selinux_config = {
    'dummy' : string = 'OK'
} = nlist();

type selinux_component = {
    include structure_component
    'config' : selinux_config
};

bind '/software/components/selinux' = selinux_component;
