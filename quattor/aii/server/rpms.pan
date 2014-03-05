# Packages for an AII server

unique template quattor/aii/server/rpms;

include { 'quattor/aii/rpms' };
include { 'quattor/aii/dhcp/rpms' };
include { 'quattor/aii/ks/rpms' };
include { 'quattor/aii/pxelinux/rpms' };

# dependencies
"/software/packages"=pkg_repl("cdb-sync","1.0.13-1","noarch");
"/software/packages"=pkg_repl("ncm-lib-blockdevices",QUATTOR_PACKAGES_VERSION,"noarch"); 
"/software/packages"=pkg_repl("syslinux","2.11-1",PKG_ARCH_DEFAULT);

include { if_exists('config/quattor/aii-server') };
