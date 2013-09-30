# Template to force installation of specific versions for some of the Quattor
# client RPMs. This helps to support a wide range of OS major versions without
# duplicating too many things. It should be kept reduced to something minimal.
# For dependencies that are really OS dependent, prefer a template in the OS
# templates.
#
# For example, to test for SL6 and do specific actions, you can use a test like the following:
#"/software/packages" = {
#  if ( OS_VERSION_PARAMS['majorversion'] == '6' ) {
#    os_sl6 = true;
#  } else {
#    os_sl6 = false;
#  };
#  if( os_sl6 ) {
#  ....
#  }
#};

unique template quattor/client/os_hacks;

"/software/packages" = {
  if ( OS_VERSION_PARAMS['majorversion'] == '4' ) {
    pkg_repl("perl-XML-Simple","2.13-1","noarch");
    # The following dependencies are required by CCM 3.x
    pkg_repl('perl-JSON-XS','2.30-1.el4.rf',PKG_ARCH_DEFAULT);
    pkg_repl('perl-parent','0.223-1.el4.rf','noarch');
    pkg_repl('perl-CDB_File','0.96-1.el4.rf',PKG_ARCH_DEFAULT);
    pkg_repl('perl-common-sense','3.0-1.el4.rf',PKG_ARCH_DEFAULT);
    pkg_repl('perl-GSSAPI','0.23-1.el4.rf',PKG_ARCH_DEFAULT);
    pkg_repl('perl-libwww-perl','5.835-1.el4.rft','noarch');
  };
  SELF;
};

