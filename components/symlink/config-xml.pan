# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#

# 
# #
# symlink, 15.4.0, 1, 2015-06-03T15:21:52Z
#

unique template components/symlink/config-xml;

include { 'components/symlink/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/symlink';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/symlink/symlink.pm'); 
