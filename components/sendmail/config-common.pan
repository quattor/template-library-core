# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jan Iven <jan.iven@cern.ch>
#

# 
# #
# sendmail, 23.9.0-rc1, rc1_1, Fri Oct 06 2023
#

unique template components/sendmail/config-common;

include 'components/sendmail/schema';

# Set prefix to root of component configuration.
prefix '/software/components/sendmail';

#'version' = '23.9.0-rc1';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
