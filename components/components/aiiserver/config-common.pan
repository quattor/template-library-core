# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
#

# 
# #
      # aiiserver, 14.2.1, 1, 20140304-2343
      #

unique template components/aiiserver/config-common;

include { 'components/aiiserver/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/aiiserver';

#'version' = '14.2.1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
