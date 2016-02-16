object template host_domain_from_object3;

include 'pan/functions';

@{fails with invalid shorthostname due to _ in name}
"/a" = host_domain_from_object('default.domain');
