# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# #
# Author(s): Luis Fernando Muñoz Mejías
#

# #
# metaconfig, 15.12.0-rc3, rc3_1, 2016-01-11T13:50:31Z
#

declaration template components/metaconfig/schema;

include { 'quattor/schema' };

type metaconfig_extension = extensible {};

type caf_service_action = string with match(SELF, '^(restart|reload|stop_sleep_start)$');

type metaconfig_config =  {
     'mode' : long = 0644
     'owner' : string = 'root'
     'group' : string = 'root'
     'daemons' ? caf_service_action{}
     'module' : string
     'backup' ? string
     'preamble' ? string
     'contents' : metaconfig_extension
} = nlist();

type metaconfig_component = {
    include structure_component
    'services' : metaconfig_config{} with valid_absolute_file_paths(SELF)
};
