# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Tim Bell <tim.bell@cern.ch>
#

# 
# #
# fsprobe, 15.2.0-rc4, rc4_1, 20150317-1257
#

unique template components/fsprobe/config-xml;

include { 'components/fsprobe/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/fsprobe';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/fsprobe/fsprobe.pm'); 
