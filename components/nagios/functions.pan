################################################################################
# This is 'TPL/functions.tpl', a ncm-nagios's file
################################################################################
#
# VERSION:    1.4.13, 28/07/10 12:08
# AUTHOR:     Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
# MAINTAINER: Luis Fernando Muñoz Mejías <mejias@delta.ft.uam.es>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
template components/nagios/functions;

function has_host_or_hostgroup = {
	v = ARGV[0];
	if (exists (v["host_name"]) || exists (v["hostgroup_name"])) {
		return (true);
	};
	error ("At least one of host_name or hostgroup_name must be defined");
	return (false);
};
