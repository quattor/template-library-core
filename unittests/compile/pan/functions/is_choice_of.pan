object template is_choice_of;

include 'pan/functions';

"/a" = is_choice_of(1, 2 ,3);
"/b" = is_choice_of(1, 2 ,3, 1);
"/c" = is_choice_of(1.0, 2 ,3, 1);

"/la" = is_choice_of(list(1), 2 ,3);
"/lb" = is_choice_of(list(1), 2 ,3, 1);
"/lc" = is_choice_of(list(1.0), 2 ,3, 1);

"/ld" = is_choice_of(list(2, 1), 2 ,3, 1);
"/le" = is_choice_of(list(1, 3, 2), 2 ,3, 1);

# list examples
"/lf" = is_choice_of(list("b", "c"), "a", "b", "c");
"/lg" = is_choice_of(list("a", "d"), "a", "b", "c");
