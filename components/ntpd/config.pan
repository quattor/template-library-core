# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Thorsten Kleinwort <Thorsten.Kleinwort@cern.ch>
#

# #
# Author(s): John Monteiro
#

# #
# ntpd, 15.4.0, 1, 2015-06-03T15:21:52Z
#

unique template components/ntpd/config;

include { 'components/ntpd/config-common' };
include { 'components/ntpd/config-rpm' };
