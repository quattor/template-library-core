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
# ceph, 16.6.0, 1, Wed Jul 27 2016
#


unique template components/ceph/ceph-user;

include 'components/accounts/config';

# do not change uids of existing cluster
variable CEPH_OLD_UID ?= true; # set to false for new clusters, especially infernalis and above
variable CEPH_USER_ID = {
    if (CEPH_OLD_UID) {
        deprecated(0, 'ceph user should get a new uid. set final CEPH_OLD_UID = false');
        111;
    } else {
        167;
    };
};

prefix '/software/components/accounts';

"groups/ceph" = nlist("gid", CEPH_USER_ID);

"users/ceph" = nlist(
    "uid", CEPH_USER_ID,
    "groups", list("ceph"),
    "comment","ceph",
    "shell", "/bin/sh",
    "homeDir", "/home/ceph",
    "createHome", true,
);

'kept_users/ceph' = '';
'kept_groups/ceph' = '';
