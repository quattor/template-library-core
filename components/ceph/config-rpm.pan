# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Kenneth Waegeman <Kenneth.Waegeman@UGent.be>
#

# 
# #
# ceph, 15.4.0, 1, 2015-06-03T15:21:52Z
#

unique template components/ceph/config-rpm;

include { 'components/ceph/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/ceph';

# Install Quattor configuration module via RPM package.
'/software/packages' = pkg_repl('ncm-ceph','15.4.0-1','noarch');
'dependencies/pre' ?= list('spma', 'accounts', 'sudo', 'useraccess');

