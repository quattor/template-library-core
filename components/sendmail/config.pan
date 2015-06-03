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
# sendmail, 15.4.0, 1, 2015-06-03T15:21:52Z
#

unique template components/sendmail/config;

include { 'components/sendmail/config-common' };
include { 'components/sendmail/config-rpm' };
