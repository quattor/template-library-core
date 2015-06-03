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
# puppet, 15.4.0, 1, 2015-06-03T15:21:52Z
#

declaration template components/puppet/schema;

include { 'quattor/schema' };

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

type puppet_hieraconf = extensible {
        "_3abackends" : string[] = list("yaml")
        "_3ayaml" : puppet_hieraconf_yaml
        "_3ahierarchy" : string[] = list("quattor")
};

type puppet_hieradata = extensible {};

type puppet_component = {
  include structure_component
  "modules" ? puppet_module{}
  "nodefiles" : puppet_nodefile{}= nlist(escape("quattor_default.pp"),nlist("contents","hiera_include('classes')"))
  "puppetconf" : puppet_puppetconf = nlist("main",nlist("logdir","/var/log/puppet","rundir","/var/run/puppet"))
  "hieraconf" : puppet_hieraconf = nlist(escape(":backends"),list("yaml"),escape(":yaml"),nlist(escape(":datadir"),"/etc/puppet/hieradata"),escape(":hierarchy"),list("quattor"))
  "hieradata" ? puppet_hieradata
};

bind '/software/components/puppet' = puppet_component;
