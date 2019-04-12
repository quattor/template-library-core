# #
# Software subject to following license(s):
#   The Apache Software License, Version 2.0 (http://www.apache.org/licenses/LICENSE-2.0.txt)
#   null
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# #
# Author(s): Michel Jouvin, Gabor Gombas, Ben Jones
#

# #
# ks, 18.12.0-rc5, rc5_1, Fri Apr 12 2019
#

# Template containing OS configuration and default values.

template quattor/aii/ks/variants/sl6;

prefix "/system/aii/osinstall/ks";

# Remove deprecated options
"mouse" = null;
"langsupport" = null;

"part_label" = true;
"volgroup_required" = false;

"packages" = {
    append('perl-parent');
    append('perl-GSSAPI');
    append('perl-Template-Toolkit');
    SELF;
};

"version" = "13.21";

"logging/method" = 'netcat';
"logging/protocol" = 'udp';
