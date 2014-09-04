# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   wouter.depypere@ugent.be <wouter.depypere@ugent.be>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # postgresql, 14.8.0-rc5-SNAPSHOT, rc5_SNAPSHOT20140904163507, 20140904-1735
      #

unique template components/postgresql/config-xml;

include { 'components/postgresql/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/postgresql';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/postgresql/postgresql.pm'); 
