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
# nrpe, 16.6.0-rc6, rc6_1, Tue Jul 26 2016
#

unique template components/nrpe/config;

include { 'components/nrpe/config-common' };
include { 'components/nrpe/config-rpm' };
