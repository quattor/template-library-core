# #
# Software subject to following license(s):
#   The Apache Software License, Version 2.0 (http://www.apache.org/licenses/LICENSE-2.0.txt)
#   null
#

# ${developer-info
# ${author-info}
# #
      # ks, 13.1.3, 20140318.2329.20
      #

# Template containing OS configuration and default values.

template quattor/aii/ks/variants/sl6;

# Remove deprecated options 
"/system/aii/osinstall/ks/mouse" = null;
"/system/aii/osinstall/ks/langsupport" = null;
"/system/aii/osinstall/ks/packages_args" = list("--ignoremissing");

"/system/aii/osinstall/ks/end_script" = "%end";
"/system/aii/osinstall/ks/part_label" = true;
"/system/aii/osinstall/ks/volgroup_required" = false;

#add needed packages for @INC at post-install step :
"/system/aii/osinstall/ks/extra_packages" ?= push("perl-CAF", "perl-LC", "perl-AppConfig",);
