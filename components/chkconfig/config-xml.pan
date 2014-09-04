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
      # chkconfig, 14.8.0-rc4, rc4_1, 20140904-1742
      #

unique template components/chkconfig/config-xml;

include { 'components/chkconfig/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/chkconfig';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/chkconfig/chkconfig.pm'); 
