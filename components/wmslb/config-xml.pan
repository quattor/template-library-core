# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Quattor Project
#

# #
# Current developer(s):
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#

# #
# Author(s): Jerome Pansanel
#

# #
      # wmslb, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141758, 20140507-1517
      #

unique template components/wmslb/config-xml;

include { 'components/wmslb/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/wmslb';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/wmslb/wmslb.pm'); 
