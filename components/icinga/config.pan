# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Wouter Depypere <Wouter.Depypere@UGent.be>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # icinga, 14.8.0-rc5-SNAPSHOT, rc5_SNAPSHOT20140904163511, 20140904-1735
      #

unique template components/icinga/config;

include { 'components/icinga/config-common' };
include { 'components/icinga/config-rpm' };
