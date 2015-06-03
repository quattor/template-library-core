# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Novak Judit <judit.novak@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# globuscfg, 15.4.0, 1, 2015-06-03T15:27:32Z
#
#


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

type globuscfg_component_type = {
	include structure_component
	include globus_global_type
};


bind "/software/components/globuscfg" = globuscfg_component_type;


