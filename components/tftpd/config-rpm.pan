# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Matthias Schroder <Matthias.Schroder@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#



unique template components/tftpd/config-rpm;
include {'components/tftpd/schema'};

# Common settings
#"/software/components/tftpd/dependencies/pre" = list("spma");
"/software/components/tftpd/active" = true;
"/software/components/tftpd/dispatch" ?= true;

# Implemented options (not all options the demon takes are implemented)
# shall xinetd disable this service?
"/software/components/tftpd/disable"     = "no";
# Is the service single-threaded (yes) or multi-threaded (no)
"/software/components/tftpd/wait"        = "yes";
# Under which account will the service run?
"/software/components/tftpd/user"        = "root";
# The binary to be launched
"/software/components/tftpd/server"      = "/usr/sbin/in.tftpd";
# arguments to be passed to the server
"/software/components/tftpd/server_args" = "-s /tftpboot";
"/software/packages" = pkg_repl("ncm-tftpd", "14.4.0-rc3_SNAPSHOT20140507141730", "noarch");
