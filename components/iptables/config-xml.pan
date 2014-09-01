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
      # iptables, 14.8.0-rc4-SNAPSHOT, rc4_SNAPSHOT20140901174519, 20140901-1845
      #

unique template components/iptables/config-xml;

include { 'components/iptables/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/iptables';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/iptables/iptables.pm'); 
