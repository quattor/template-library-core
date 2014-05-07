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
      # tomcat, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141723, 20140507-1516
      #

unique template components/tomcat/config;

include { 'components/tomcat/config-common' };
include { 'components/tomcat/config-rpm' };
