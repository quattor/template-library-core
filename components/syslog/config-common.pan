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
      # syslog, 14.8.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140901141107, 20140901-1511
      #

unique template components/syslog/config-common;

include { 'components/syslog/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/syslog';

#'version' = '14.8.0-rc3-SNAPSHOT';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
