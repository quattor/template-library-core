@documentation{
Legacy and transitional type definitions

Should not be used for any new components, they are collected here to aid transition to newer types.
}
declaration template pan/legacy;

@documentation{
Common type to replace all variants of yes/no pseudo boolean strings throughout components
}
type legacy_binary_affirmation_string = string with match(SELF, "^(yes|no)$");

@documentation{
Validate a property to either be a boolean or a yes/no string

Used to implement transitional_yes_no_true_false
}
function is_yes_no_true_false = {
    v = ARGV[0];
    if (is_boolean(v)) return(true);
    if (is_string(v) && match(v, "^(yes|no)$")) {
        deprecated(0, 'Legacy yes/no value in use, please migrate to true/false.');
        return(true);
    };
    false;
};

@documentation{
Transitional type to allow components to cleanly migrate properties from yes/no strings to booleans

No components shall use this type until it has been made compatible with real booleans
No component shall use this type for more than a single release
}
type transitional_yes_no_true_false = property with is_yes_no_true_false(SELF);

@documentation{
    Validate that a property is either a string, or a list of strings

    An empty string or list is permitted
    Used to implement transitional_string_or_list_of_strings
}
function is_string_or_list_of_strings = {
    l = ARGV[0];
    if (is_string(l)) {
        deprecated(0, format('"%s" is currently a string, please change it to a list of strings', l));
        return(true);
    };
    if (!is_list(l)) {
        error('"%s" must either be a string or list of strings', l);
        return(false);
    };
    e = 0;
    foreach (i; v; l) {
        if (!is_string(v)) e = e + 1;
    };
    if (e > 0) {
        p = 'are';
        if (e == 1) p = 'is';
        error('All elements in list "%s" must be strings, %d of them %s not', l, e, p);
        return(false);
    };
    true;
};

@documentation{
Transitional type to allow components to cleanly migrate properties from a string to a list of strings

No components shall use this type until they have been made compatible with list of strings
}
type transitional_string_or_list_of_strings = element with is_string_or_list_of_strings(SELF);
