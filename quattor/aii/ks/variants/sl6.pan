# #
# Software subject to following license(s):
#   The Apache Software License, Version 2.0 (http://www.apache.org/licenses/LICENSE-2.0.txt)
#   null
#

# ${developer-info
# ${author-info}
# #
      # ks, 14.8.0-rc5, 20140905.1421.58
      #

# Template containing OS configuration and default values.

template quattor/aii/ks/variants/sl6;

prefix "/system/aii/osinstall/ks";

# Remove deprecated options 
"mouse" = null;
"langsupport" = null;

"end_script" = "%end";
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
