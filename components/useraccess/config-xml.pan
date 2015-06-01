# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# 
# #
# useraccess, 15.4.0-rc9, rc9_1, 2015-06-01T17:38:44Z
#

unique template components/useraccess/config-xml;

include { 'components/useraccess/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/useraccess';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/useraccess/useraccess.pm'); 
