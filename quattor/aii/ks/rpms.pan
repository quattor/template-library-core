# #
# Software subject to following license(s):
#   The Apache Software License, Version 2.0 (http://www.apache.org/licenses/LICENSE-2.0.txt)
#   null
#

# ${developer-info
# ${author-info}
# #
      # ks, 13.1-SNAPSHOT, 20130404.0000.18
      #

# Template adding aii-ks rpm to the configuration

unique template quattor/aii/ks/rpms;

"/software/packages"=pkg_repl("aii-ks","13.1-SNAPSHOT20130403220025","noarch");
