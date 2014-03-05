################################################################################
# This is 'TPL/schema.tpl', a ncm-globuscfg's file
################################################################################
#
# VERSION:    1.4.1, 17/05/13 09:17
# AUTHOR:     Novak Judit <judit.novak@cern.ch>
# MAINTAINER: Novak Judit <judit.novak@cern.ch>, Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################


declaration template components/globuscfg/schema;

include { 'quattor/schema' };

type reg_type = {
	"recordname" : string
	"regname" ? string
	"reghn" ? string
	"regport" ? type_port
	"regperiod" ? long
	"ttl" ? long
};

type globus_mds_gris_type = {
	"suffix" ? string
	"provider" ? string{}
	"registration" ? reg_type[]
};

type globus_mds_giis_allowedregs_type = {
	"recordname" : string
	"name" ? string		
	"allowreg" ? string[]
};

type globus_mds_giis_reg_type = {
	"regname" : string
	"reghn" : string
	"regport" ? type_port
	"regperiod" ? long
	"ttl" ? long
	"name" ? string
};

type globus_mds_giis_type = {
	"allowedregs" ? globus_mds_giis_allowedregs_type[]
	"registration" ? globus_mds_giis_reg_type{}
};

type globus_mds_type = {
	"globus_flavor_name" ? string
	"user" ? string
	"x509_user_cert" ? string
	"x509_user_key" ? string
	"gris" ? globus_mds_gris_type
	"giis" ? globus_mds_giis_type
};

type globus_gridftp_type = {
	"globus_flavor_name" ? string
	"X509_USER_CERT" ? string
	"X509_USER_KEY" ? string
	"ftpd" ? string
	"port" ? type_port
	"umask" ? string
	"log" ? string
	"user" ? string
	"maxConnections" ? long
	"options" ? string
};

type globus_gatekeeper_jobmanager_type = {
	"recordname" : string
	"type" ? string
	"job_manager" ? string 
	"extra_config" ? string	
};

type globus_gatekeeper_type = {
	"globus_flavor_name" ? string
	"job_manager_path" ? string[]
	"globus_gatekeeper" ? string
	"extra_options" ? string
	"user" ? string
	"port" ? type_port
	"logfile" ? string
	"jobmanagers" ? globus_gatekeeper_jobmanager_type[]
};

type globus_global_type = {
	"services" ? string[]
	"paths" ? string[]
	"globus_flavor_name" : string
	"GLOBUS_LOCATION" : string = '/opt/globus'
	"GPT_LOCATION" : string	= '/opt/gpt'
	"GLOBUS_CONFIG" : string = '/etc/globus.conf'
	"GLOBUS_TCP_PORT_RANGE" ? string	
	"GLOBUS_UDP_PORT_RANGE" ? string	
	"LD_LIBRARY_PATH" ? string	# "appended to existing LD_LIBRARY_PATH"
	"x509_user_cert" ? string
  "x509_user_key" ? string
  "x509_cert_dir" : string = '/etc/grid-security/certificates'
	"gridmap" ? string
	"gridmapdir" ? string
	"mds" ? globus_mds_type
	"gridftp" ? globus_gridftp_type
	"gatekeeper" ? globus_gatekeeper_type
        "sysconfigUpdate" ? boolean = true   # "if false, don't update /etc/sysconfig/globus"
};

type component_globuscfg_type = {
	include structure_component
	include globus_global_type
};


bind "/software/components/globuscfg" = component_globuscfg_type;


