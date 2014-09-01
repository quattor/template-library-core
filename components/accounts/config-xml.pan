# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# 
# #
      # accounts, 14.8.0-rc4-SNAPSHOT, rc4_SNAPSHOT20140901174517, 20140901-1845
      #

unique template components/accounts/config-xml;

include { 'components/accounts/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/accounts';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/accounts/accounts.pm'); 
