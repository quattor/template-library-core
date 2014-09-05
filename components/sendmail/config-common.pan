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
      # sendmail, 14.8.0-rc5, rc5_1, 20140905-1421
      #

unique template components/sendmail/config-common;

include { 'components/sendmail/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/sendmail';

#'version' = '14.8.0-rc5';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
