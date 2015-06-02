# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# 
# #
# nfs, 15.4.0-rc11, rc11_1, 2015-06-02T11:14:46Z
#

unique template components/nfs/config-xml;

include { 'components/nfs/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/nfs';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/nfs/nfs.pm'); 
