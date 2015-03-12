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
    ok = first(components,k,v);
    while (ok) {
        if (!exists(base+v)) error("is_component_list: component "+v+" does not exist");
        ok = next(components,k,v);
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
    errors_ni = '';
    errors_na = '';
    ok = first(profiles,k,v);
    while(ok) {
        frst_match = '';
        scnd_match = '';
        # check if the prefix is there
        # Warning! This has the disadvantage that
        # 'foo' and 'profile_foo' are considered the same profile!
        if(match(v, '^'+prfx+'\w+$')) {
            errors_na = errors_na + " '" + v + "'";
        } else {
            frst_match = v;
            scnd_match = prfx+v;
            if(!(exists(base+frst_match+'/') || exists(base+scnd_match+'/')))
                errors_ni = errors_ni + " '" + v + "'";
        };
        ok = next(profiles,k,v);
    };

    errors = '';
    if(errors_ni != '') errors = "\n***"+errors_ni+": not existing profile(s). ";
    if(errors_na != '') errors = errors + "\n***"+errors_na+": not allowed name(s)";
    if(errors != '') error(errors);

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
    if (match(ARGV[0],'unknown')) {
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
			 error ("Card " + card + " index " + controller +
				" is not valid");
		    };
	       };
	  };
     };
     true;
};
