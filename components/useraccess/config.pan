#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#



unique template components/useraccess/config;

include 'components/useraccess/schema';

bind '/software/components/useraccess' = useraccess_component;

'/software/packages' = pkg_repl('ncm-useraccess', '18.12.0-rc6_1', 'noarch');

include if_exists('components/useraccess/site-config');

prefix '/software/components/useraccess';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '18.12.0';
"dependencies/pre" ?=  list("spma", "accounts");
