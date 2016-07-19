declaration template pan/legacy;

type legacy_binary_affirmation_string = string with match(SELF, "^(yes|no)$");

function is_yes_no_true_false = {
    v = ARGV[0];
    if (is_boolean(v)) return(true);
    if (is_string(v) && match(v, "^(yes|no)$")) {
        deprecated(0, 'Legacy yes/no value in use, please migrate to true/false.');
        return(true);
    };
    false;
};

type transitional_yes_no_true_false = property with is_yes_no_true_false(SELF);
