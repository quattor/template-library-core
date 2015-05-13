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
# #
# sendmail, 15.4.0-rc2, rc2_1, 20150513-1258
#

unique template components/sendmail/config-xml;

include { 'components/sendmail/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/sendmail';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/sendmail/sendmail.pm'); 
