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
      # icinga, 14.5.0-rc9, rc9_1, 20140605-1524
      #

unique template components/icinga/config;

include { 'components/icinga/config-common' };
include { 'components/icinga/config-rpm' };
