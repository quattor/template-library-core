# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Teemu Sidoroff <Teemu.Sidoroff@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # oramonserver, 13.6.0, 1, 20130830-1517
      #

unique template components/oramonserver/config-common;

include { 'components/oramonserver/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/oramonserver';

#'version' = '13.6.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
