# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jan Iven <jan.iven@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # sendmail, 14.8.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140901141111, 20140901-1511
      #

unique template components/sendmail/config;

include { 'components/sendmail/config-common' };
include { 'components/sendmail/config-rpm' };
