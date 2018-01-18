declaration template quattor/schema;

include 'pan/types';
include 'quattor/functions/validation';

include 'quattor/types/component';

include 'quattor/types/software';
include 'quattor/types/hardware';
include 'quattor/types/system';
include 'quattor/types/metadata';

@documentation{
    The profile structure (i.e. the type of '/')
}
type structure_profile = {
    "hardware" : structure_hardware
    "software" ? structure_software
    "system"   : structure_system
    "metadata" ? structure_metadata
};
