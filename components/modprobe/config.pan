# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Hugo Cacote <Hugo.Cacote@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
      # modprobe, 14.8.0-rc5-SNAPSHOT, rc5_SNAPSHOT20140904163510, 20140904-1735
      #

unique template components/modprobe/config;

include { 'components/modprobe/config-common' };
include { 'components/modprobe/config-rpm' };
