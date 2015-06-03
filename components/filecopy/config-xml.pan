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
# filecopy, 15.4.0-rc14, rc14_1, 2015-06-03T12:02:34Z
#

unique template components/filecopy/config-xml;

include { 'components/filecopy/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/filecopy';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/filecopy/filecopy.pm'); 
