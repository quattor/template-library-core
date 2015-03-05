# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#

# 
# #
# symlink, 15.2.0-rc3, rc3_1, 20150305-2157
#

unique template components/symlink/config;

include { 'components/symlink/config-common' };
include { 'components/symlink/config-rpm' };
