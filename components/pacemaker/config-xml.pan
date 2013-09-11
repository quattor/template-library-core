# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <stijn.deweirdt@ugent.be>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # pacemaker, 13.9.0, 1, 20130911-1927
      #

unique template components/pacemaker/config-xml;

include { 'components/pacemaker/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/pacemaker';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/pacemaker/pacemaker.pm'); 
