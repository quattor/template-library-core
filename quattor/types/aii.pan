@{
    AII types
}

declaration template quattor/types/aii;


type structure_aii_module = extensible {
    "dummy" ? string
};

type structure_aii_hook = extensible {
    "module" : string
};

type structure_aii_hooklist = {
    "pre_install" ? structure_aii_hook[]
    "post_install" ? structure_aii_hook[]
    "post_reboot" ? structure_aii_hook[]
    "anaconda" ? structure_aii_hook[]
    # Intended to be used by nbp plug-in
    "rescue" ? structure_aii_hook[]
    "install" ? structure_aii_hook[]
    "remove" ? structure_aii_hook[]
    "boot" ? structure_aii_hook[]
};

type structure_aii = extensible {
    "osinstall" ? structure_aii_module{}
    "nbp" ? structure_aii_module{}
    "dhcp" ? structure_aii_module
    "hooks" ? structure_aii_hooklist
};
