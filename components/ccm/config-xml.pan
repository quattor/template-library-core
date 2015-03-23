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
# ccm, 15.2.0, 1, 20150323-1248
#

unique template components/ccm/config-xml;

include { 'components/ccm/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/ccm';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/ccm/ccm.pm'); 
