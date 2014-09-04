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
      # nrpe, 14.8.0-rc5-SNAPSHOT, rc5_SNAPSHOT20140904163511, 20140904-1735
      #

unique template components/nrpe/config-xml;

include { 'components/nrpe/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/nrpe';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/nrpe/nrpe.pm'); 
