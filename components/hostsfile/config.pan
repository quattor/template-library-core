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
      # hostsfile, 14.5.0-rc10, rc10_1, 20140606-1155
      #

unique template components/hostsfile/config;

include { 'components/hostsfile/config-common' };
include { 'components/hostsfile/config-rpm' };
