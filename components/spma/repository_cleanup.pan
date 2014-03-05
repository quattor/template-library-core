################################################################################
# This is 'TPL/repository_cleanup.tpl', a ncm-spma's file
################################################################################
#
# VERSION:    2.0.0, 06/09/10 17:49
# AUTHOR:     German Cancio <German.Cancio@cern.ch>
# MAINTAINER: German Cancio <German.Cancio@cern.ch>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
#
# This template should be included as last statement in any node profile
#
################################################################################

template  components/spma/repository_cleanup;


"/software/packages" = resolve_pkg_rep(value("/software/repositories"));
"/software/repositories" = purge_rep_list(value("/software/packages"));


