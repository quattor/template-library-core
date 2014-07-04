# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Tim Bell <tim.bell@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # hostsfile, 14.6.0, 1, 20140704-1605
      #

unique template components/hostsfile/config-xml;

include { 'components/hostsfile/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/hostsfile';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/hostsfile/hostsfile.pm'); 
