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

    # Intended to be used by nbp/pxelinux plug-in
    "boot" ? structure_aii_hook[]
    "configure" ? structure_aii_hook[]
    "firmware" ? structure_aii_hook[]
    "install" ? structure_aii_hook[]
    "livecd" ? structure_aii_hook[]
    "remove" ? structure_aii_hook[]
    "rescue" ? structure_aii_hook[]
    "status" ? structure_aii_hook[]
};

@documentation{
    AII structure which defines the osinstall, nbp,
    dhcp config and hooks.
}
type structure_aii = extensible {
    "osinstall" ? structure_aii_module{}
    "nbp" ? structure_aii_module{}
    "dhcp" ? structure_aii_module
    "hooks" ? structure_aii_hooklist
@{
    The "protected" value can be used to protect the install and removal.
    By setting this value (eg. to the latest buildid), you will be asked 
    to confirm this string as verification when trying to do install, configure or removal actions. 
    This is done with the  --confirm option of aii-shellfe
}
    "protected" ? string
};
