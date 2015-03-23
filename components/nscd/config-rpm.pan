# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jan.Iven@cern.ch <Jan.Iven@cern.ch>
#

# 


unique template components/nscd/config-rpm;

include { 'components/nscd/schema' };

"/software/components/nscd/paranoia" ?= 'yes';
"/software/components/nscd/hosts/positive-time-to-live" ?= 300;
"/software/components/nscd/active" ?= true;
"/software/components/nscd/dispatch" ?= true;
"/software/packages" = pkg_repl("ncm-nscd", "15.2.0-1", "noarch");

