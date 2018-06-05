@documentation{
Convenience string types intended for use in building up more complex types.
}
declaration template pan/strings;


@documentation{
A string that must contain at least one character (anything other than an empty string).
}
type string_non_empty = string(1..);


@documentation{
A string that must contain at least one character and may not contain any whitespace.
}
type string_non_whitespace = string_non_empty with !match(SELF, '\s');


@documentation{
A string that must contain at least one character, may contain whitespace, but may not start or end with whitespace.
}
type string_trimmed = string_non_empty with match(SELF, '^\S(.*\S)?$');


@documentation{
A string that must contain at least one character and no uppercase characters
}
type string_lowercase = string_trimmed with ! match(SELF, '[A-Z]');


@documentation{
A string that must contain at least one character and no lowercase characters
}
type string_uppercase = string_trimmed with ! match(SELF, '[a-z]');
