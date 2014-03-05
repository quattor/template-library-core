################################################################################
# This is 'TPL/schema.tpl', a ncm-rm's file
################################################################################
#
# VERSION:    1.0.0, 25/06/07 22:49
# AUTHOR:     Novak Judit <judit.novak@cern.ch>
# MAINTAINER: German Cancio <German.Cancio@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
#  ** Generated file : do not edit **
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################


declaration template components/rm/schema;

include { 'quattor/schema' };
 

type component_rm = {
	include structure_component
	"edglocation"      ? string
	"localdomain"      ? string
	"defaultse"        ? type_hostname
	"defaultce"        ? type_hostname
	"infoservice"      ? string with (match(SELF,"MDS|RGMA"))
	"rlsmode"          : string with (match(SELF,"LrcOnly|WithRli"))
	"stubfile"         ? string
	"mdshost"          ? type_hostname
	"mdsport"          ? type_port
	"failifnoros"      ? boolean
	"confgcc"          ? string
        "ignoreprefix"     ? boolean
	"gftpdcau"         : boolean
        "gftpstreamssmall" : long with (SELF>0)
	"gftpstreamsbig"   : long with (SELF>0)
        "gftpfsizetshold"  : long with (SELF>0)
};

bind '/software/components/rm' = component_rm;


