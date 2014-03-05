# Packages for an AII server
# Note the syslinux version is for SL4
# Responsible: childss@cs.tcd.ie
template quattor/aii/server/rpms;

include { 'quattor/aii/rpms' };
include { 'quattor/aii/dhcp/rpms' };
include { 'quattor/aii/ks/rpms' };
include { 'quattor/aii/pxelinux/rpms' };

# dependencies
"/software/packages"=pkg_repl("cdb-sync","1.0.13-1","noarch");
"/software/packages"=pkg_repl("ncm-lib-blockdevices","13.1"+"-SNAPSHOT20130403213556","noarch"); 
"/software/packages"=pkg_repl("syslinux","2.11-1",PKG_ARCH_DEFAULT);

include { if_exists('config/quattor/aii-server') };
