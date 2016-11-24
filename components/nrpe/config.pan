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
# nrpe, 16.10.0-rc4, rc4_1, Thu Nov 24 2016
#

unique template components/nrpe/config;

include { 'components/nrpe/config-common' };
include { 'components/nrpe/config-rpm' };
