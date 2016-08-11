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
