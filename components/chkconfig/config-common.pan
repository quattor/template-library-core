# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Teemu Sidoroff <Teemu.Sidoroff@cern.ch>
#

# 
# #
# chkconfig, 16.6.0-rc5, rc5_1, Thu Jul 21 2016
#

unique template components/chkconfig/config-common;

include { 'components/chkconfig/schema' };

# Set prefix to root of component configuration.
prefix '/software/components/chkconfig';

#'version' = '16.6.0-rc5';
#'package' = 'NCM::Component';

'active' ?= true;
'dispatch' ?= true;
