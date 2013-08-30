# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Andras Horvath <andras.horvath@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # iscsitarget, 13.1.1, 1, 20130830-1520
      #

unique template components/iscsitarget/config-xml;

include { 'components/iscsitarget/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/iscsitarget';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/iscsitarget/iscsitarget.pm'); 
