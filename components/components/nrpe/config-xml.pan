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
      # nrpe, 14.2.1, 1, 20140304-2348
      #

unique template components/nrpe/config-xml;

include { 'components/nrpe/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/nrpe';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/nrpe/nrpe.pm'); 
