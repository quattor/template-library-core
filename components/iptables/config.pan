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
      # iptables, 2.3.14, 20120824.1122.17
      #

unique template components/iptables/config;

include { 'components/iptables/config-rpm' };
