# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# ${developer-info
# ${author-info}
# #
      # server, 14.10.0-rc2, 20141105-1011
      #

# Template adding aii-server rpm to the configuration

unique template quattor/aii/rpms;

"/software/packages"=pkg_repl("aii-server","14.10.0-rc2_1","noarch");
