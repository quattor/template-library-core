# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # mysql, 14.5.0-rc11, rc11_1, 20140606-1524
      #

unique template components/mysql/config-xml;

include { 'components/mysql/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/mysql';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/mysql/mysql.pm'); 
