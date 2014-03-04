# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles LOOMIS <loomis@lal.in2p3.fr>
#

# #
# Author(s): Nick Williams
#

# #
      # pam, 14.2.1, 1, 20140304-2349
      #

unique template components/pam/config-xml;

include { 'components/pam/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/pam';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/pam/pam.pm'); 
