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
      # postfix, 14.8.0-rc5-SNAPSHOT, rc5_SNAPSHOT20140904163505, 20140904-1735
      #

unique template components/postfix/config-xml;

include { 'components/postfix/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/postfix';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/postfix/postfix.pm'); 
