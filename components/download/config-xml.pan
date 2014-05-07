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
      # download, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141709, 20140507-1516
      #

unique template components/download/config-xml;

include { 'components/download/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/download';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/download/download.pm'); 
