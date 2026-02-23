# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <loomis@lal.in2p3.fr>
#

# 

declaration template components/sysconfig/schema;

include 'quattor/schema';

@documentation{
Contents of a sysconfig file modelled as a dict of key-value pairs.

Two reserved keys `prologue` and `epilogue` are treated specially,
their values will be copied verbatim into the file before or after the key-pair definitions.

Example:

'/software/components/sysconfig/files/scfg' = dict(
    'epilogue', 'export LANG=C',
    'KEY', 'VALUE',
);

This will create the file `/etc/sysconfig/scfg` which contains:

KEY=VALUE
export LANG=C
}
type component_sysconfig_file = string(1..){};

type component_sysconfig = {
    include structure_component
    @{ dict of dicts with a file name as the first key and the contents of each file as the child dict. }
    'files' ? component_sysconfig_file{}
};

bind '/software/components/sysconfig' = component_sysconfig;
