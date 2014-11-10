# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Joao Martins <alasdair.earl@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # iptables, 14.10.0-rc3, rc3_1, 20141110-1446
      #

unique template components/iptables/config;

include { 'components/iptables/config-common' };
include { 'components/iptables/config-rpm' };
