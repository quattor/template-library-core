# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Tim Bell <tim.bell@cern.ch>
#

# 
# #
# hostsfile, 24.10.0-rc1, rc1_1, Tue Oct 08 2024
#

unique template components/hostsfile/config-common;

include 'components/hostsfile/schema';

# Set prefix to root of component configuration.
prefix '/software/components/hostsfile';

'version' = '24.10.0';
'active' ?= false;
'dispatch' ?= false;

# Provide variables which can be used to provide dual stack entries for localhost.
# Specifying aliases for both stacks allows localhost to resolve for both protocols
# while still avoiding duplicate entries.

final variable HOSTSFILE_LOCALHOST4 = dict(
    'localhost', dict(
        'ipaddr', '127.0.0.1',
        'aliases', 'localhost.localdomain localhost4 localhost4.localdomain4',
    ),
);

final variable HOSTSFILE_LOCALHOST6 = dict(
    'localhost6', dict(
        'ipaddr', '::1',
        'aliases', 'localhost localhost.localdomain localhost6.localdomain6',
    ),
);
