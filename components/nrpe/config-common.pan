# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# 
# #
      # nrpe, 14.4.0-rc3-SNAPSHOT, rc3_SNAPSHOT20140507141730, 20140507-1516
      #

unique template components/nrpe/config-common;

include { 'components/nrpe/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/nrpe';

#'version' = '14.4.0-rc3-SNAPSHOT';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
