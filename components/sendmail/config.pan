# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jan Iven <jan.iven@cern.ch>
#

# 
# #
# sendmail, 16.6.0-rc6, rc6_1, Tue Jul 26 2016
#

unique template components/sendmail/config;

include { 'components/sendmail/config-common' };
include { 'components/sendmail/config-rpm' };
