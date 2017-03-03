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
# icinga, 17.2.0, 1, Fri Mar 03 2017
#

template components/icinga/functions;

function icinga_has_host_or_hostgroup = {
    v = ARGV[0];
    if (exists (v["host_name"]) || exists (v["hostgroup_name"])) {
        return (true);
    };
    error ("At least one of host_name or hostgroup_name must be defined");
    return (false);
};
