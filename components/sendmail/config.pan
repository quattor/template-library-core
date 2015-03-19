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
# sendmail, 15.2.0-rc6, rc6_1, 20150319-2029
#

unique template components/sendmail/config;

include { 'components/sendmail/config-common' };
include { 'components/sendmail/config-rpm' };
