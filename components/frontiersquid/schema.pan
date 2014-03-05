################################################################################
# This is 'TPL/schema.tpl', a ncm-frontiersquid's file
################################################################################
#
# VERSION:    2.0.0, 20/04/10 17:23
# AUTHOR:     Guillaume PHILIPPON <philippo@lal.in2p3.fr>
# MAINTAINER: Flavia DONNO <Flavia.Donno@cern.ch>
# LICENSE:    GNU public license
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################

declaration template components/frontiersquid/schema;

include { 'quattor/schema' };

type component_frontiersquid_type = {
    include structure_component
        'rpmhome'   : string = '/data/squid'
        'postinstall' : string = '/etc/post_install'
        'squidconf' : string = '/data/squid/squidconf'
        'username'  : string = 'squid'
        'group'     : string = 'squid'
        'networks'   : string = '0.0.0.0/32'
        'cache_mem' : long = 128
        'cache_dir' : long = 10000
};

bind "/software/components/frontiersquid" = component_frontiersquid_type;
