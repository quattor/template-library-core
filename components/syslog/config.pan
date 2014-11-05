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
      # syslog, 14.10.0-rc2, rc2_1, 20141105-1011
      #

unique template components/syslog/config;

include { 'components/syslog/config-common' };
include { 'components/syslog/config-rpm' };
