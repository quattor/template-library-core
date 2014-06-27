# Packages for an AII server

unique template quattor/aii/server/rpms;

@{
desc =  if true, enable installation of some tools required to manage YUM repositories\
 (e.g. createrepo). Disable if your AII server is not a YUM repository server.
values = true or false
default = true
required = no
}
variable AIISERVER_INSTALL_YUM_TOOLS ?= true;

include { 'quattor/aii/rpms' };
include { 'quattor/aii/dhcp/rpms' };
include { 'quattor/aii/ks/rpms' };
include { 'quattor/aii/pxelinux/rpms' };

'/software/packages' = {
  if ( AIISERVER_INSTALL_YUM_TOOLS ) {
    SELF['createrepo'] = nlist();
  };
  SELF;
};
