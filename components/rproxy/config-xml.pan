# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Marco Emilio Poleggi <Marco.Poleggi@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # rproxy, 13.1.1, 1, 20130830-1520
      #

unique template components/rproxy/config-xml;

include { 'components/rproxy/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/rproxy';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/rproxy/rproxy.pm'); 
