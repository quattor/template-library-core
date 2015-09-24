# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# gridmapdir, 15.8.0-rc3, rc3_1, 2015-09-24T17:03:57Z
#

unique template components/gridmapdir/config-xml;

include { 'components/gridmapdir/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/gridmapdir';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/gridmapdir/gridmapdir.pm'); 
