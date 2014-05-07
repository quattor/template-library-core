# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Steve Traylen <steve.traylen@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # alternatives, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141722, 20140507-1516
      #

unique template components/alternatives/config-xml;

include { 'components/alternatives/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/alternatives';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/alternatives/alternatives.pm'); 
