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



declaration template components/pine/schema;

include {'quattor/schema'};


type component_pine_type = {
  include structure_component 
  
	'userdomain' ? string 	# "User Domain in From: field"
	'smtpserver' ? string 	# "SMTP server used for posting"
	'nntpserver' ? string 	# "NNTP server"
	'inboxpath' ? string 	# "path to the INBOX folder"
	'foldercollection' ? string 	# "path to additional folders"
	'ldapservers' ? string 	# "LDAP server and parameters for directory lookups"
	'ldapnameattr'  ? string 	# "which LDAP attribute to map to name"
	'disableauth'  ? string 	# "authentication methods to disable"
};

bind "/software/components/pine" = component_pine_type;


