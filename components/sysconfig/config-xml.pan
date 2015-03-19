# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <loomis@lal.in2p3.fr>
#

# 
# #
# sysconfig, 15.2.0-rc5, rc5_1, 20150319-1200
#

unique template components/sysconfig/config-xml;

include { 'components/sysconfig/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/sysconfig';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/sysconfig/sysconfig.pm'); 
