# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <stijn.dweirdt@ugent.be>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # ofed, 14.5.0-rc8, rc8_1, 20140605-1139
      #

unique template components/ofed/config;

include { 'components/ofed/config-common' };
include { 'components/ofed/config-rpm' };
