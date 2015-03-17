# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jan.Iven@cern.ch <Jan.Iven@cern.ch>
#

# 
# #
# nscd, 15.2.0-rc4, rc4_1, 20150317-1257
#

unique template components/nscd/config-xml;

include { 'components/nscd/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/nscd';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/nscd/nscd.pm'); 
