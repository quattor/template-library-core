# This template configures a cron to run update_yum_repos against RPM
# repositories.
# This is used in particular to allow to use checkdeps to verify package dependencies
# in a profile.

unique template quattor/server/yum_repos;

# This variable must contain the list of directories which are parent of
# RPM repositories. Only the directories containing RPMs will be taken
# into consideration by update_yum_repos.
variable QUATTOR_RPM_REPOS_ROOTS ?= list();

# Location of update_yum_repos (need to be installed manually, copying
# the reference version in SCDB utils/misc.
variable QUATTOR_YUM_UPDATE_REPOS ?= '/root/quattor/scripts/update_yum_repos';
variable QUATTOR_YUM_UPDATE_REPOS_OPTIONS ?= '';
variable QUATTOR_YUM_UPDATE_REPOS_CRON ?= 'update_yum_repos';
variable QUATTOR_YUM_UPDATE_REPOS_USER ?= 'root';

# Cron frequency (in hours)
variable QUATTOR_YUM_UPDATE_REPOS_INTERVAL ?= 2;

# Configure cron entry
include { 'components/cron/config' };
"/software/components/cron/entries" = {
  if ( length(QUATTOR_RPM_REPOS_ROOTS) > 0 ) {
    command = "PATH=/sbin:/bin:/usr/sbin:/usr/bin; ";
    foreach (i;parent;QUATTOR_RPM_REPOS_ROOTS) {
      command = command + QUATTOR_YUM_UPDATE_REPOS + ' ' + QUATTOR_YUM_UPDATE_REPOS_OPTIONS + ' ' + parent + "; ";
    };
    SELF[length(SELF)] = nlist('name', QUATTOR_YUM_UPDATE_REPOS_CRON,
                               'user', QUATTOR_YUM_UPDATE_REPOS_USER,
                               'frequency', 'AUTO */'+to_string(QUATTOR_YUM_UPDATE_REPOS_INTERVAL) + ' * * *',
                               'command', command,
                              );
  };
  if ( is_list(SELF) ) {
    SELF;
  } else {
    null;
  };
};


# Configure logrotate
include { 'components/altlogrotate/config' };
"/software/components/altlogrotate/entries/update_yum_repos" =
  nlist("pattern", "/var/log/"+QUATTOR_YUM_UPDATE_REPOS_CRON+".ncm-cron.log",
        "compress", true,
        "missingok", true,
        "frequency", "weekly",
        "create", true,
        "ifempty", true,
        "rotate", 5);


