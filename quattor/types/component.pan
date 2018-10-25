declaration template quattor/types/component;

include 'quattor/functions/validation';

type caf_service_actions = string with choice(
    'restart',
    'reload',
    'stop_sleep_start',
);

type structure_component_dependency = {
    "pre"       ? string[] with is_component_list(SELF)
    "post"      ? string[] with is_component_list(SELF)
};

type structure_component = extensible {
    "active"            : boolean = true # "component active?"
    "dispatch"          : boolean = true # "run with cdispd?"
    "version"           ? string with match(SELF, '^\d+\.\d+\.\d+$')
    "register_change"   ? element*[]
    "dependencies"      ? structure_component_dependency
    "ncm-module"        ? string with match(SELF, '^([a-zA-Z_]\w*(?:::[a-zA-Z_]\w*)*)$')
};
