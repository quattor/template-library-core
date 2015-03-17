# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <stijn.dweirdt@ugent.be>
#

# 


declaration template components/gpfs/schema;

include { 'quattor/schema' };

type component_gpfs_cfg = {
    "url"  : string
    "subnet" : string
    ## "useproxy" ? boolean = false
    "usecurl" ? boolean = true
    "useccmcertwithcurl" ? boolean = false
    "usesindesgetcertcertwithcurl" ? boolean = false
};

type component_gpfs_base = {
    "rpms" : string[]
    "baseurl"  : string
    "useproxy" ? boolean = false
    "usecurl" ? boolean = false
    "useccmcertwithcurl" ? boolean = false
    "usesindesgetcertcertwithcurl" ? boolean = false
    "useyum" : boolean = true
};

type component_gpfs = {
    include structure_component
    "base" :  component_gpfs_base
    "cfg" :  component_gpfs_cfg
};
