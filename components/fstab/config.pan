# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Fernando.Munoz.Mejias@cern.ch>
#

# 
# #
# fstab, 15.4.0-rc3, rc3_1, 2015-05-14T14:58:27Z
#

unique template components/fstab/config;

include { 'components/fstab/config-common' };
include { 'components/fstab/config-rpm' };
