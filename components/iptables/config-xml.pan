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
      # iptables, 13.1.2, 1, 20131015-1106
      #

unique template components/iptables/config-xml;

include { 'components/iptables/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/iptables';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/iptables/iptables.pm'); 
