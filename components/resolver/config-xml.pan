# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   njw <njw>
#

# 
# #
# resolver, 15.4.0-rc5, rc5_1, 2015-05-27T15:51:56Z
#

unique template components/resolver/config-xml;

include { 'components/resolver/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/resolver';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/resolver/resolver.pm'); 
