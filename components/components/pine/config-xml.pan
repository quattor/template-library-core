# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jaroslaw Polok <jaroslaw.polok@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # pine, 14.2.1, 1, 20140304-2349
      #

unique template components/pine/config-xml;

include { 'components/pine/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/pine';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/pine/pine.pm'); 
