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
# sendmail, 15.4.0-rc4, rc4_1, 2015-05-27T12:42:00Z
#

unique template components/sendmail/config-common;

include { 'components/sendmail/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/sendmail';

#'version' = '15.4.0-rc4';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
