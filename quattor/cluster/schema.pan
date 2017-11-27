declaration template quattor/cluster/schema;

include 'quattor/types/component';
include 'quattor/types/hardware';
include 'quattor/types/metadata';
include 'quattor/types/system';

type structure_metacluster = {
    "name" : string
    "clusters" ? string[]
};

# Initially, allow building-level prefences only.
type structure_preferred_location = {
    "building" ? string
};

type structure_cluster_archetype = {
    "name"          : string # e.g. "hacluster"
};

type structure_system_aquilon_cluster = {
    "archetype"     : structure_cluster_archetype
    "components"    ? structure_sys_components
    "services"      ? structure_services{}
    "provides"      ? structure_provides{}
    "personality"   : structure_personality
    "maintenance"   ? structure_maintenance[]
    "cluster"       ? structure_cluster
    "build"         ? string with match (SELF, '^(:?build|ready||decommissioned)$')
    "security"      ? structure_security
    "features"      ? nlist
    "resources"     ? structure_resources
};

type structure_profile_aquilon_cluster = {
    "software" ? structure_software
    "system"   : structure_system_aquilon_cluster
    "metadata" ? structure_metadata
};
