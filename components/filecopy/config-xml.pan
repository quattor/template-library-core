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
# filecopy, 15.2.0, 1, 20150323-1248
#

unique template components/filecopy/config-xml;

include { 'components/filecopy/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/filecopy';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/filecopy/filecopy.pm'); 
