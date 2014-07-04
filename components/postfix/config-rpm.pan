# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# 
# #
      # postfix, 14.6.0, 1, 20140704-1605
      #

unique template components/postfix/config-rpm;

include { 'components/postfix/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/postfix';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-postfix','14.6.0-1','noarch');
'dependencies/pre' ?= list('spma');

