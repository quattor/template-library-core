#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#



declaration template components/cups/schema;

include 'quattor/schema';

type cups_component_printer = {
    "server" ? string
    "protocol" ? string
    "printer" ? string
    "uri" ? string
    "delete" ? boolean
    "enable" ? boolean
    "class" ? string
    "description" ? string
    "location" ? string
    "model" ? string
    "ppd" ? string
};


type cups_component_options = {
    "AutoPurgeJobs" ? legacy_binary_affirmation_string
    "Classification" ? string
    "ClassifyOverride" ? string with match (SELF, "on|off")
    "DataDir" ? string
    "DefaultCharset" ? string
    "Encryption" ? string with match (SELF, "always|never|required|ifrequested")
    "ErrorLog" ? string
    "LogLevel" ? string with match (SELF, "debug2|debug|info|warn|error|none")
    "MaxCopies" ? long
    "MaxLogSize" ? long
    "PreserveJobHistory" ? legacy_binary_affirmation_string
    "PreserveJobFiles" ? legacy_binary_affirmation_string
    "Printcap" ? string
    "ServerAdmin" ? string
    "ServerAlias" ? string[]
    "ServerName" ? string
};

type cups_component = {
    include structure_component
    "defaultprinter" ? string
    "nodetype" ? string with match (SELF, "client|server")
    "options" ? cups_component_options
    "printers" ? cups_component_printer{}
};

