# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jaroslaw Polok <jaroslaw.polok@cern.ch>
#   Alan Fitton <Alan.Fitton@morganstanley.com>
#   Michel Jouvin <jouvin@lal.in2p3.fr>
#

# 
# #
# afsclt, 16.10.0-rc4, rc4_1, Thu Nov 24 2016
#

declaration template components/afsclt/schema;

include 'quattor/types/component';

type component_afsclt_entry = {
   include structure_component
   
   "thiscell"   : string         # AFS home cell
   "thesecells" ? string[]       # Cell list to authenticate to
   "settime"    ? boolean        # Shall AFS client sync sys time?
   "cellservdb" ? string         # Where Master CellServDB can be found
   "afs_mount"  ? string         # AFS mount point (e.g. /afs)
   "cachemount" ? string         # AFS cache location (/usr/vice/etc/cache)
   "cachesize"  ? string         # AFS cache size in kB
   "enabled"    : legacy_binary_affirmation_string  # Shall AFS client be active ?
   "afsd_args"  ? string{}       # /etc/afsd.args values for rc.afs
};

bind "/software/components/afsclt" = component_afsclt_entry;
   
