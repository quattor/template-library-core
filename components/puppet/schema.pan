# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Andrea Sartirana <sartiran@llr.in2p3.fr>
#

# 
# #
# puppet, 23.6.0-rc3, rc3_1, Tue Aug 08 2023
#

declaration template components/puppet/schema;

include 'quattor/schema';

type puppet_module = {
    "version" ? string
};

type puppet_nodefile = {
    "contents" ? string
};

type puppet_puppetconf_main = extensible {
    "logdir" : string = "/var/log/puppet"
    "rundir" : string = "/var/run/puppet"
};

type puppet_puppetconf = extensible {
    "main" : puppet_puppetconf_main
};

type puppet_hieraconf_yaml = extensible {
    "_3adatadir" : string = "/etc/puppet/hieradata"
};

type puppet_hieraconf = extensible {};

@documentation{
An extensible dictionary holding data to be written to a YAML file for use with Heira.
Note that due to a limitation of YAML::XS strings are not quoted. If you need to pass strings containing special
characters e.g. commas you can either quote the string twice or escape the characters with a backslash.
}
type puppet_hieradata = extensible {};

type puppet_component = {
    include structure_component
    "puppet_cmd" : string = "/usr/bin/puppet"
    "logfile" : string = "/var/log/puppet/log"
    "modulepath" : string = "/etc/puppet/modules"
    "modules" ? puppet_module{}
    "nodefiles" : puppet_nodefile{} = dict(escape("quattor_default.pp"), dict("contents", "hiera_include('classes')"))
    "nodefiles_path" : string = '/etc/puppet/manifests'
    "puppetconf" : puppet_puppetconf = dict("main", dict("logdir", "/var/log/puppet", "rundir", "/var/run/puppet"))
    "puppetconf_file" : string = '/etc/puppet/puppet.conf'
    "hieraconf" : puppet_hieraconf = dict(escape(":backends"), list("yaml"), escape(":yaml"),
        dict(escape(":datadir"), "/etc/puppet/hieradata"), escape(":hierarchy"), list("quattor"))
    "hieraconf_file" : string = "/etc/puppet/hiera.yaml"
    "hieradata" ? puppet_hieradata
    "hieradata_file" : string = "/etc/puppet/hieradata/quattor.yaml"
};

bind '/software/components/puppet' = puppet_component;
