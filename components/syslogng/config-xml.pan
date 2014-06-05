# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # syslogng, 14.5.0-rc7, rc7_1, 20140605-1100
      #

unique template components/syslogng/config-xml;

include { 'components/syslogng/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/syslogng';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/syslogng/syslogng.pm'); 
