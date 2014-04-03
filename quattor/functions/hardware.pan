
declaration template quattor/functions/hardware;


# Returns the number of cores on the current machine or another machine
# specifified as a HW template (string) or a HW configuration (nlist)².
function get_num_of_cores = {
    if ( ARGC == 0 ) {
      hw_config = value('/hardware');
    } else if ( ARGC == 1 ) {
      if ( is_nlist(ARGV[0]) ) {
        hw_config = ARGV[0];
      } else if ( is_string(ARGV[0]) ) {
        hw_config = create(ARGV[0]);
      } else {
        error(format('Invalid argument type (%s)',to_string(ARGV[0])));
      }
    } else {
      error(format('get_num_of_cores requires 0 or 1 argument (%s specified)',ARGC));
    };
    debug(format('%s: HW config = %s',OBJECT,to_string(hw_config)));

    if ( is_defined(hw_config['cpu']) && (length(hw_config['cpu']) > 0) ) {
      cores = 0;
      foreach (i;cpu;hw_config['cpu']) {
        if ( is_defined(cpu['cores']) ) {
          cores = cores + cpu['cores'];
        } else {
          cores = cores + 1;
        };
      };
      debug(format('%s: num of CPUs=%d, num of cores=%d',OBJECT,length(hw_config['cpu']),cores));
    } else {
      error('Invalid hardware configuration (no CPU defined)');
    };

    cores;
};

