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
# hostsfile, 23.6.0-rc4, rc4_1, Tue Aug 08 2023
#

unique template components/hostsfile/config-common;

include 'components/hostsfile/schema';

# Set prefix to root of component configuration.
prefix '/software/components/hostsfile';

'version' = '23.6.0';
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
