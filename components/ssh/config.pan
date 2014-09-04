# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Teemu Sidoroff <Teemu.Sidoroff@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # ssh, 14.8.0-rc5-SNAPSHOT, rc5_SNAPSHOT20140904163504, 20140904-1735
      #

unique template components/ssh/config;

include { 'components/ssh/config-common' };
include { 'components/ssh/config-rpm' };
