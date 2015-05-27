# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Teemu Sidoroff <Teemu.Sidoroff@cern.ch>
#

# 
# #
# chkconfig, 15.4.0-rc4, rc4_1, 2015-05-27T12:42:00Z
#

unique template components/chkconfig/config-xml;

include { 'components/chkconfig/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/chkconfig';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/chkconfig/chkconfig.pm'); 
