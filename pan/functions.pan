################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
#
# Function definitions
#
################################################################################

declaration template pan/functions;

include 'pan/types';

############################################################
##=
## @function push
## @# push zero or more values onto the end of a list.
##+If the list does not exist or is not defined a new list is
##+created.
## @syntax value:element
## @param:value... the values to push onto list
## @example
##+# "/data" will contain list (1,2,3,4)
##+"/data" = list(1,2);
##+"/data" = push(3,4);
##=
############################################################
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

    # Merge the arguments into the given array.  Neither the
    # first/next or merge functions can be used because the
    # ARGV array cannot be directly referenced.
    i = 0;
    while (i < ARGC) {
        v[length(v)] = ARGV[i];
        i = i + 1;
    };
    v;
};


############################################################
##=
## @function npush
## @# pushes zero of more pairs (key, value) into a
##+dict.  If the list does not exist or is not defined
##+a new dict is created.  If the key already exists with
##+a different value an error is raised.
## @syntax key:string value:element
## @param:key key for the entry
## @param:value value for the entry
## @example
##+# "/data" will contain dict("one",1,"two",2,"three",3)
##+"/data" = dict("one",1);
##+"/data" = npush("two",2,"three",3);
##=
############################################################
function npush = {
    # check the cardinality of the arguments; must be a
    # multiple of two
    if ((ARGC % 2) != 0) {
        error("usage: \"/full/path\" = npush(key, value, ...)");
    };

    # Determine what initial value to use.
    if (exists(SELF) && is_dict(SELF)) {
        v = SELF;
    } else if (!exists(SELF) || !is_defined(SELF)) {
        v = dict();
    } else {
        error("npush can only be applied to a dict");
    };

    # Create a new dict from the given values.
    n = dict();
    index = 0;
    while (index < ARGC) {
        if (!is_string(ARGV[index])) error(format("key is not a string: %s", ARGV[index]));
        n[ARGV[index]] = ARGV[index+1];
        index = index + 2;
    };

    # Returned the merged values.
    merge(v, n);
};


############################################################
##=
## @function push_if
## @# pushes zero or more values onto the end of a list
##+if the flag is true.  If the flag is false, then either
##+"SELF" (if it is defined) or an empty list is returned.
## @syntax flag:boolean values:element
## @param:flag flag to determine if value is added
## @param:value... value(s) to add
## @example
##+# "/data" will contain list(1,2,3)
##+variable flag = true;
##+"/data" = list(1);
##+"/data" = push_if(flag,2,3);
##=
############################################################
function push_if = {
    # Check cardinality and first argument.
    if (ARGC == 0 || !is_boolean(ARGV[0]))
        error("usage: \"/full/path\" = push(boolean, values...)");

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


########################################################################
#
# hostname_from_object: extracts the hostname, without the domain,
# from the object template name. Its name is assumed to be the host FQDN.
#
#
############################################################
function hostname_from_object = {
    # Check cardinality.
    if (ARGC != 0) error("usage: hostname_from_object()");

    m = matches(OBJECT, "([^\\.]+)(\\.(.*))?");
    if (length(m) >= 2) {
        if (is_shorthostname(m[1])) {
            return(m[1]);
        } else {
            error(format("hostname_from_object: invalid hostname (%s)", m[1]));
        };
    };

    # Invalid syntax for object profile.
    error("hostname_from_object: invalid object profile syntax");
};


########################################################################
#
# domain_from_object: extracts the domain from the object template name.
# This assumes that the profile name is the host FQDN.
#
# This function used to receive a default domain name that was needed
# at the time where object template names were of the form 'profile_hostname',
# with 'hostname' the hostname without a domain. It is now deprecated.
#
############################################################
function domain_from_object = {
    # Check  if a default domain has been defined
    if ( ARGC == 1 ) {
        # Default domain name is no longer used and passing the argument is deprecaded
        deprecated(0, 'Using default_domain argument is deprecated. Use domain_from_object() instead');
    } else if ( ARGC > 1 ) {
        error("usage: domain_from_object()");
    };

    # Retrieve domain from object template
    m = matches(OBJECT, "([^\\.]+)(\\.(.*))?");
    if ( length(m) >= 4 ) {
        if (is_fqdn(m[3])) {
            return(m[3]);
        } else {
            error(format("domain_from_object: invalid domain name (%s)", m[3]));
        };
    } else {
        error("domain_from_object: can't match domain name from object");
    };
};


########################################################################
#
# @function full_hostname_from_object: returns the object template name.
# Function deprecated now that object template name is the host FQDN.
#
############################################################
function full_hostname_from_object = {
    deprecated(0, 'Function full_hostname_from_object() is deprecated: use OBJECT variable instead');
    return (OBJECT);
};


@documentation{
    desc = Function to deduplicate the content of a list, only the first \
        occurence of each element in the list will be kept in the final \
        list returned to the caller
}
function unique_list = {
    to_dict = dict();
    to_list = list();
    foreach(idx; item; ARGV[0]) {
        itemid = to_string(item);
        if (!exists(to_dict[escape(itemid)])) {
            append(to_list, item);
            to_dict[escape(itemid)] = 1;
        };
    };
    to_list;
};
