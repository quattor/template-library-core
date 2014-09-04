# #
# Software subject to following license(s):
#   The Apache Software License, Version 2.0 (http://www.apache.org/licenses/LICENSE-2.0.txt)
#   null
#

# ${developer-info
# ${author-info}
# #
# dhcp, 14.8.0-rc4, 20140904.1735.22
#

# Template adding aii-dhcp rpm to the configuration

unique template quattor/aii/dhcp/rpms;

"/software/packages"=pkg_repl("aii-dhcp","14.8.0-rc4_1","noarch");
