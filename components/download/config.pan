# #
# Software subject to following license(s):
#   EU Datagrid (http://opensource.org/licenses/EUDatagrid)
#   null
#

# #
# Current developer(s):
#   Nick Williams <nick.williams@morganstanley.com>
#   Mark Wilson <Mark.Wilson@morganstanley.com>
#

# 
# #
# download, 16.12.0-rc3, rc3_1, Tue Jan 03 2017
#

unique template components/download/config;

include 'components/download/schema';

bind "/software/components/download" = component_download_type;

# Set prefix to root of component configuration.
prefix '/software/components/download';
'active' ?= true;
'dispatch' ?= true;
'version' = '16.12.0';
'release' = 'rc3_1';

"/software/packages" = pkg_repl("ncm-download", "16.12.0-rc3_1", "noarch");
