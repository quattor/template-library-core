# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <Stijn.De.Weirdt@cern.ch>
#

# 


unique template components/sindes_getcert/config-rpm;
include {'components/sindes_getcert/schema'};

# Package to install
"/software/packages" = pkg_repl("ncm-sindes_getcert", "14.4.0-rc3_SNAPSHOT20140507141728", "noarch");

 
"/software/components/sindes_getcert/dependencies/pre" ?= list("spma");
"/software/components/sindes_getcert/active" ?= true;
"/software/components/sindes_getcert/dispatch" ?= true;

##
## set the sindes values + ccm cert config
## default has most used parameters set with variables
##
variable SINDES_GETCERT_SETUP ?= "components/sindes_getcert/default"; 
include { SINDES_GETCERT_SETUP };