# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jan Iven <jan.iven@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # sendmail, 14.8.0-rc4, rc4_1, 20140904-1839
      #

unique template components/sendmail/config-xml;

include { 'components/sendmail/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/sendmail';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/sendmail/sendmail.pm'); 
