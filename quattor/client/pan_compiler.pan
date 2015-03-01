# Template to help adding the current version of the pan compiler to the configuration.
# Mainly useful for Quattor template development.

unique template quattor/client/pan_compiler;

'/software/packages' = pkg_repl('panc','10.2-1','noarch');

