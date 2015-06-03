# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Nick Williams <Nick.Williams@morganstanley.com>
#

# 
# #
# directoryservices, 15.4.0-rc14, rc14_1, 2015-06-03T12:02:34Z
#

unique template components/directoryservices/config-xml;

include { 'components/directoryservices/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/directoryservices';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/directoryservices/directoryservices.pm'); 
