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
# sysconfig, 15.4.0, 1, 2015-06-03T15:21:52Z
#

unique template components/sysconfig/config-xml;

include { 'components/sysconfig/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/sysconfig';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/sysconfig/sysconfig.pm'); 
