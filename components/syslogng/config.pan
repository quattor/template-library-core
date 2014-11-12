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
      # syslogng, 14.10.0-rc4, rc4_1, 20141112-1118
      #

unique template components/syslogng/config;

include { 'components/syslogng/config-common' };
include { 'components/syslogng/config-rpm' };
