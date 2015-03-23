# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Fernando.Munoz.Mejias@cern.ch>
#

# 
# #
# fstab, 15.2.0, 1, 20150323-1248
#

unique template components/fstab/config-xml;

include { 'components/fstab/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/fstab';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/fstab/fstab.pm'); 
