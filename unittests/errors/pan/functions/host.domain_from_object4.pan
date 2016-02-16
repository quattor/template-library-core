object template host.domain_from_object4;

include 'pan/functions';

@{fails with invalid domainname due to _ in name}
"/a" = host_domain_from_object('default.domain');
