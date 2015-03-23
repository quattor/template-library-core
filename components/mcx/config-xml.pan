# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Nick Williams <Nick.Williams@morganstanley.com>
#

# 
# #
# mcx, 15.2.0, 1, 20150323-1248
#

unique template components/mcx/config-xml;

include { 'components/mcx/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/mcx';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/mcx/mcx.pm'); 
