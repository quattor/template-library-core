# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# ${developer-info
# ${author-info}
# #
      # server, 13.3.1-SNAPSHOT, 20130330-1332
      #

# Template adding aii-server rpm to the configuration

unique template quattor/aii/rpms;

"/software/packages"=pkg_repl("aii-server","13.3.1-SNAPSHOT20130330123224","noarch");
