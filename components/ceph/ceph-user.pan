# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Kenneth Waegeman <Kenneth.Waegeman@UGent.be>
#

# 
# #
# ceph, 15.4.0, 1, 2015-06-03T15:21:52Z
#


unique template components/ceph/ceph-user;

include { 'components/accounts/config' };

prefix '/software/components/accounts';

"groups/ceph" = nlist("gid", 111);

"users/ceph" = nlist(
    "uid", 111,
    "groups", list("ceph"),
    "comment","ceph",
    "shell", "/bin/sh",
    "homeDir", "/home/ceph",
    "createHome", true,
);

'kept_users/ceph' = '';
'kept_groups/ceph' = '';
