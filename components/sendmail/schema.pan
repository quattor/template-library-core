# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jan Iven <jan.iven@cern.ch>
#

# 

###############################################################################
#
#
#
###############################################################################
 
declaration template components/sendmail/schema;
 
include { 'quattor/schema' };
 
 
type component_sendmail = {
  include structure_component
   
  'smarthost' ? string  # "SMTP smarthost which handles all outgoing mails"
  'userdomain' ? string # "User mail appears to come from user@userdomain"
  'localusers' ? list # "users for which 'userdomain' does not apply. default=root"
  'allowexternal' ? boolean # "Should external (non-localhost) SMTP connections be allowed" 
};
 
bind "/software/components/sendmail" = component_sendmail;

