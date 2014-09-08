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
      # mysql, 14.8.0-rc6, rc6_1, 20140908-1633
      #

unique template components/mysql/config;

include { 'components/mysql/config-common' };
include { 'components/mysql/config-rpm' };
