# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# #
# Author(s): Germán Cancio, Marco Emilio Poleggi, Michel Jouvin, Jan Iven, Mark R. Bannister
#


declaration template components/spma/yum/schema;

type spma_yum_plugin_fastestmirror = {
    'enabled' : boolean = false
    'verbose' : boolean = false
    'always_print_best_host' : boolean = true
    'socket_timeout' : long(0..) = 3
    'hostfilepath' : string = "timedhosts.txt"
    'maxhostfileage' : long(0..) = 10
    'maxthreads' : long(0..) = 15
    'exclude' ? string[]
    'include_only' ? string[]
};

type spma_yum_plugin_versionlock = {
    'enabled' : boolean = true
    'locklist' : string = '/etc/yum/pluginconf.d/versionlock.list'
    'follow_obsoletes' ? boolean
};

type spma_yum_plugin_priorities = {
    'enabled' : boolean = true
    'check_obsoletes' ? boolean
};

type spma_yum_plugins = {
    "fastestmirror" ? spma_yum_plugin_fastestmirror
    "versionlock" ? spma_yum_plugin_versionlock
    "priorities" ? spma_yum_plugin_priorities
};

@documentation{
    Main configuration options for yum.conf.
    The cleanup_on_remove, obsoletes, reposdir and pluginpath are set internally.
}
type spma_yum_main_options = {
    "exclude" ? string[]
    "installonly_limit" ? long(0..) = 3
    "keepcache" ? boolean
    "retries" ? long(0..) = 10
    "timeout" ? long(0..) = 30
};

type component_spma_yum = {
    "userpkgs_retry" : boolean = true
    "fullsearch" : boolean = false
    "plugins" ? spma_yum_plugins
    "main_options" ? spma_yum_main_options
};
