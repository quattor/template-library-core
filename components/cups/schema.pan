# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#

# 

declaration template components/cups/schema;

include {'quattor/schema'};

type component_cups_printer = {
    "server"        ? string
    "protocol"      ? string
    "printer"       ? string
    "uri"           ? string
    "delete"        ? boolean
    "enable"        ? boolean
    "class"         ? string
    "description"   ? string
    "location"      ? string
    "model"         ? string
    "ppd"           ? string
};


type component_cups_options = {
    "AutoPurgeJobs"         ? string with match (SELF, "yes|no")
    "Classification"        ? string
    "ClassifyOverride"      ? string with match (SELF, "on|off")
    "DataDir"               ? string
    "DefaultCharset"        ? string
    "Encryption"            ? string with match (SELF,"always|never|required|ifrequested")
    "ErrorLog"              ? string
    "LogLevel"              ? string with match (SELF,"debug2|debug|info|warn|error|none")
    "MaxCopies"             ? long
    "MaxLogSize"            ? long
    "PreserveJobHistory"    ? string with match (SELF, "yes|no")
    "PreserveJobFiles"      ? string with match (SELF, "yes|no")
    "Printcap"              ? string
    "ServerAdmin"           ? string
    "ServerName"            ? string
};

type component_cups = {
    include structure_component
    "defaultprinter"    ? string
    "nodetype"          ? string with match (SELF,"client|server")
    "options"           ? component_cups_options
    "printers"          ? component_cups_printer{}
};

bind "/software/components/cups" = component_cups;
