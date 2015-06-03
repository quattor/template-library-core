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
# interactivelimits, 15.4.0, 1, 2015-06-03T15:21:52Z
#

unique template components/interactivelimits/config-xml;

include { 'components/interactivelimits/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/interactivelimits';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/interactivelimits/interactivelimits.pm'); 
