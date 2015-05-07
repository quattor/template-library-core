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
# lcgbdii, 15.4.0-rc1, rc1_1, 20150507-1446
#

unique template components/lcgbdii/config-xml;

include { 'components/lcgbdii/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/lcgbdii';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/lcgbdii/lcgbdii.pm'); 
