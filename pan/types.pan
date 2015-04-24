@contributor{
  name = Marco Emilio Poleggi
  email = Marco.Emilio.Poleggi@cern.ch
}
@contributor{
  name = German Cancio
  email = German.Cancio.Melia@cern.ch
}
@contributor{
  name = Michel Jouvin
  email = jouvin@lal.in2p3.fr
}
@documentation{
Data type and function definitions for the following basic types:
    * asndate
    * isodate
    * hwaddr
    * ip (ipv4 and ipv6)
    * fqdn
    * hostname
    * shorthostname
    * port
    * hostport
    * URI
    * UUID
    * absoluteURI
    * hostURI
    * email
    * network_name
}

declaration template pan/types;


@documentation{
This type implements a date/time format consistent with
ASN.1 typically used by LDAP.  The actual specification is the
"GeneralizedTime" format as specified on page 38 of the X.208
ITU-T recommendation and references within.

Ex: 20040825120123Z
    20040825120123+0100
    20040825120123,5
    20040825120123.5
    20040825120123.5-0123
}
function is_asndate = {
    # Check cardinality and type of argument.
    if (ARGC != 1 || !is_string(ARGV[0]))
        error("usage: is_asndate(string)");

    # Match the datetime pattern, extracting interesting fields.
    result = matches(ARGV[0],
        '^(\d{4})(\d{2})(\d{2})(\d{2})(\d{2})(\d{2})(?:[,\.](\d+))?([Zz]|(?:[-+]\d{2}\d{2}))?$');

    if (length(result) >= 7) {
        # Do further tests on various components of the date.
        # NOTE: the to_long(to_double(x)) construct below is to avoid having
        # the to_long function treat strings with leading zeros as octal
        # numbers.  E.g. to_long("09") will throw an exception because '9' is
        # not a valid octal digit.
        year = to_long(result[1]);
        month = to_long(to_double(result[2]));
        day = to_long(to_double(result[3]));
        hour = to_long(to_double(result[4]));
        minute = to_long(to_double(result[5]));
        second = to_long(to_double(result[6]));

        frac = 0;
        if (length(result) > 7) {
            frac = to_long(to_double(result[7]));
        };

        zone = '+0000';
        if (length(result) > 8) {
            zone = result[8];
        };

        # Check the range of months.
        if (month < 1 || month > 12) {
            error("is_asndate: invalid month");
            return(false);
        };

        # Check the range of days.
        if (day < 1 || day > 31) {
            error("is_asndate: invalid day");
            return(false);
        };

        # Be more specific on the days in each month.
        if (month == 4 || month == 6 || month == 9 || month == 11) {
            if (day > 30) {
                error("is_asndate: invalid day");
            };
        };

        # February is always a bother.  Too lazy to check that the leap
        # years have been specified correctly.
        if (month == 2 && day > 29) {
            error("is_asndate: invalid day");
        };

        # Check the time.
        if (hour > 23) {
            error("is_asndate: invalid hour");
            return(false);
        };
        if (minute > 59) {
            error("is_asndate: invalid minute");
            return(false);
        };

        # Allow for leap seconds here (since it is easy).
        if (second > 60) {
            error("is_asndate: invalid minute");
            return(false);
        };

        # Check the time zone format.
        if (zone != "Z" && zone != "z") {
            tz = matches(zone, '^[-+](\d{2})(\d{2})$');

            hoffset = to_long(to_double(tz[1]));
            moffset = to_long(to_double(tz[2]));

            if (hoffset >= 12) {
                error("is_asndate: invalid hour offset in time zone");
                return(false);
            };
            if (moffset > 59) {
                error("is_asndate: invalid minute offset in time zone");
                return(false);
            };
        };

    } else {
        error("is_asndate: invalid format for time");
        return(false);
    };

    # If it gets to this point, then the date must be OK.
    return(true);
};


type type_asndate = string with {
    is_asndate(SELF);
};


@documentation{
This type implements a date/time format consistent with
the W3C use of the datetime format.  See the document:

http://www.w3.org/TR/NOTE-datetime

This is a subset of the ISO8601 specification.  This type allows
a short form with just a complete date or a full date/time.  For
the time (if given) only the fractions of a second field is
optional.

Comparison function not yet implemented.

Ex: 2004-08-25
    2004-08-25T12:32:00.01+05:00
    2004-08-25T12:32:00Z
}
function is_isodate = {
    # Check cardinality and type of argument.
    if (ARGC != 1 || !is_string(ARGV[0]))
        error("usage: is_isodate(string)");

    # Match the datetime pattern, extracting interesting fields.
    result = matches(ARGV[0],
        '^([1-9]\d{3})-(\d{2})-(\d{2})(?:[Tt](\d{2}):(\d{2}):(\d{2}(?:\.\d{2})?)([Zz]|(?:[-+]\d{2}:\d{2})))?$');

    # Allow either just the complete date, or date with complete time.
    if (length(result) == 8 || length(result) == 4) {
        # Do further tests on various components of the date.
        # NOTE: the to_long(to_double(x)) construct below is to avoid having
        # the to_long function treat strings with leading zeros as octal
        # numbers.  E.g. to_long("09") will throw an exception because '9' is
        # not a valid octal digit.
        year = to_long(result[1]);
        month = to_long(to_double(result[2]));
        day = to_long(to_double(result[3]));

        # Check the range of months.
        if (month < 1 || month > 12) {
            debug("is_isodate: invalid month");
            return(false);
        };

        # Check the range of days.
        if (day < 1 || day > 31) {
            debug("is_isodate: invalid day");
            return(false);
        };

        # Long form is used, check the time as well.
        if (length(result) == 8) {
            hour = to_long(to_double(result[4]));
            minute = to_long(to_double(result[5]));
            second = to_double(result[6]);
            zone = result[7];

            # Be more specific on the days in each month.
            if (month == 4 || month == 6 || month == 9 || month == 11) {
                if (day > 30) {
                    debug("is_isodate: invalid day");
                };
            };

            # February is always a bother.  Too lazy to check that the leap
            # years have been specified correctly.
            if (month == 2 && day > 29) {
                debug("is_isodate: invalid day");
            };

            # Check the time.
            if (hour > 23) {
                debug("is_isodate: invalid hour");
                return(false);
            };
            if (minute > 59) {
                debug("is_isodate: invalid minute");
                return(false);
            };

            # Allow for leap seconds here (since it is easy).
            if (second > 60) {
                debug("is_isodate: invalid minute");
                return(false);
            };

            # Check the time zone format.
            if (zone != "Z" && zone != "z") {

                tz = matches(zone, '^[-+](\d{2}):(\d{2})$');

                hoffset = to_long(tz[1]);
                moffset = to_long(tz[2]);

                if (hoffset >= 12) {
                    debug("is_isodate: invalid hour offset in time zone");
                    return(false);
                };
                if (moffset > 59) {
                    debug("is_isodate: invalid minute offset in time zone");
                    return(false);
                };
            };
        };

    } else {
        return(false);
    };

    # If it gets to this point, then the date must be OK.
    return(true);
};


type type_isodate = string with {
    is_isodate(SELF);
};


@documentation{
The hardware address is a series of six bytes encoded as hex values
and separated with a colon or a hyphen.  Within a value you must
use a consistent separator.

Ex.: 00:D0:59:33:F6:30
    00-D0-59-33-F6-30

Both upper and lower-case hex digits are accepted.
}
function is_hwaddr = {
    # Check cardinality and type of argument.
    if (ARGC != 1 || !is_string(ARGV[0]))
        error("usage: is_hwaddr(string)");

    return(match(ARGV[0],
        '^[\dA-Fa-f]{2}([:-])[\dA-Fa-f]{2}(\1[\dA-Fa-f]{2}){4}$'));
};


type type_hwaddr = string with {
    is_hwaddr(SELF);
};


@documentation{
Function to validate an IPv4 address in dotted-decimal notation.
}
function is_ipv4 = {
    # Check cardinality and type of argument.
    if (ARGC != 1 || !is_string(ARGV[0]))
        error("usage: is_ipv4(string)");

    ip = ARGV[0];
    result = matches(ip,'^(\d+)\.(\d+)\.(\d+)\.(\d+)$');
    if(length(result) != 5) {
        debug("is_ipv4: invalid IPv4 address: " + ip);
        return(false);
    };

    # Check that all of the individual elements of the address can
    # be represented by one byte (i.e. range 0-255).  Note that the
    # pattern won't allow negative values.
    i = 1;
    while(i <= 4) {
        digit = to_long(result[i]);
        if (digit > 255) {
            debug("is_ipv4: invalid IPv4 address: " + ip);
            return(false)
        };
        i = i + 1;
    };

    # OK, if it passes all of the checks.
    return(true);
};


type type_ipv4 = string with {
    is_ipv4(SELF);
};


@documentation{
Function to validate an IPv6 address.

Check that this is a valid full or shortened IPv6 address.
}
function is_ipv6 = {
    # Check cardinality and type of argument.
    if (ARGC != 1 || !is_string(ARGV[0]))
        error("usage: is_ipv6(string)");

    ip = ARGV[0];
    return(is_ipv6_full(ip) || is_ipv6_short(ip));
};


@documentation{
Check that argument is a valid full IPv6 address.  This is
eight, 16-bit numbers represented in hexadecimal notation and
separated by colons.  Leading zeros of each field can be
suppressed.
}
function is_ipv6_full = {
    # Check cardinality and type of argument.
    if (ARGC != 1 || !is_string(ARGV[0]))
        error("usage: is_ipv6_full(string)");

    # No need to check values of individual fields because pattern
    # excludes all illegal values.
    ip = ARGV[0];
    return(match(ip,'^[\dA-Fa-f]{1,4}(:[\dA-Fa-f]{1,4}){7}$'));
};


@documentation{
Check that argument is a valid short IPv6 address.  The shortened
form of the IPv6 address allows a single instance of a double
colon (::) to replace any number of contiguous zero fields.
}
function is_ipv6_short = {
    # Check cardinality and type of argument.
    if (ARGC != 1 || !is_string(ARGV[0]))
        error("usage: is_ipv6_short(string)");

    # Match the various allowed patterns containing one occurance of
    # a double colon.
    ip = ARGV[0];

    # Addresses which begin or end with a double-colon (are these
    # really legal?).
    if (match(ip,'^:(:[\dA-Fa-f]{1,4}){1,7}$') ||
        match(ip,'^([\dA-Fa-f]{1,4}:){1,7}:$')) {
        return(true);
    };

    # Must have double-colon in the middle, if not it doesn't match.
    # The second expression essentially counts the total number of
    # fields and ensures that it doesn't exceed 7 (at least one must
    # be omitted because of the double-colon).
    if (match(ip,'^([\dA-Fa-f]{1,4}:)+(:[\dA-Fa-f]{1,4})+$') &&
        match(ip,'^([\dA-Fa-f]{1,4}:{1,2}){1,6}[\dA-Fa-f]{1,4}$')) {
        return(true);
    };

    # If we've made it this far, then the value is bad.
    return(false);
};


type type_ipv6 = string with {
    is_ipv6(SELF);
};


@documentation{
Checks that the given address is a valid IPv4 or IPv6 address.
}
function is_ip = {
    ip = ARGV[0];
    if(is_ipv4(ip) || is_ipv6(ip)) return(true);
    debug("Invalid IP address: " + ip);
    return(false);
};


type type_ip = string with {
    is_ip(SELF);
};


@documentation{
Function to validate a fully-qualified domain name.  Each part
of the domain name is separated by a period.  The individual parts
must begin with a letter or digit, end with a letter or digit, 
and may contain letters, digits, or hyphens in the middle.

The relevant RFC's for host name syntax are 952, 1053, and 1123
(section 2.1).
}
function is_fqdn = {
    # Check cardinality and type of argument.
    if (ARGC != 1 || !is_string(ARGV[0]))
        error("usage: is_fqdn(string)");

    return(match(ARGV[0],'^([a-zA-Z\d]([a-zA-Z\d-]{0,253}[a-zA-Z\d])?(\.|$))+$'));
};


type type_fqdn = string with {
    is_fqdn(SELF);
};


@documentation{
Validates a hostname to be either ip or fqdn.
}
function is_hostname = {
    # Check cardinality and type of argument.
    if (ARGC != 1 || !is_string(ARGV[0]))
        error("usage: is_hostname(string)");

    return (is_ip(ARGV[0]) || is_fqdn(ARGV[0]));
};


type type_hostname = string with {
    is_hostname(SELF);
};


@documentation{
Verifies that the argument is a valid short hostname.
}
function is_shorthostname = {
    hostname = ARGV[0];
    if(match(hostname,'^[a-zA-Z\d]([0-9A-Za-z-]{0,253}[a-zA-Z\d])?$')) return(true);
    error("Bad host name: " + hostname);
    return(false);
};


type type_shorthostname = string with {
    (is_shorthostname(SELF));
};


@documentation{
Defines a valid port number.
}
function is_port = {
    # Check cardinality and type of argument.
    if (ARGC != 1 || !is_long(ARGV[0])) {
        error("usage: is_port(long)");
    };

    # Ensure that the range is OK.
    port = ARGV[0];
    if (port<0 || port>65535) {
        error("is_port: port out of range (0..65535) " + port);
        return(false);
    };

    # All OK.
    return(true);
};


type type_port = long with {
    is_port(SELF);
};


@documentation{
Defines a host and port of the form hostname:port.
}
function is_hostport = {
    # Check cardinality and type of argument.
    if (ARGC != 1 || !is_string(ARGV[0]))
        error("usage: is_hostport(string)");

    # Split string into host and port fields.
    result = matches(ARGV[0], '^([^:]+)(?::(\d+))?$');
    nmatch = length(result);

    # Must match at least one field.  Unmatched terminal fields will
    # not be defined; be careful with array bounds below.
    if (nmatch<2 || nmatch>3) {
        error("is_hostport: global pattern match for hostport failed");
        return(false);
    };

    # Check that the host part is OK.
    host = result[1];
    if (!is_hostname(host)) {
        error("is_hostport: invalid host " + host);
        return(false);
    };

    # Check range of the port.
    if (nmatch == 3) {

        port = to_long(result[2]);

        # Ensure that the range is OK.
        if (!is_port(port)) {
            error("is_hostport: port out of range " + port);
            return(false);
        };
    };

    # All OK.
    return(true);
};


type type_hostport = string with {
    is_hostport(SELF);
};


@documentation{
This defines an URI according to RFC2396.  Note that this is
the most general URI which allows opaque URIs, hostbased URIs,
and relative URIs.  You may want a more specific-type for a
particular value.
}
function is_URI = {
    # Check cardinality and type of argument.
    if (ARGC != 1 || !is_string(ARGV[0]))
        error("usage: is_URI(string)");

    uri = ARGV[0];

    # The regular expression comes from RFC2396 Appendix B.  This isn't
    # sufficient to check that all of the individual fields are OK.
    # Split out the fields which are necessary for full validation.
    result = matches(uri,
        '^(([^:/?#]+):)?(//([^/?#]*))?([^?#]*)(\?([^#]*))?(#(.*))?');
    nmatch = length(result);

    # Must match at least one field.  Unmatched terminal fields will
    # not be defined; be careful with array bounds below.
    if (nmatch < 1) {
        error("is_URI: global pattern match for URI failed");
        return(false);
    };

    # Define the various fields to empty strings.
    scheme = '';
    authority = '';
    path = '';
    query = '';
    fragment = '';

    # Assign matched value to each variable. Each field has separator stripped.
    # E.g. fragment will NOT have a hash at the beginning.
    if (nmatch >= 2) scheme = result[2];
    if (nmatch >=4) authority = result[4];
    if (nmatch >= 5) path = result[5];
    if (nmatch >= 7) query = result[7];
    if (nmatch >= 9) fragment = result[9];

    # Validate the scheme.  An empty scheme is allowed for relative URIs.
    if (!match(scheme,'^([a-zA-Z][a-zA-Z\d\.+-]*)?$')) {
        error("is_URI: illegal scheme in URI");
        return(false);
    };

    # Validate the query. Expression is the same for query and fragment.
    # An empty string is valid.
    if(!match(fragment,"^([\\w\\d;/\\?:@&=+$,\\.!~\\*\\(\\)'-]|(%[\\da-fA-F]{2}))*")) {
        error("is_URI: illegal character in query");
        return(false);
    };

    # Validate the fragment.
    if (!match(fragment,"^([\\w\\d;/\\?:@&=+$,\\.!~\\*\\(\\)'-]|(%[\\da-fA-F]{2}))*")) {
        error("is_URI: illegal character in fragment");
        return(false);
    };

    # Validate the authority field.  Check the easier pattern which has
    # no substructure.
    if(match(authority,"([\\w\\d\\.!~\\*\\(\\);:@&=+\\$,'-]|(%[\\da-fA-F]{2}))+")) {
        return(true);
    };

    # If we've gotten to here, then we need to split out the authority
    # subfields and verify each of them.  The user info and port parts need
    # no further validation.  An empty string is valid, so the regular
    # expression must include this.
    result =
        matches(authority,"^(?:([\\w\\d\\.!~\\*\\(\\);:&=+\\$,'-]|(?:%[\\da-fA-F]{2}))+@)?([a-zA-Z\\d\\.-]*)(:\\d+)?$");

    # Must match at least one field.  Unmatched terminal fields will not
    # be defined.
    if (length(result) < 1) {
        error("is_URI: pattern match on authority field failed");
        return(false);
    };

    # Name fields.  IPv6 addresses are not in the applicable RFC; has this
    # been extended to include them?  They are not permitted below.
    host = result[2];
    if (host != '' && !is_ipv4(host) && !is_fqdn(host)) {
        error("is_URI: invalid host");
        return(false);
    };

    # All OK.
    return(true);
};


type type_URI = string with {
    is_URI(SELF);
};


@documentation{
This defines an absolute URI according to RFC2396.  This is
just a valid URI with the scheme explicitly included.
}
function is_absoluteURI = {
    # Check cardinality and type of argument.
    if (ARGC != 1 || !is_string(ARGV[0]))
        error("usage: is_absoluteURI(string)");

    uri = ARGV[0];

    # Check first that this is a valid URI.
    if (!is_URI(uri)) {
        error("is_absoluteURI: value is not a valid URI");
        return(false);
    };

    # The regular expression comes from RFC2396 Appendix B.  This isn't
    # sufficient to check that all of the individual fields are OK.
    result = matches(uri,
        '^(([^:/?#]+):)?(//([^/?#]*))?([^?#]*)(\?([^#]*))?(#(.*))?');
    nmatch = length(result);

    # Must match at least one field.  Unmatched terminal fields will
    # not be defined; be careful with array bounds below.
    if (nmatch < 1) {
        error("is_absoluteURI: pattern match for absolute URI failed");
        return(false);
    };

    # Validate the scheme.  Absolute URIs may NOT have an empty scheme.
    # Syntax checking will have been done with the is_URL function.
    if (result[2] == '') {
        error("is_absoluteURI: empty scheme is not valid for absolute URI");
        return(false);
    };

    # All OK.
    return(true);
};


type type_absoluteURI = string with {
    is_absoluteURI(SELF);
};


@documentation{
This defines an URI according to RFC2396.  A host-based URI is
an absolute URI with a non-empty host field.
}
function is_hostURI = {
    # Check cardinality and type of argument.
    if (ARGC != 1 || !is_string(ARGV[0]))
        error("usage: is_hostURI(string)");

    uri = ARGV[0];

    # Check first that this is a valid absoluteURI.
    if (!is_absoluteURI(uri)) {
        debug("is_hostURI: value is not a valid absolute URI");
        return(false);
    };

    # The regular expression comes from RFC2396 Appendix B.  This isn't
    # sufficient to check that all of the individual fields are OK.
    # Split out the fields which are necessary for full validation.
    result = matches(uri,
        '^(([^:/?#]+):)?(//([^/?#]*))?([^?#]*)(\?([^#]*))?(#(.*))?');
    nmatch = length(result);

    # Must match at least one field.  Unmatched terminal fields will
    # not be defined; be careful with array bounds below.
    if (nmatch < 1) {
        debug("is_hostURI: global pattern match for hostURI failed");
        return(false);
    };

    # Assign matched value to each variable. Each field has separator stripped.
    # E.g. fragment will NOT have a hash at the beginning.
    authority = '';
    if (nmatch >=4) authority = result[4];

    # Split out the authority subfields and verify each of them.  The user
    # info and port parts need no further validation.
    result = matches(authority,
            "^(?:([\\w\\d\\.!~\\*\\(\\);:&=+\\$,'-]|(?:%[\\da-fA-F]{2}))+@)?([a-zA-Z\\d\\.-]*)(:\\d+)?$");

    # Must match at least one field.  Unmatched terminal fields will not
    # be defined.
    if (length(result) < 1) {
        debug("is_hostURI: pattern match on authority field failed");
        return(false);
    };

    # Name fields.  IPv6 addresses are not in the applicable RFC; has this
    # been extended to include them?  They are not permitted below.
    host = result[2];
    if (!is_ipv4(host) && !is_fqdn(host)) {
        debug("is_hostURI: invalid host " + authority + "::" + host);
        return(false);
    };

    # All OK.
    return(true);
};


type type_hostURI = string with {
      is_hostURI(SELF);
};


function is_email = {
    # Check cardinality and type of argument.
    if (ARGC != 1 || !is_string(ARGV[0]))
        error("usage: is_email(string)");

    # Pull out the components of the address.
    results = matches(ARGV[0],'^([\w\.-]+)@([\w\.-]+)$');

    # Check that the length is OK.
    if (length(results) != 3) {
        debug('is_email: email address is invalid');
        return(false);
    };

    # Check the domain more carefully.
    if (!is_fqdn(results[2])) {
        debug('is_email: invalid domain in email address');
        return(false);
    };

    # Check the name itself. (Are there really any limitations on
    # this?)
    if (!match(results[1], '^[a-zA-Z]+([\w\.-]*[a-zA-Z\d])*$')) {
        debug('is_email: invalid name in email address');
        return(false);
    };

    # All OK.
    return(true);
};


type type_email = string with {
    is_email(SELF);
};


@documentation{
If the string contains any upper case characters, return false
}
function is_lowercase = {
    if (ARGC != 1 || !is_string(ARGV[0]))
        error("usage: is_lower(string)");
    return(!match (ARGV[0], '[A-Z]'));
};


type type_lowercase = string with {
    is_lowercase(SELF);
};


@documentation{
If the string contains any lower case characters, return false
}
function is_uppercase = {
    if (ARGC != 1 || !is_string(ARGV[0]))
        error("usage: is_upper(string)");
    return(!match (ARGV[0], '[a-z]'));
};


type type_uppercase = string with {
    is_uppercase(SELF);
};


@documentation{
Checks if the argument is in the form host.name.domain or IP,
or .domain or IP/mask.
}
function is_network_name = {
    if (ARGC != 1 || !is_string (ARGV[0])) {
        error ("usage: is_network_name (string)");
    };

    if (is_hostname (ARGV[0])) {
        return (true);
    };

    # Not a hostname. Is it a IP/mask?
    hst = ARGV[0];
    pos = index ("/", hst);
    ip = substr (hst, 0, pos);
    mask = substr (hst, pos+1);
    if (is_ip (ip) && (is_ip (mask) || match (mask, '^(\d+)$'))) {
        return (true);
    };
    # Not IP/mask: is it .domain?
    if (index ('.', hst) == 0) {
        return (is_hostname (substr (hst, 1)));
    };
    # Everything failed!
    return (false);
};


type type_network_name = string with {
    is_network_name (SELF);
};


@documentation{
Defines a valid UUID according to RFC4122.
}
function is_uuid = {
    uuid = ARGV[0];
    if(match(uuid,'^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$')) return(true);
    error("Bad uuid: " + uuid);
    return(false);
};


type type_uuid = string with {
    (is_uuid(SELF));
};
