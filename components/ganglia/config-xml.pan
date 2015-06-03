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
# ganglia, 15.4.0-rc14, rc14_1, 2015-06-03T12:02:34Z
#

unique template components/ganglia/config-xml;

include { 'components/ganglia/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/ganglia';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/ganglia/ganglia.pm'); 
