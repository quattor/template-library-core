# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Veronique Lefebure <Veronique.Lefebure@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # runlevel, 13.1.1, 1, 20130830-1520
      #

unique template components/runlevel/config-xml;

include { 'components/runlevel/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/runlevel';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/runlevel/runlevel.pm'); 
