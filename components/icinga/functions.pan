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
# icinga, 15.2.0-rc3, rc3_1, 20150305-2157
#

template components/icinga/functions;

function has_host_or_hostgroup = {
	v = ARGV[0];
	if (exists (v["host_name"]) || exists (v["hostgroup_name"])) {
		return (true);
	};
	error ("At least one of host_name or hostgroup_name must be defined");
	return (false);
};
