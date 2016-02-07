object template host_domain_from_object2;

include 'pan/functions';

@{fails as default domain must be fqdn}
"/a" = host_domain_from_object('notanfqdn');
