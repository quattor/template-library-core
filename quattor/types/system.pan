declaration template quattor/types/system;

############################################################
# system-related structures
############################################################

type structure_import = {
    "source"     : string # with isURI(SELF)
    "mountpoint" ? string with match(SELF, '^(/[a-zA-Z\_\d/]*|none|swap)$')
    "options"    ? string
};

type structure_export = {
    "localpath" : string
    "options"   ? string
};

type structure_cluster = {
    "name" : string
    "type" ? string
};

type structure_kernel = {
    "version"   ? string # "kernel version to use (eg. 2.4.18-27.7.x.cernsmp)"
};

type structure_oldname = {
    "name" : string
    "date" : string
};

