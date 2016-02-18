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
# fstab, 16.2.0-rc3, rc3_1, 2016-02-18T17:02:48Z
#

unique template components/fstab/config;

include { 'components/fstab/config-common' };
include { 'components/fstab/config-rpm' };
