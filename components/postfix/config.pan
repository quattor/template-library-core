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
# postfix, 23.9.0-rc1, rc1_1, Fri Oct 06 2023
#

unique template components/postfix/config;

include 'components/postfix/schema';

bind '/software/components/postfix' = postfix_component;

prefix '/software/components/postfix';
'active' ?= true;
'dispatch' ?= true;
'dependencies/pre' ?= list('spma');

'/software/packages' = pkg_repl('ncm-postfix','23.9.0-rc1_1','noarch');
