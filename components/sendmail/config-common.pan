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
      # sendmail, 14.8.0-rc5-SNAPSHOT, rc5_SNAPSHOT20140904163511, 20140904-1735
      #

unique template components/sendmail/config-common;

include { 'components/sendmail/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/sendmail';

#'version' = '14.8.0-rc5-SNAPSHOT';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
