# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Tim Bell <tim.bell@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # hostsfile, 14.5.0-rc8, rc8_1, 20140605-1139
      #

unique template components/hostsfile/config;

include { 'components/hostsfile/config-common' };
include { 'components/hostsfile/config-rpm' };
