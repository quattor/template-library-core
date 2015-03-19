# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   David Groep <davidg@nikhef.nl>
#

# 
# #
# autofs, 15.2.0-rc5, rc5_1, 20150319-1200
#

unique template components/autofs/config;

include { 'components/autofs/config-common' };
include { 'components/autofs/config-rpm' };
