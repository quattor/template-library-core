################################################################################
# This is 'namespaces/standard/quattor/functions/repository.tpl', a pan-templates's file
################################################################################
#
# VERSION:    3.2.9-1, 25/11/09 16:16
# AUTHOR:     Martin Bock
# MAINTAINER: Marco Emilio Poleggi <Marco.Emilio.Poleggi@cern.ch>, German Cancio <German.Cancio.Melia@cern.ch>, Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
#
# Function Definitions for  manipulating package repositories
#
################################################################################

declaration template quattor/functions/repository;
 
include { 'pan/functions' };

# Default namespace to use for repository templates.
# Must be changed using function argument.
variable REPOSITORY_NS_DEFAULT ?= 'repository';


# Function to add repositories.
# Call format:
#    '/software/repositories' = add_repositories(repos_list[,repos_ns]);
#
# where:
#    repos_list: a pan list of repositories to add. Each name must match
#                a repository template in the namespace used for
#                repositories
#    repos_ns: namespace to use to locate repository templates.
#              Overrrides the default value.

function add_repositories = {
    if ( (ARGC < 1) || (ARGC > 2) ) {
        error('add_repositories() requires 1 or 2 arguments but '+to_string(ARGC)+' found');
    };
    if ( ARGC == 2 ) {
        repos_ns = ARGV[1];
    } else {
        repos_ns = REPOSITORY_NS_DEFAULT;
    };

    if ( is_list(ARGV[0]) ) {
        foreach (i;rep;ARGV[0]) {
            if ( length(repos_ns) > 0 ) {
                rep_templ = repos_ns + '/' + rep;
            } else {
                rep_templ = rep;
            };
            if ( is_defined(if_exists(rep_templ)) ) {
                SELF[length(SELF)] = create(rep_templ);
            } else {
                debug('Repository template '+rep_templ+' not found.  Ignoring');
            };
        };
    } else {
        error('ARGV[0] is defined but is not a list');
    };

    SELF;
};


# Function to delete repositories.
# Call format:
#    '/software/repositories' = del_repositories(repos_list[,repos_ns]);
#
# where:
#    repos_list: a pan list of repositories to add. Each name must match
#                a repository template in the namespace used for
#                repositories
#    repos_ns: namespace to use to locate repository templates.
#              Overrrides the default value.
function del_repositories = {
    if ((ARGC < 1) || (ARGC > 2)) {
        error('del_repositories() requires 1 or 2 arguments but '+to_string(ARGC)+' found');
    };
    if (ARGC == 2) {
        repos_ns = ARGV[1];
    } else {
        repos_ns = REPOSITORY_NS_DEFAULT;
    };
    if (is_list(ARGV[0])) {
        foreach (i;rep;ARGV[0]) {
            if (length(repos_ns) > 0) {
                rep_templ = repos_ns + '/' + rep;
            } else {
                rep_templ = rep;
            };
            if (is_defined(if_exists(rep_templ))) {
                pos = list();
                foreach(k; v; SELF) {
                    debug('Checking repository: ' + v['name'] + ' at position ' + to_string(k));
                    if (v['name'] == rep) {
                        debug('Tagging repository: ' + v['name'] + ' at position ' + to_string(k) + ' for deletion');
                        prepend(pos, k);
                    };
                };
                foreach(k; v; pos) {
                    debug('Removing repository: ' + SELF[v]['name'] + ' at position ' + to_string(v));
                    delete(SELF[v]);
                };
            } else {
                debug('Repository template ' + rep_templ + ' not found.  Ignoring');
            };
        };
    } else {
        error('ARGV[0] is defined but is not a list');
    };
    SELF;
};


# Apply changes to repository configuration
# Expects an nlist, indexed by the repository name
# and containin nlists with the new values.
# Keys are interpreted as regexp and must be escaped.
# FIXME: to be included into standard SPMA functions
function repository_config = {
    if (! is_list(SELF)) {
        error('left side must be a list');
    };
    if (ARGC != 1) {
        error('only one argument expected');
    };
    if (! is_nlist(ARGV[0])) {
        error('first argument must be an nlist');
    };
    foreach(repo_pattern_e; site_params; ARGV[0]) {
        repo_pattern = unescape(repo_pattern_e);
        foreach(i; repository_params; SELF) {
            if (match(repository_params['name'], repo_pattern)) {
                foreach(config_param; config_value; site_params) {
                  if ( exists(repository_params[config_param]) ) {
                    repository_params[config_param] = merge(repository_params[config_param],config_value);
                  } else {
                    repository_params[config_param] = config_value;
                  };
                };
            };
        };
    };
    SELF;
};


# Function to generate the package_default resource 
# used by pkg_rep from a list or nlist of repositories
#
# Call format:
#    variable package_default ?= package_default(reps[, ns]);
#
# where:
#    reps: a pan resource of repositories to process. Each name must match
#           a repository template in the namespace used for repositories
#    ns: Override the default namespace to use to locate repository templates.

function package_default = {
    if ((ARGC < 1) || (ARGC > 2) ) {
        error('package_default() requires 1 or 2 arguments but ' + to_string(ARGC) + ' found');
    };
    reps = ARGV[0];
    if (ARGC == 2 ) {
        ns = ARGV[1];
    } else {
        ns = REPOSITORY_NS_DEFAULT;
    };

    this = nlist();
    foreach (k1; v1; reps) {
        tpl = ns + '/' + v1;
        if (exists(tpl + '')) {
            rep = create(tpl);
        } else {
            rep = nlist('contents', nlist());
            debug('Warning: repository template ' + tpl + ' not found.');
        };
        foreach (k2; v2; rep['contents']) {
            name = '_' + v2['name'];
            if (! is_defined(this[name][0])) {
                this[name][0] = v2['version'];
            };
            if (! is_defined(this[name][1]) || (is_defined(PKG_ARCH_DEFAULT) && v2['arch'] == PKG_ARCH_DEFAULT)) {
                this[name][1] = v2['arch'];
            };
        };
    };
    this;
};
