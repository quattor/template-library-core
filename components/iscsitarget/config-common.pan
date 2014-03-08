# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Andras Horvath <andras.horvath@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # iscsitarget, 14.2.1, 1, 20140304-2347
      #

unique template components/iscsitarget/config-common;

include { 'components/iscsitarget/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/iscsitarget';

#'version' = '14.2.1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
