# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   David Groep <davidg@nikhef.nl>
#

# 
# #
# autofs, 15.4.0-rc15, rc15_1, 2015-06-03T13:14:24Z
#

unique template components/autofs/config-xml;

include { 'components/autofs/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/autofs';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/autofs/autofs.pm'); 
