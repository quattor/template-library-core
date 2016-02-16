object template pan_functions;

include 'pan/functions';

prefix "/functions/npush";
"data" = dict("one", 1);
"data" = npush("two", 2, "three", 3);

prefix "/functions/push";
"data" = list(1, 2);
"data" = push(3, 4);

"/functions/push_dml_empty/data" = {
    foreach(idx;id;list(1,2,3)) {
        push(id);
    };
    SELF;
};

"/functions/push_dml_nonempty/data/0" = 0;
"/functions/push_dml_nonempty/data" = {
    foreach(idx;id;list(1,2,3)) {
        push(id);
    };
    SELF;
};

prefix "/functions/pushif";
variable CONDITION = true;
"data" = list(1);
"data" = push_if(CONDITION, 2, 3);
