declaration template quattor/functions/hardware;


@documentation{
    descr = Returns the hardware tree of the current machine or another machine
    arg = A HW template (string) or a HW configuration (nested dict) to use as a source of hardware configuration (optional)
}
function get_hw_config = {
    if ( ARGC == 0 ) {
        hw_config = value('/hardware');
    } else if ( ARGC == 1 ) {
        if ( is_dict(ARGV[0]) ) {
            hw_config = ARGV[0];
        } else if (is_string(ARGV[0])) {
            hw_config = create(ARGV[0]);
        } else {
            error('Invalid argument type (%s)', to_string(ARGV[0]));
        }
    } else {
        error('%s requires 0 or 1 argument (%s specified)', FUNCTION, ARGC);
    };
    debug('%s: HW config = %s', OBJECT, hw_config);
    hw_config;
};


@documentation{
    descr = Returns the number of cores and the maximum number of hardware threads on the current or another machine as a dict
    arg = A HW template (string) or a HW configuration (nested dict) to use as a source of hardware configuration (optional)
}
function get_num_of_cores_max_threads = {
    if ( ARGC == 1 ) {
        hw_config = get_hw_config(ARGV[0]);
    } else {
        hw_config = get_hw_config();
    };

    if (is_defined(hw_config['cpu']) && (length(hw_config['cpu']) > 0)) {
        result = dict(
            'cores', 0,
            'threads', 0,
        );
        foreach (i; cpu; hw_config['cpu']) {
            if (is_defined(cpu['max_threads'])) {
                result['threads'] = result['threads'] + cpu['max_threads'];
            } else {
                result['threads'] = result['threads'] + 1;
            };
            if (is_defined(cpu['cores'])) {
                result['cores'] = result['cores'] + cpu['cores'];
            } else {
                result['cores'] = result['cores'] + 1;
            };
        };
        debug('%s: num of CPUs=%d, num of cores=%d', OBJECT, length(hw_config['cpu']), cores);
    } else {
        error('Invalid hardware configuration (no CPU defined)');
    };
    result;
};


@documentation{
    descr = Returns the number of cores for the supplied hardware config, or the current machine if no argument is passed.
    arg = A HW template (string) or a HW configuration (nested dict) to use as a source of hardware configuration (optional)
}
function get_num_of_cores = {
    if ( ARGC == 1 ) {
        hw_config = get_hw_config(ARGV[0]);
    } else {
        hw_config = get_hw_config();
    };

    d = get_num_of_cores_max_threads(hw_config);
    d['cores'];
};


@documentation{
    descr = Returns the maximum number of hardware threads for the supplied hardware config, or the current machine if no argument is passed.
    arg = A HW template (string) or a HW configuration (nested dict) to use as a source of hardware configuration (optional)
}
function get_num_of_max_threads = {
    if ( ARGC == 1 ) {
        hw_config = get_hw_config(ARGV[0]);
    } else {
        hw_config = get_hw_config();
    };

    d = get_num_of_cores_max_threads(hw_config);
    d['threads'];
};
