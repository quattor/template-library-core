# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   wouter.depypere@ugent.be <wouter.depypere@ugent.be>
#

# 
# #
# postgresql, 15.12.0-rc3, rc3_1, 2016-01-11T13:49:46Z
#

unique template components/postgresql/config;

include { 'components/postgresql/config-common' };
include { 'components/postgresql/config-rpm' };
