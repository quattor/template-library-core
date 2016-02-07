declaration template pan/functions;

include 'pan/types';

@documentation{
    push zero or more values onto the end of a list.
    If the list does not exist or is not defined a new list is
    created.
    @syntax value:element
    @param:value... the values to push onto list

    Example:
    "/data" = list(1, 2);
    "/data" = push(3, 4);

    "/data" will contain list (1, 2, 3, 4)
}
function push = {
    # Get the reference to SELF or create an empty list
    # as necessary.
    if (exists(SELF) && is_list(SELF)) {
        v = SELF;
    } else if (!exists(SELF) || !is_defined(SELF)) {
        v = list();
    } else {
        error("push can only be applied to a list");
    };

    # Cannot use merge or reference ARGV directly
    i = 0;
    while (i<ARGC) {
        v[length(v)] = ARGV[i];
        i = i + 1;
    };
    v;
};


@documentation{
    pushes zero of more pairs (key, value) into a
    dict.  If the list does not exist or is not defined
    a new dict is created.  If the key already exists with
    a different value an error is raised.
    @syntax key:string value:element
    @param:key key for the entry
    @param:value value for the entry

    Example:
    "/data" = dict("one", 1);
    "/data" = npush("two", 2, "three", 3);

    "/data" will contain dict("one", 1, "two", 2, "three", 3)
}
function npush = {
    # check the cardinality of the arguments; must be a
    # multiple of two
    if ((ARGC % 2) != 0) {
        error("usage: npush(key, value [, key1, value1, ...]) requires an even number of arguments");
    };

    # Create a new nlist from the given values.
    n = nlist();
    index = 0;
    while (index < ARGC) {
        if (!is_string(ARGV[index])) {
            error("key is not a string: "+to_string(ARGV[index]));
        };
        n[ARGV[index]] = ARGV[index+1];
        index = index + 2;
    };

    # Determine what initial value to use.
    if (exists(SELF) && is_nlist(SELF)) {
        merge(SELF, n);
    } else if (!exists(SELF) || !is_defined(SELF)) {
        n;
    } else {
        error("npush can only be applied to a nlist");
    };
};


@documentation{
    pushes zero or more values onto the end of a list
    if the flag is true.  If the flag is false, then either
    "SELF" (if it is defined) or an empty list is returned.
    @syntax flag:boolean values:element
    @param:flag flag to determine if value is added
    @param:value... value(s) to add

    Example:
    variable CONDITION = true;
    "/data" = list(1);
    "/data" = push_if(CONDITION, 2, 3);

    "/data" will contain list(1, 2, 3)
}
function push_if = {
    # Check cardinality and first argument.
    if (ARGC == 0 || !is_boolean(ARGV[0])) {
        error("usage: push_if(boolean, values...) requires at least a boolean as first argument");
    };

    if (ARGV[0]) {
        # Get the reference to SELF or create an empty list
        # as necessary.
        if (exists(SELF) && is_list(SELF)) {
            v = SELF;
        } else if (!exists(SELF) || !is_defined(SELF)) {
            v = list();
        } else {
            error("push_if can only be applied to a list");
        };

        # Merge the arguments into the given array.  Neither the
        # first/next or merge functions can be used because the
        # ARGV array cannot be directly referenced.
        #
        # Start index at one to avoid merging boolean flag.
        i = 1;
        while (i<ARGC) {
            v[length(v)] = ARGV[i];
            i = i + 1;
        };

    } else {

        # Return either SELF or an empty list.
        if (is_defined(SELF)) {
            v = SELF;
        } else {
            v = list();
        };
    };

    v;
};


@documentation{
    Extract (short) hostname and domainname from the object
    template name and return them as a list. If there is no
    domainname, the default domain is used.

    @syntax domain:string
    @param:domain default domain name

    (This also supports the old form profile_<hostname>,
    and will remove the '_profile' prefix).
}
function host_domain_from_object = {
    # Check cardinality.
    if (ARGC != 1) {
        error("usage: host_domain_from_object(default_domain) requires default domain as argument");
    };

    # Check the argument to ensure it is a valid domain name.
    if (!is_fqdn(ARGV[0])) {
        error(format("host_domain_from_object: invalid default domain (%s)", ARGV[0]));
    };

    # Check first for the old style profile names.
    m = matches(OBJECT, "^(?:profile_)?([^\\.]+)(?:\\.(.*))?$");
    size = length(m);

    if (size >= 2 && size <=3) {
        if (! is_shorthostname(m[1])) {
            error(format("host_domain_from_object: invalid hostname (%s)", m[1]));
        };
        res = list(m[1]);

        if (size == 3) {
            if (is_fqdn(m[2])) {
                res[1] = m[2];
            } else {
                error(format("host_domain_from_object: invalid domain name (%s)", m[2]));
            };
        } else {
            res[1] = ARGV[0];
        };
        res;
    } else {
        error(format("host_domain_from_object: invalid object name %s", OBJECT));
    };
};

@documentation{
    extracts the machine (short)hostname from the object
    template name.

    (This also supports the old form profile_<hostname>,
    and will remove the '_profile' prefix).

    @syntax void

    See also domain_from_object() and full_hostname_from_object().

    Example:
    object template profile_myhost.example.org;
    "/data" = hostname_from_object();

    "/data" will contain "myhost"
}
function hostname_from_object = {
    # Check cardinality.
    if (ARGC != 0) {
        error("usage: hostname_from_object() takes no arguments");
    };

    host_domain = host_domain_from_object('valid.unused.default.domain');
    host_domain[0];
};


@documentation{
    extracts the domain from the object template name.
    If the information is not in the name, the default is used.

    @syntax domain:string
    @param:domain default domain name

    Example:
    object template profile_myhost.example.org;
    "/data" = hostname_from_object("example.net");

    "/data" will contain "example.org"
};
function domain_from_object = {
    # Check cardinality.
    if (ARGC != 1) {
        error("usage: domain_from_object(default_domain) requires default domain as argument");
    };

    host_domain = host_domain_from_object(ARGV[0]);
    host_domain[1];
};


@documentation{
    extracts the full hostname from the object template name.
    If the domain information is not in the name, the default is used.

    @syntax domain:string
    @param:domain default domain name

    Example:
    object template myhost;
    "/data" = hostname_from_object("example.net");

    "/data" will contain "myhost.example.net"
}
function full_hostname_from_object = {
    # Check cardinality; leave detailed error checking to called functions.
    if (ARGC != 1) error("usage: full_hostname_from_object(default_domain) requires default_domain as argument");

    host_domain = host_domain_from_object(ARGV[0]);
    format("%s.%s", host_domain[0], host_domain[1]);
};

@documentation{
    Test if (all elements of) the first argument are
    any of the remaining arguments.
    (If the first argument is a list, all its elements are tested).

    Example:
    is_choice_of(1, 1, 2, 3) returns true
    is_choice_of(1, 2, 3) returns false

    is_choice_of(list("b", "c"), "a", "b", "c") returns true
    is_choice_of(list("a", "d"), "a", "b", "c") returns false

    The types are not checked and are assumed to be comparable.
        is_choice_of("1", 1, 2, 3) will give a panc error (string vs long),
        but is_choice_of(1.0, 1, 2, 3) is true (float vs long)
}
function is_choice_of = {
    if (ARGC < 2) {
        error("usage: is_choice_of() requires at least 2 arguments");
    };

    # TODO: is it faster to make a list of ARGV and use index function?
    if (is_list(ARGV[0])) {
        foreach(idx; el; ARGV[0]) {
            match = false;
            i = 1;
            while (i<ARGC) {
                if (el == ARGV[i]) {
                    match = true;
                    # no need to check others
                    i = ARGC;
                } else {
                    i = i + 1;
                };
            };

            if (! match) {
                # Current element does not match
                # No reason to continue
                return(false);
            };
        };
        return(true);
    } else {
        i = 1;
        while (i<ARGC) {
            if (ARGV[0] == ARGV[i]) {
                return(true);
            };
            i = i + 1;
        };
    };
    false;
};
