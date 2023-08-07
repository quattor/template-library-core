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
# hostsfile, 23.6.0-rc2, rc2_1, Mon Aug 07 2023
#

unique template components/hostsfile/config-rpm;

"/software/packages" = pkg_repl("ncm-hostsfile", "23.6.0-rc2_1", "noarch");
