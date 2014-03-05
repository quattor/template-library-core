################################################################################
# This is 'TPL/schema.tpl', a ncm-postgresql's file
################################################################################
#
# VERSION:    0.1.0, 26/08/06 15:00
# AUTHOR:     Stijn.De.Weirdt@cern.ch
# MAINTAINER: Stijn.De.Weirdt@cern.ch
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
############################################################
#
# type definition components/postgresql
#
#
#
#
############################################################


declaration template components/postgresql/schema;

include { 'quattor/schema' };

type pg_db = {
	"user" ? string
	"installfile" ? string
	"sql_user" ? string
};

type structure_pgsql_comp_config = {
	"debug_print" ? long 
};

type component_pgsql = {
    include structure_component
	include structure_component_dependency

	"pg_script_name" ? string
	"pg_dir" ? string
	"pg_port" ? string
	"postgresql_conf" ? string
	"pg_hba" ? string
	"roles" ? string{}
	"databases" ? pg_db{}
	"commands" ? string{}
	"config" ? structure_pgsql_comp_config
};

bind '/software/components/postgresql' = component_pgsql;
