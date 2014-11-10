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
      # ceph, 14.10.0-rc3, rc3_1, 20141110-1446
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
