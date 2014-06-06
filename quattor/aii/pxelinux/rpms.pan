# #
# Software subject to following license(s):
#   The Apache Software License, Version 2.0 (http://www.apache.org/licenses/LICENSE-2.0.txt)
#   null
#

# ${developer-info
# ${author-info}
# #
# pxelinux, 14.5.0, 20140606.1647.56
#

# Template adding aii-pxelinux rpm to the configuration

unique template quattor/aii/pxelinux/rpms;

"/software/packages"=pkg_repl("aii-pxelinux","14.5.0-1","noarch");
