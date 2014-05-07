# #
# Software subject to following license(s):
#   The Apache Software License, Version 2.0 (http://www.apache.org/licenses/LICENSE-2.0.txt)
#   null
#

# ${developer-info
# ${author-info}
# #
      # ks, 14.4.0-rc3-SNAPSHOT, 20140507.1518.05
      #

# Template containing OS configuration and default values.

template quattor/aii/ks/variants/sl6;

# Remove deprecated options 
"/system/aii/osinstall/ks/mouse" = null;
"/system/aii/osinstall/ks/langsupport" = null;

"/system/aii/osinstall/ks/end_script" = "%end";
"/system/aii/osinstall/ks/part_label" = true;
"/system/aii/osinstall/ks/volgroup_required" = false;

"/system/aii/osinstall/ks/packages" = {
  append('perl-parent');
  append('perl-GSSAPI');
  append('perl-Template-Toolkit');
  SELF;
};

