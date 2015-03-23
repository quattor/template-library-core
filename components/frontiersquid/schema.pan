# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Guillaume PHILIPPON <philippo@lal.in2p3.fr>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# frontiersquid, 15.2.0, 1, 20150323-1249
#
#

declaration template components/frontiersquid/schema;

include { 'quattor/schema' };

type frontiersquid_component_type = {
    include structure_component
        'rpmhome'   : string = '/'
        'postinstall' : string = '/etc/squid/postinstall'
        'squidconf' : string = '/etc/squid/squidconf'
	'username'  : string = 'squid'
	'group'     : string = 'squid'
	'networks'   : string = '0.0.0.0/32'
	'cache_mem' : long = 128
	'cache_dir' : long = 10000
};

bind "/software/components/frontiersquid" = frontiersquid_component_type;

