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
      # download, 14.6.0, 1, 20140704-1605
      #

unique template components/download/config-common;

include { 'components/download/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/download';

#'version' = '14.6.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
