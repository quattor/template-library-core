# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Guillaume PHILIPPON <guillaume.philippon@lal.in2p3.fr>
#

# #
# Author(s): Guillaume PHILIPPON
#

# #
# ganglia, 15.12.0-rc3, rc3_1, 2016-01-11T13:49:46Z
#

unique template components/ganglia/config;

include { 'components/ganglia/config-common' };
include { 'components/ganglia/config-rpm' };
