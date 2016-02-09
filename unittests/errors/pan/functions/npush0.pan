object template npush0;

include 'pan/functions';

"/a" = dict('a', true);
@{fail due to duplicate key; error from merge()}
"/a" = npush('a', false);
