# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <stijn.deweirdt@ugent.be>
#

# 
# #
# systemd, 24.10.0-rc1, rc1_1, Tue Oct 08 2024
#

unique template components/systemd/legacy/chkconfig;

include 'components/systemd/config';
include 'components/chkconfig/config';

'/software/components/systemd/skip/service' = true;
'/software/components/chkconfig/ncm-module' = 'Systemd::Service::Component::chkconfig';
