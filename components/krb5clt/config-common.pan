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
      # krb5clt, 14.2.1, 1, 20140304-2347
      #

unique template components/krb5clt/config-common;

include { 'components/krb5clt/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/krb5clt';

#'version' = '14.2.1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
