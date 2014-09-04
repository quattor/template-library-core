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
      # postgresql, 14.8.0-rc5-SNAPSHOT, rc5_SNAPSHOT20140904163507, 20140904-1735
      #

unique template components/postgresql/config;

include { 'components/postgresql/config-common' };
include { 'components/postgresql/config-rpm' };
