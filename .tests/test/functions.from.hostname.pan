object template functions.from.hostname;

include 'pan/functions';

"/host_domain_from_object" = host_domain_from_object('default.domain');
"/hostname_from_object" = hostname_from_object();
"/domain_from_object" = domain_from_object('default.domain');
"/full_hostname_from_object" = full_hostname_from_object('default.domain');
