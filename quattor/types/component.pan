declaration template quattor/types/component;

include 'quattor/functions/validation';

type structure_component_dependency = {
    "pre"       ? string[] with is_component_list(SELF)
    "post"      ? string[] with is_component_list(SELF)
};

type structure_component_code = {
    "script"    : string
    "data"      ? string{}
};

type structure_component = extensible {
    "active"            : boolean = true # "component active?"
    "dispatch"          : boolean = true # "run with cdispd?"
    "version"           ? string with match(SELF, '^\d+\.\d+\.\d+$')
    "register_change"   ? element*[]
    "dependencies"      ? structure_component_dependency
    "code"              ? structure_component_code
    "ncm-module"        ? string with match(SELF, '^([a-zA-Z_]\w*(?:::[a-zA-Z_]\w*)*)$')
};
