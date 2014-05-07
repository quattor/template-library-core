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
      # ccm, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141710, 20140507-1516
      #

unique template components/ccm/config-xml;

include { 'components/ccm/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/ccm';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/ccm/ccm.pm'); 
