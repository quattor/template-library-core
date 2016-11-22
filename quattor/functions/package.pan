declaration template quattor/functions/package;

# The value for the constants are historical and a bit misleading. Be sure to use the constant names
# rather than the valueis.
@{
desc = value returned by pkg_compare_version() when the version in the first arugment is greater \
 than the second.
}
final variable PKG_VERSION_GREATER = -1;
@{
desc = value returned by pkg_compare_version() when the version in the two version arguments are equal
}
final variable PKG_VERSION_EQUAL = 0;
@{
desc = value returned by pkg_compare_version() when the version in the first arugment is lower \
 than the second.
}
final variable PKG_VERSION_LESS = 1;


@{
desc = function to compare 2 package versions in the form x.y.z-r. It properly handles \
 number comparison of each element (10 is considered greater than 2) and it also accepts \
 letters in one of the element (an alphanumeric value is considered less than a number).
args = the two version strings to compare.
return_value = -1 if the first argument is greater than the first one, 0 if they are equal \
 and 1 if the second argument is greated than the first.
}
function pkg_compare_version = {
    if (ARGC > 1) {
        v1p = ARGV[0];
        v2p = ARGV[1];
    } else {
        error('need two arguments');
    };
    ans = PKG_VERSION_EQUAL;
    release = false;
    # split alphanumeric sections into alphabetic and numeric sections
    tmps = replace('([A-Za-z])([0-9])', '$1.$2', v1p);
    v1c = replace('([0-9])([A-Za-z])', '$1.$2', tmps);
    tmps = replace('([A-Za-z])([0-9])', '$1.$2', v2p);
    v2c = replace('([0-9])([A-Za-z])', '$1.$2', tmps);
    # split version-release
    v1l = split('-', 2, v1c);
    v1 = v1l[0];
    if (match(v1c, '-')) {
        release = true;
        r1 = v1l[1];
    } else {
        r1 = '';
    };
    v2l = split('-', 2, v2c);
    v2 = v2l[0];
    if (match(v2c, '-')) {
        release = true;
        r2 = v2l[1];
    } else {
        r2 = '';
    };
    # convert to list, splitting on non alphanumeric characters
    v1l = split('[^A-Za-z0-9]', v1);
    v2l = split('[^A-Za-z0-9]', v2);
    # iterate over sections
    for (i = 0; ans == PKG_VERSION_EQUAL && i < length(v2l); i = i + 1) {
        # convert to long if possible
        if (match(v2l[i], '^[0-9]+$')) {
            v2l[i] = replace('^0+(.+)$', '$1', v2l[i]);
            tmpl = to_long(v2l[i]);
            v2l[i] = undef;
            v2l[i] = tmpl;
        };
        if (i < length(v1l)) {
            # convert to long if possible
            if (match(v1l[i], '^[0-9]+$')) {
                v1l[i] = replace('^0+(.+)$', '$1', v1l[i]);
                tmpl = to_long(v1l[i]);
                v1l[i] = undef;
                v1l[i] = tmpl;
            };
            # longs are greater than strings
            if (ans == PKG_VERSION_EQUAL && is_string(v1l[i]) && is_long(v2l[i])) {
                ans = PKG_VERSION_LESS;
            };
            if (ans == PKG_VERSION_EQUAL && is_long(v1l[i]) && is_string(v2l[i])) {
                ans = PKG_VERSION_GREATER;
            };
            if (ans == PKG_VERSION_EQUAL && v1l[i] < v2l[i]) {
                ans = PKG_VERSION_LESS;
            };
            if (ans == PKG_VERSION_EQUAL && v1l[i] > v2l[i]) {
                ans = PKG_VERSION_GREATER;
            };
        } else {
            # v2 has more elements, all previous sections are equal
            ans = PKG_VERSION_LESS;
        };
    };
    debug('pkg_compare_version: ' + to_string(v1l) + ' , ' + to_string(v2l) + ' = ' + to_string(ans));
    # Do another recursion with releases if all previous sections are equal
    if (ans == PKG_VERSION_EQUAL && release) {
        ans = pkg_compare_version(r1, r2);
    };
    ans;
};

# Update a package
function pkg_update = {
    if (ARGC > 0) {
        name = ARGV[0];
    } else {
        error('package name must be provided');
    };
    debug('Updating package ' + name);
    if (ARGC > 1) {
        name = ARGV[0];
        new_version = ARGV[1];
    } else {
        error('version missing for package ' + name);
    };
    if (ARGC > 2) {
        arch = ARGV[2];
    } else {
        arch = '';
    };
    action = 'none';
    e_name = escape(name);
    e_new_version = escape(new_version);
    if (is_defined(SELF[e_name])) {
        if (length(SELF[e_name]) > 1) {
            error("pkg_update can't be used with 'multi'");
        };
        e_cur_version = key(SELF[e_name], 0);
        cur_version = unescape(e_cur_version);
        if (arch != '' && ! is_defined(SELF[e_name][e_cur_version]['arch'][arch])) {
            action = 'add';
        } else {
            debug('pkg_update:' + name + ', ' + cur_version + ' -> ' + new_version);
            if (pkg_compare_version(cur_version, new_version) > 0) {
                action = 'replace';
            };
        };
    };
    if ( action == 'add') {
        pkg_repl(name, new_version, arch);
    } else if ( action == 'replace') {
        pkg_ronly(name, new_version, arch);
    } else {
        SELF;
    };
};
