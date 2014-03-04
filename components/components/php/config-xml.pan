# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Judit Novak <Judit.Novak@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # php, 14.2.1, 1, 20140304-2349
      #

unique template components/php/config-xml;

include { 'components/php/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/php';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/php/php.pm'); 
