# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jaroslaw Polok <jaroslaw.polok@cern.ch>
#

# 
# #
# afsclt, 14.10.1-SNAPSHOT, SNAPSHOT20150305103436, 20150305-1034
#

unique template components/afsclt/config-xml;

include { 'components/afsclt/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/afsclt';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/afsclt/afsclt.pm'); 
