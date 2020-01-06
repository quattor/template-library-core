# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Wouter Depypere <Wouter.Depypere@UGent.be>
#

# 
# #
# icinga, 19.12.0-rc1, rc1_1, Mon Jan 06 2020
#

template components/icinga/functions;

function icinga_has_host_or_hostgroup = {
    v = ARGV[0];
    if (exists (v["host_name"]) || exists (v["hostgroup_name"])) {
        return (true);
    };
    error ("At least one of host_name or hostgroup_name must be defined");
};

@documentation{
    desc = Check if a list of service names does not contain illegal characters.
    arg = List of service names.
}
function icinga_check_service_name = {
    v = ARGV[0];
    foreach(key; val; v) {
        if (! match (unescape(key), '^[\w. -]+$')) {
            error(format('Icinga service name "%s" contains invalid characters.', unescape(key)));
        };
    };
    true;
};
