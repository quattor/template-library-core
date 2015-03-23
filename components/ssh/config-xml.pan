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
# ssh, 15.2.0, 1, 20150323-1248
#

unique template components/ssh/config-xml;

include { 'components/ssh/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/ssh';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/ssh/ssh.pm'); 
