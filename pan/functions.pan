################################################################################
# This is 'namespaces/standard/pan/functions.tpl', a pan-templates's file
################################################################################
#
# VERSION:    3.2.7, 21/08/09 22:22
# AUTHOR:     Martin Bock
# MAINTAINER: Marco Emilio Poleggi <Marco.Emilio.Poleggi@cern.ch>, German Cancio <German.Cancio.Melia@cern.ch>, Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
#
# Function definitions
#
################################################################################

declaration template pan/functions;

include { 'pan/types' };

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
    while (i<ARGC) {
        v[length(v)] = ARGV[i];
        i = i + 1;
    };
    return(v);
};


############################################################
##=
## @function npush
## @# pushes zero of more pairs (key, value) into a
##+nlist.  If the list does not exist or is not defined
##+a new nlist is created.  If the key already exists with
##+a different value an error is raised.
## @syntax key:string value:element
## @param:key key for the entry
## @param:value value for the entry
## @example
##+# "/data" will contain nlist("one",1,"two",2,"three",3)
##+"/data" = nlist("one",1);
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
    if (exists(SELF) && is_nlist(SELF)) {
        v = SELF;
    } else if (!exists(SELF) || !is_defined(SELF)) {
        v = nlist();
    } else {
        error("npush can only be applied to a nlist");
    };

    # Create a new nlist from the given values.
    n = nlist();
    index = 0;
    while (index < ARGC) {
        if (!is_string(ARGV[index]))
        error("key is not a string: "+to_string(ARGV[index]));
        n[ARGV[index]] = ARGV[index+1];
        index = index + 2;
    };

    # Returned the merged values.
    return(merge(v,n));
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

    return(v);
};


########################################################################
##=
## @function hostname_from_object
## @# extracts the machine hostname from the object
##+template name.  This assumes that your machine profile has
##+the form profile_*.  If it does not, an error is thrown.
## @syntax void
## @example
##+# "/data" will contain "myhost"
##+object template profile_myhost.example.org;
##+"/data" = hostname_from_object();
##=
############################################################
function hostname_from_object = {
    # Check cardinality.
    if (ARGC != 0) error("usage: hostname_from_object()");

    # Check first for the old style profile names.
    m = matches(OBJECT,"profile_([^\\.]+)(\\.(.*))?");
    if (length(m) >= 2) {
        if (is_shorthostname(m[1])) {
            return(m[1]);
        } else {
            error("hostname_from_object: invalid hostname ("+m[1]+")");
        };
    };

    # Check without the profile prefix.
    m = matches(OBJECT,"([^\\.]+)(\\.(.*))?");
    if (length(m) >= 2) {
        if (is_shorthostname(m[1])) {
            return(m[1]);
        } else {
            error("hostname_from_object: invalid hostname ("+m[1]+")");
        };
    };

    # Invalid syntax for object profile.
    error("hostname_from_object: invalid object profile syntax");
};


########################################################################
##=
## @function domain_from_object
## @# extracts the domain from the object template name.
##+If the information is not in the name, the default is used.
##+This assumes that your machine profile has the form
##+profile_*.  If it does not, an error is thrown.
## @syntax domain:string
## @param:domain default domain name
## @example
##+# "/data" will contain "example.org"
##+object template profile_myhost.example.org;
##+"/data" = hostname_from_object("example.net");
##=
############################################################
function domain_from_object = {
    # Check cardinality.
    if (ARGC != 1) error("usage: domain_from_object(default_domain)");

    # Check the argument to ensure it is a valid domain name.
    if (!is_fqdn(ARGV[0])) {
        error("domain_from_object: invalid default domain ("+ARGV[0]+")");
    };

    # Check if the name matches.  We can include the 'profile_' in
    # the host part if it exists.  We only need the domain here.
    m = matches(OBJECT,"([^\\.]+)(\\.(.*))?");
    size = length(m);
    if (size >= 2) {
        if (size >= 4) {
            if (is_fqdn(m[3])) {
                return(m[3]);
            } else {
                error("domain_from_object: invalid domain name ("+m[3]+")");
            };
        } else {
            return(ARGV[0]);
        };
    } else {
        error("domain_from_object: can't match domain name from object");
        };
};


########################################################################
##=
## @function full_hostname_from_object
## @# extracts the full hostname from the object template name.
##+If the domain information is not in the name, the default is used.
##+This assumes that your machine profile has the form
##+profile_*.  If it does not, an error is thrown.
## @syntax domain:string
## @param:domain default domain name
## @example
##+# "/data" will contain "myhost.example.net"
##+object template profile_myhost;
##+"/data" = hostname_from_object("example.net");
##=
############################################################
function full_hostname_from_object = {
    # Check cardinality; leave detailed error checking to called functions.
    if (ARGC != 1) error("usage: full_hostname_from_object(default_domain)");

    return(hostname_from_object()+"."+domain_from_object(ARGV[0]));
};

