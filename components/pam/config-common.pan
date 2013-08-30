# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   njw <njw>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # pam, 13.1.1, 1, 20130830-1520
      #

unique template components/pam/config-common;

include { 'components/pam/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/pam';

#'version' = '13.1.1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
