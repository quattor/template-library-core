# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# ${developer-info
# ${author-info}
# #
# server, 15.2.0, 1, 20150323-1249
#

# Template adding aii-server rpm to the configuration

unique template quattor/aii/rpms;

"/software/packages"=pkg_repl("aii-server","15.2.0-1","noarch");
