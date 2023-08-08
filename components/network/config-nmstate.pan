# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Guillaume Philippon <philippo@lal.in2p3.fr>
#

# #
# Author(s): Daniel Jouvenot
#


unique template components/network/config-nmstate;

include 'components/network/config';

prefix "/software/components/network";
"ncm-module" = "nmstate";

# Add dependency that can't be added to rpm directly
prefix '/software/packages';
'nmstate' = dict();
prefix "/system/aii/osinstall/ks";
"NetworkManager-config-server" = dict();
