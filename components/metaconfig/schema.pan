# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# #
# Author(s): Luis Fernando Muñoz Mejías
#

# #
# metaconfig, 17.2.0-rc1, rc1_1, Mon Feb 27 2017
#

declaration template components/metaconfig/schema;

include 'quattor/types/component';
include 'quattor/functions/validation';

type metaconfig_extension = extensible {};

@documentation{
    Convert value of certain types (e.g. boolean to string yes/no)
    (using the CCM::TextRender element options)
}
type metaconfig_textrender_convert = {
    @{Convert boolean to (lowercase) 'yes' and 'no'.}
    'yesno' ? boolean
    @{Convert boolean to (uppercase) 'YES' and 'NO'.}
    'YESNO' ? boolean
    @{Convert boolean to (lowercase) 'true' and 'false'.}
    'truefalse' ? boolean
    @{Convert boolean to (uppercase) 'TRUE' and 'FALSE'.}
    'TRUEFALSE' ? boolean
    @{Convert string to doublequoted string.}
    'doublequote' ? boolean
    @{Convert string to singlequoted string.}
    'singlequote' ? boolean
    @{Convert list to comma-separated string}
    'joincomma' ? boolean
    @{Convert list to space-separated string}
    'joinspace' ? boolean
} with {
    # Only one boolean conversion can be true
    boolean_conversion = list('yesno', 'YESNO', 'truefalse', 'TRUEFALSE');
    found = false;
    foreach (idx; name; boolean_conversion) {
        if(exists(SELF[name]) && SELF[name]) {
            if(found) {
                error('metaconfig element can only have one boolean conversion enabled, got '+to_string(SELF));
            };
            found = true;
        };
    };

    # Only one string conversion can be true
    string_conversion = list('singlequote', 'doublequote');
    found = false;
    foreach (idx; name; string_conversion) {
        if(exists(SELF[name]) && SELF[name]) {
            if(found) {
                error('metaconfig element can only have one string conversion enabled, got '+to_string(SELF));
            };
            found = true;
        };
    };

    # Only one list conversion can be true
    list_conversion = list('joincomma', 'joinspace');
    found = false;
    foreach (idx; name; list_conversion) {
        if(exists(SELF[name]) && SELF[name]) {
            if(found) {
                error('metaconfig element can only have one list conversion enabled, got '+to_string(SELF));
            };
            found = true;
        };
    };

    true;
};

type caf_service_action = string with match(SELF, '^(restart|reload|stop_sleep_start)$');

type metaconfig_config =  {
    'mode' : long = 0644
    'owner' : string = 'root'
    'group' : string = 'root'
    'daemons' ? caf_service_action{}
    'module' : string
    'backup' ? string
    'preamble' ? string
    'contents' : metaconfig_extension
    'convert' ? metaconfig_textrender_convert
} = dict();

type metaconfig_component = {
    include structure_component
    'services' : metaconfig_config{} with valid_absolute_file_paths(SELF)
};
