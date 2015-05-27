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
# etcservices, 15.4.0-rc5, rc5_1, 2015-05-27T15:51:56Z
#

unique template components/etcservices/config-xml;

include { 'components/etcservices/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/etcservices';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/etcservices/etcservices.pm'); 
