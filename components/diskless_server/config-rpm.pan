# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Vasilis Christaras <Vasileios.Christaras@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#




unique template components/diskless_server/config-rpm;
include {'components/diskless_server/schema'};

# Common settings
#"/software/components/diskless_server/dependencies/pre" = list("spma");
"/software/components/diskless_server/active" = true;
"/software/components/diskless_server/dispatch" ?= true;
"/software/packages" = pkg_repl("diskless_server", "14.4.0-14.4.0", "noarch");
"/software/packages" = pkg_repl("ncm-diskless_server", "14.4.0-rc3_SNAPSHOT20140507141720", "noarch");
