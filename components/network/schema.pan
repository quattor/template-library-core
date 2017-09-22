#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Guillaume Philippon <philippo@lal.in2p3.fr>
#

#
# Author(s): Daniel Jouvenot
#


declaration template components/network/schema;

include 'quattor/types/component';

type network_component = {
    include structure_component
};
