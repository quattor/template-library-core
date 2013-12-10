# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Veronique Lefebure <Veronique.Lefebure@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # runlevel, 13.12.0, 1, 20131210-1548
      #

unique template components/runlevel/config-common;

include { 'components/runlevel/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/runlevel';

#'version' = '13.12.0';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
