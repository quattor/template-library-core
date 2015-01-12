# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Ronald Starink <ronalds@nikhef.nl>
#

# 

declaration template components/nsca/schema;

include {'quattor/schema'};

type structure_component_nsca_daemon = {
    "pid_file"          : string = "/var/run/nsca.pid"
    "server_port"       : long
    "server_addres"     ? string
    "user"              : string = "nagios"
    "group"             : string = "nagios"
    "chroot"            ? string
    "debug"             : boolean = false
    "command_file"      : string = "/var/log/nagios/rw/nagios.cmd"
    "alt_dump_file"     : string = "/var/log/nagios/rw/nsca.dump"
    "aggregate_writes"  : boolean = false
    "append_to_file"    : boolean = false
    "max_packet_age"    : long = 30
    "password"          : string
    "decryption_method" : long = 1
};

type structure_component_nsca_send = {
    "password"          : string
    "encryption_method" : long = 1
};

type structure_component_nsca = {
    include structure_component
    "daemon"            ? structure_component_nsca_daemon
    "send"              ? structure_component_nsca_send
};

bind "/software/components/nsca" = structure_component_nsca;
