# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jaroslaw Polok <jaroslaw.polok@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#


declaration template components/srvtab/schema;

include {'quattor/schema'};


type component_srvtab_type = {
  include component_type

   "server"    : string 	# "arc server to contact"
   "overwrite" : boolean 	# "overwrite current rvtab/krb5.keytab
   "verbose"   : boolean 	# "tell the script creting the credentials to be verbose"
};

bind "/software/components/srvtab" = component_srvtab_type;
