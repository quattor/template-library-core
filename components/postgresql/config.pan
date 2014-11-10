# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   wouter.depypere@ugent.be <wouter.depypere@ugent.be>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # postgresql, 14.10.0-rc3, rc3_1, 20141110-1446
      #

unique template components/postgresql/config;

include { 'components/postgresql/config-common' };
include { 'components/postgresql/config-rpm' };
