# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Tim Bell <tim.bell@cern.ch>
#

# 
# #
# hostsfile, 26.2.0, 1, Thu Apr 02 2026
#

unique template components/hostsfile/config-rpm;

"/software/packages" = pkg_repl("ncm-hostsfile", "26.2.0-1", "noarch");
