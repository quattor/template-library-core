# #
# Software subject to following license(s):
#   The Apache Software License, Version 2.0 (http://www.apache.org/licenses/LICENSE-2.0.txt)
#   null
#

# ${developer-info
# ${author-info}
# #
# ks, 15.2.0, 1, 20150323-1249
#

# Template containing OS configuration and default values.

template quattor/aii/ks/variants/fedora14;

# Remove deprecated options 
"/system/aii/osinstall/ks/mouse" = null;
"/system/aii/osinstall/ks/langsupport" = null;
"/system/aii/osinstall/ks/packages_args" = list("--ignoremissing");
