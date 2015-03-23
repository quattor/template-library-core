# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <stijn.dweirdt@ugent.be>
#

# 
# #
# ofed, 15.2.0, 1, 20150323-1248
#

unique template components/ofed/config-xml;

include { 'components/ofed/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/ofed';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/ofed/ofed.pm'); 
