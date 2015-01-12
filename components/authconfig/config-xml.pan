# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# #
# Author(s): David Groep
#

# #
# authconfig, 14.12.0-rc3, rc3_1, 20150112-1043
#

unique template components/authconfig/config-xml;

include { 'components/authconfig/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/authconfig';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/authconfig/authconfig.pm'); 
