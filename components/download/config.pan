#
# Software subject to following license(s):
#   EU Datagrid (http://opensource.org/licenses/EUDatagrid)
#   null
#

#
# Current developer(s):
#   Nick Williams <nick.williams@morganstanley.com>
#   Mark Wilson <Mark.Wilson@morganstanley.com>
#



unique template components/download/config;

include 'components/download/schema';

bind '/software/components/download' = download_component;

'/software/packages' = pkg_repl('ncm-download', '24.10.0-1', 'noarch');

include if_exists('components/download/site-config');

prefix '/software/components/download';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '24.10.0';
'dependencies/pre' ?= list('spma');
