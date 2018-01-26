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
# ceph, 17.12.0, 1, Fri Jan 26 2018
#


unique template components/ceph/sudo;

include 'components/sudo/config';


"/software/components/sudo/privilege_lines" = {
    sudolist = list(
        "/usr/bin/ceph-deploy",
        "/usr/bin/python -c import sys;exec(eval(sys.stdin.readline()))",
        "/usr/bin/python -u -c import sys;exec(eval(sys.stdin.readline()))",
        "/bin/mkdir",
        "/usr/bin/file -sL *"
    );
    foreach (i; cmd; sudolist){
        nl = dict(
            "host", "ALL",
            "options", "NOPASSWD:",
            "run_as", "ALL",
            "user", "ceph",
        );
        nl["cmd"] = cmd;
        append(nl);
    };
    SELF;
};
