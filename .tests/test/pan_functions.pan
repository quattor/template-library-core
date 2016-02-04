object template pan_functions;

include 'pan/functions';

prefix "/functions/npush";    
"data" = dict("one", 1);
"data" = npush("two", 2, "three", 3);

prefix "/functions/push";    
"data" = list(1, 2);
"data" = push(3, 4);
    
prefix "/functions/pushif";    
variable CONDITION = true;
"data" = list(1);
"data" = push_if(CONDITION, 2, 3);
