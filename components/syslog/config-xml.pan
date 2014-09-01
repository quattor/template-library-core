# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Ulrich Schwickerath <ulrich.schwickerath@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # syslog, 14.8.0-rc4-SNAPSHOT, rc4_SNAPSHOT20140901174522, 20140901-1845
      #

unique template components/syslog/config-xml;

include { 'components/syslog/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/syslog';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/syslog/syslog.pm'); 
