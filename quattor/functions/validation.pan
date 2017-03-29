@{
    Validation function definitions for the following composed types:
        * software component
        * /software tree
        * /system tree
}
declaration template quattor/functions/validation;

include 'pan/functions';

@documentation{
    desc = checks that the argument is a list and that all the strings identify existing components
    arg = list of valid components
}
function is_component_list = {
    # Check the argument.
    if (ARGC != 1) error("is_component_list requires one argument");
    if (!is_list(ARGV[0])) error("is_component_list requires list argument");

    # Location of the components.
    base = "/software/components/";

    components = ARGV[0];

    foreach(k; v; components){
        if (!exists(base + v)){
            error("is_component_list: component " + v + " does not exist");
        };
    };

    true;
};

@documentation{
    desc = adds the mountpoint entry of a given resource to the mount table, if it does not exist there so far, else drops an error
}
function check_mount = {
    # general testing
    if( ARGC != 2 || !is_resource(ARGV[1]) ) {
        # mount table may be empty
        error("expecting two resources");
    };

    mounts = ARGV[0];
    partition = ARGV[1];

    # we test only if partition not swap and has a mounpoint
    if( !exists(partition["mountpoint"]) ) return(mounts);
    if( match(partition["mountpoint"], '^(swap|none)$') ) return(mounts);

    # if mountpoint not already defined append to mounts
    if( !exists(mounts[ escape(partition["mountpoint"]) ]) ) {
        mounts[ escape(partition["mountpoint"]) ] = 1;
        return(mounts);
    };

    # so such a mountpoint exists already
    error("multiply appearing mountpoint " + partition["mountpoint"]);
};

@documentation{
    desc = checks that the argument is a list and that all its elements identify existing profiles. Each name in profiles will be matched against 'foo' and 'profile_foo', which are considered to be the same, but the latter form is forbidden in the input list.
}
function is_profile_list = {
    # Check the argument.
    if(ARGC != 1) error("is_profile_list: requires exactly one argument");
    if(!is_list(ARGV[0])) error("is_profile_list: argument must be a list");

    # Location of the profiles.
    base = "//";
    prfx = 'profile_';

    profiles = ARGV[0];

    foreach(k; v; profiles){
        if(match(v, format('^%s\w+$', prfx)))
            error(format("Name not allowed: %s", v));

        if(!(exists(format("%s%s/", base, v)) || exists(format("%s%s%s/", base, prfx, v))))
            error(format("Non existing profile: %s", v));
    };
    true;
};

@documentation{
    desc = checks if the argument is a fiber-channel-style hardware address
}
function is_a_fcahwaddr = {
    # Check cardinality and type of argument.
    if (ARGC != 1 || !is_string(ARGV[0])) {
        error("usage: is_fcahwaddr(string)");
    };
    if (match(ARGV[0], 'unknown')) {
        return (true);
    };
    match(ARGV[0], '^[\dA-Fa-f]{2}([:-])[\dA-Fa-f]{2}(\1[\dA-Fa-f]{2}){6}$');
};


@documentation{
    desc = returns true if the argument is a defined card port
}
function is_card_port = {
    path = ARGV[0];
    if (exists ("/hardware/cards/" + path) && match (path, 'ports/_\d+')) {
        return (true);
    };
    error ("Ports on disk controllers must be indexed with a number");
};


@documentation{
    desc = returns true if all the controller and port indexes are numeric (but have a leading _ to make them work as nlists).
}
function is_valid_card_ports = {
    l = list ("raid", "ide", "sata", "scsi", "sas");

    cardlist = ARGV[0];

    foreach (i; card; l) {
        if (exists (cardlist[card])) {
            foreach (controller; data; cardlist[card]) {
                if (!match (controller, '^_\d+$')) {
                    error (format("Card %s index %s is not valid", card, controller));
                };
            };
        };
    };
    true;
};

@documentation{
    desc = Checks keys of a dict are valid absolute paths to files (not directories) using is_absolute_file_path
}
function valid_absolute_file_paths = {
    foreach (k; v; ARGV[0]) {
        path = unescape(k);
        is_absolute_file_path(path);
    };
    true;
};
