# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Loic Brarda <Loic.Brarda@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#



declaration template components/pvss/schema;

type pvss_patch_type={
    "patchfilename" : string
    "patchpresencefilename" : string
};

type pvss_project_type={
    "projectname" : string
    "projectpath" : string
    "projectuser" ? string
};

type component_pvss_type={
    include structure_component
    "rooturl" : string
    "pvsspath" : string
    "licencefilename" ? string
    "patches" ? pvss_patch_type[]
    "datacheckmemoryhack" ? boolean
    "stickybithack" ? boolean
    "logfolderhack" ? boolean
    "projects" ? pvss_project_type[]
    "mail_address" ? string
};

bind "/software/components/pvss" = component_pvss_type;
