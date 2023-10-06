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
# hostsfile, 23.9.0-rc1, rc1_1, Fri Oct 06 2023
#

unique template components/hostsfile/config-rpm;

"/software/packages" = pkg_repl("ncm-hostsfile", "23.9.0-rc1_1", "noarch");
