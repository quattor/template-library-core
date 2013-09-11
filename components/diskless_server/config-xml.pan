# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Vasilis Christaras <Vasileios.Christaras@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # diskless_server, 13.9.0, 1, 20130911-1927
      #

unique template components/diskless_server/config-xml;

include { 'components/diskless_server/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/diskless_server';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/diskless_server/diskless_server.pm');
