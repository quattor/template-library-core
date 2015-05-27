# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Thorsten Kleinwort <Thorsten.Kleinwort@cern.ch>
#

# #
# Author(s): John Monteiro
#

# #
# ntpd, 15.4.0-rc4, rc4_1, 2015-05-27T12:42:00Z
#

unique template components/ntpd/config-xml;

include { 'components/ntpd/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/ntpd';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/ntpd/ntpd.pm'); 
