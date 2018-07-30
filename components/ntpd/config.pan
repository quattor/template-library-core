#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Thorsten Kleinwort <Thorsten.Kleinwort@cern.ch>
#

#
# Author(s): John Monteiro
#


unique template components/ntpd/config;

include 'components/ntpd/schema';

bind '/software/components/ntpd' = ntpd_component;

'/software/packages' = pkg_repl('ncm-ntpd', '18.6.0-1', 'noarch');

include if_exists('components/ntpd/site-config');

prefix '/software/components/ntpd';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '18.6.0';
'dependencies/pre' ?= list('spma');
