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
# postfix, 15.4.0, 1, 2015-06-03T15:21:52Z
#

unique template components/postfix/config;

include { 'components/postfix/config-common' };
include { 'components/postfix/config-rpm' };
