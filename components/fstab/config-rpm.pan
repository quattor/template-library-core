# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Fernando.Munoz.Mejias@cern.ch>
#

# 

unique template components/fstab/config-rpm;

include {'components/fstab/schema'};

"/software/packages" = pkg_repl("ncm-fstab", "15.4.0-1", "noarch");

"/software/components/fstab/dependencies/pre" = list ("spma");
"/software/components/fstab/active" ?= true;
"/software/components/fstab/dispatch" ?= true;
"/software/components/fstab/register_change" = list ("/system/filesystems");
