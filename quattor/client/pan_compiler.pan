# Template to help adding the current version of the pan compiler to the configuration.
# Mainly useful for Quattor template development.

unique template quattor/client/pan_compiler;

@{
desc = Pan compiler version to install
values = string (version number)
default = 10.3-1
required = no
}
variable PANC_DEFAULT_VERSION ?= '10.3-1';

'/software/packages' = pkg_repl('panc', PANC_DEFAULT_VERSION, 'noarch');

