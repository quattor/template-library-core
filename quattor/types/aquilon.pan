declaration template quattor/types/aquilon;

@documentation{
    aquilon-related structures
}

type structure_fsdata = {
    "mountpoint"        : string
    "mountopts"         ? string
    "type"              : string
    "mount"             ? boolean
    "pass"              ? long(0..)
    "freq"              ? long(0..2)
    "block_device_path" : string # No validation on this!
};

type structure_virtual_machine = extensible {
    "name" : string
    "hardware" : structure_hardware
};

type structure_resources = {
    "application" ? list()
    "auto_start_list" ? list()
    "filesystem" ? structure_fsdata[]
    "hostlink" ? list()
    "intervention" ? list()
    "reboot_iv" ? list()
    "reboot_schedule" ? list()
    "resourcegroup" ? list()
    "service_address" ? list()
    "share" ? list()
    "system_list" ? list()
    "virtual_machine" ? structure_virtual_machine[]
};

type structure_cluster = {
    "name" : string
    "type" ? string
    "resources"     ? structure_resources
    "members" ? type_hostname[]
    "campus" ? string
    "sysloc" ? structure_sysloc
    "rack" ? structure_rack
    "down_hosts_threshold" ? long(0..)
    "node_index" ? long(0..)
    "max_hosts" ? long(0..)
};

type structure_archetype = {
    "name"          : string # e.g. "aquilon"
    "os"            : string # e.g. "linux"
    "os_lifecycle"  : string
    "model"         : string # e.g. "4.0.1-x86_64"
    "filesystem-layout" ? string with if_exists("archetype/filesystem-layouts/" + SELF) != ""
    "archlist"      ? string[] # e.g. fs sysname list for model,
                               # "x86_64.linux.2.6.glibc.2.3", "amd64.linux.2.4.glibc.2.3", ...
};

type structure_event = {
    "timeout"       ? long
    "actions"       ? string[] with is_action_list(SELF)
};

type structure_events = {
    "shutdown"      ? structure_event
    "startup"       ? structure_event
    "maintenance"   ? structure_event
};

type structure_action_dependency = {
    "pre"           ? string[] with is_action_list(SELF)
    "post"          ? string[] with is_action_list(SELF)
};

type structure_action = {
    "user"          : string
    "command"       : string
    "timeout"       ? long
    "priority"      ? long
    "dependencies"  ? structure_action_dependency
};

# Maintenance windows
type structure_maintenance = {
    "day"        : string with match(SELF, "(Mon|Tue|Wed|Thu|Fri|Sat|Sun)")
    "start"      : string with match(SELF, "[012][0-9]:[0-5][0-9]")
    "duration"   : long(1..100)
};

type structure_espinfo = {
    "description"   ? string with check_esp_chars(SELF)
    "class"         ? string with match(SELF, '(INFRASTRUCTURE|APPLICATION)')
    # infrafunction is to give more detail to class for the
    # case that class is INFRASTRUCTURE
    "infrafunction" ? string with check_esp_chars(SELF)
    "escalation"    ? string with check_esp_chars(SELF)
    "notifyrules"   ? string with check_esp_chars(SELF)
    "notifyhours"   ? string with check_esp_chars(SELF)
};

type structure_personality = {
    # how many machines (as a percentage of the population) is the minimum
    # that we need in order to achieve our objectives? E.g. 95%.
    "name"          : string
    "description"   ? string
    "class"         ? string with match(SELF, '(INFRASTRUCTURE|APPLICATION)')
    "users"         ? string[]
    "systemgrn"     ? string[]
    "escalation"    ? string
    "notifyrules"   ? string
    "notifyhours"   ? string
    # function: the business function to which this is being used.
    # this will become the ESP status once the machine's (build)status
    # reaches 'ready'. Note that the "build" function should only
    # be used by personalities for hosts still in inventory.
    "function"      ? string with match(SELF, "(development|production|grid|qa|crash)")
    "threshold"     ? long(0..100)
    # An alternative threshold to be applied when in maintenance mode
    # We provide a default of 50%, so you must declare the value if you
    # want anything else.
    "maintenance_threshold" ? long(0..100) = 50
    "backups"       ? string
    "host_environment" : string with match(SELF, "^(dev|qa|uat|prod|infra|legacy)$")
    "owner_eon_id"  : long
    "stage"         : string
    "esp"           ? structure_espinfo
};

type structure_sys_components = {
    "namespace" ? string
};

type structure_services = {
    "instance"      : string
    "servers"       ? string[]
    "server_ips"    ? string[]
};

type structure_provides = {
    "instance"      : string
    "clients"       ? string[]
};

type structure_security = {
    "class"         : string with if_exists("archetype/security/" + SELF) != ""
    "svcwhitelist"  ? list
};

# All resources in this structure muse be optional so that the
# schema can be used by non Aquilon sites
type structure_system_aquilon = {
    "advertise_status" ? boolean
    "archetype"     ? structure_archetype
    "build"         ? string with match (SELF, '^(build|blind|ready|failed|install)$')
    "cluster"       ? structure_cluster
    "enclosure"     ? structure_enclosure
    @{Filesystems to be configured. Mountpoints and blockdevices must be unique.}
    "filesystems"   ? structure_filesystem[] with filesystems_uniq_paths(SELF)
    "security"      ? structure_security
    "users"         ? nlist
    "eon_ids"       ? long[]
    "eon_id_maps"   ? nlist
    "owner_eon_id"  ? long
    "provides"      ? nlist
    "services"      ? structure_services{}
    "personality"   ? structure_personality
    "host_environment" ? string
    "features"      ? nlist
};
