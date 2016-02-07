object template host_domain_from_object1;

include 'pan/functions';

@{fails with argument required}
"/a" = host_domain_from_object();
