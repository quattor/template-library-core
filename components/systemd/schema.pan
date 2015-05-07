# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <stijn.deweirdt@ugent.be>
#

# 

declaration template components/systemd/schema;

include 'quattor/schema';

type systemd_skip = {
    "service" : boolean = false
};

# legacy conversion
#   1 -> rescue
#   234 -> multi-user
#   5 -> graphical
# for now limit the targets
type systemd_target = string with match(SELF, "^(default|poweroff|rescue|multi-user|graphical|reboot)$");

type systemd_unit_type = {
    "name" ? string # shortnames are ok; fullnames require matching type
    "targets" : systemd_target[] = list("multi-user") 
    "type" : string = 'service' with match(SELF, '^(service|target|sysv)$')
    "startstop" : boolean = true 
    "state" : string = 'enabled' with match(SELF,"^(enabled|disabled|masked)$")
};

type component_systemd = {
    include structure_component
    "skip" : systemd_skip
    # TODO: only ignore implemented so far. To add : disabled and/or masked
    "unconfigured" : string = 'ignore' with match (SELF, '^(ignore)$') # harmless default
    # escaped full unitnames are allowed (or use shortnames and type)
    "unit" ? systemd_unit_type{}
};
