# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Vladimir Bahyl <Vladimir.Bahyl@cern.ch>
#

# 
# #
# interactivelimits, 15.2.0-rc5, rc5_1, 20150319-1200
#

unique template components/interactivelimits/config-xml;

include { 'components/interactivelimits/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/interactivelimits';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/interactivelimits/interactivelimits.pm'); 
