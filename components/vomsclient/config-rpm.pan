# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# vomsclient, 18.12.0-rc7, rc7_1, Tue Aug 13 2019
#

unique template components/vomsclient/config-rpm;

include 'components/vomsclient/config-common';

# Set prefix to root of component configuration.
prefix '/software/components/vomsclient';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-vomsclient', '18.12.0-rc7_1', 'noarch');
'dependencies/pre' ?= list('spma');

