# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # sshkeys, 13.12.0, 1, 20131210-1548
      #

unique template components/sshkeys/config-xml;

include { 'components/sshkeys/config-common' };

# Set prefix to root of component configuration.
prefix '/software/components/sshkeys';

# Embed the Quattor configuration module into XML profile.
'code' = file_contents('components/sshkeys/sshkeys.pm'); 
