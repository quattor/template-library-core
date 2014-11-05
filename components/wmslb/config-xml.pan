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
      # wmslb, 14.10.0-rc2, rc2_1, 20141105-1011
      #

unique template components/wmslb/config-xml;

include { 'components/wmslb/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/wmslb';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/wmslb/wmslb.pm'); 
