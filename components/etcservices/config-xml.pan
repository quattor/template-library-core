# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Juan Pelegrin <Juan.Pelegrin@cern.ch>
#

# 
# #
# etcservices, 15.4.0, 1, 2015-06-03T15:21:52Z
#

unique template components/etcservices/config-xml;

include { 'components/etcservices/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/etcservices';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/etcservices/etcservices.pm'); 
