# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles LOOMIS <loomis@lal.in2p3.fr>
#

# #
# Author(s): German Cancio
#



unique template components/grub/config-rpm;

include {'components/grub/schema'};

include {'pan/functions'};

# Package to install.
"/software/packages" = pkg_repl("ncm-grub", "14.5.0-1", "noarch");


# standard component settings
"/software/components/grub/active" ?=  true ;
"/software/components/grub/dispatch" ?=  true ;
"/software/components/grub/dependencies/pre" = push( "spma" );
"/software/components/grub/register_change/0" = "/system/kernel/version";

# component specific settings
"/system/kernel/version" ?=  undef ;
# you may need to set /software/components/grub/prefix if not using
# /boot ...

