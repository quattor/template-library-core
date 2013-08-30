# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Judit Novak <Judit.Novak@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # tomcat, 13.1.1, 1, 20130830-1520
      #

unique template components/tomcat/config-common;

include { 'components/tomcat/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/tomcat';

#'version' = '13.1.1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
