# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jan.Iven@cern.ch <Jan.Iven@cern.ch>
#

# 
# #
# nscd, 15.4.0-rc3, rc3_1, 2015-05-14T14:58:27Z
#

unique template components/nscd/config;

include { 'components/nscd/config-common' };
include { 'components/nscd/config-rpm' };
