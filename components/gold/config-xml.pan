# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <stijn.deweirdt@ugent.be>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# gold, 15.4.0-rc1, rc1_1, 20150507-1446
#

unique template components/gold/config-xml;

include { 'components/gold/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/gold';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/gold/gold.pm'); 
