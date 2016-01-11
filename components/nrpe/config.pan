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
# nrpe, 15.12.0-rc3, rc3_1, 2016-01-11T13:49:46Z
#

unique template components/nrpe/config;

include { 'components/nrpe/config-common' };
include { 'components/nrpe/config-rpm' };
