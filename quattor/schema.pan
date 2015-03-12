declaration template quattor/schema;

include 'pan/types';
include 'quattor/functions/validation';

include 'quattor/types/component';

@documentation{
    generic definition of the software tree. This is made more specific if the
    SPMA definitions are included
}
type structure_software = {
    "components"    ? structure_component{}
    "repositories"  ? list
    "packages"      ? nlist
    "groups"        ? nlist
};


include 'quattor/types/hardware';
include 'quattor/types/system';

@documentation{
    The profile structure (i.e. the type of '/')
}
type structure_profile = {
    "hardware" : structure_hardware
    "software" ? structure_software
    "system"   : structure_system
};
