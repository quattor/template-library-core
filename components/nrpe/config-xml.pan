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
# nrpe, 15.4.0-rc14, rc14_1, 2015-06-03T12:02:34Z
#

unique template components/nrpe/config-xml;

include { 'components/nrpe/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/nrpe';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/nrpe/nrpe.pm'); 
