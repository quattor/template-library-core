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
      # nrpe, 14.10.0-rc4, rc4_1, 20141112-1118
      #

unique template components/nrpe/config;

include { 'components/nrpe/config-common' };
include { 'components/nrpe/config-rpm' };
