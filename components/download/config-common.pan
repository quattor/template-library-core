# #
# Software subject to following license(s):
#   EU Datagrid (http://opensource.org/licenses/EUDatagrid)
#   null
#

# #
# Current developer(s):
#   Nick Williams <nick.williams@morganstanley.com>
#

# 
# #
      # download, 14.5.0-rc11, rc11_1, 20140606-1524
      #

unique template components/download/config-common;

include { 'components/download/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/download';

#'version' = '14.5.0-rc11';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
