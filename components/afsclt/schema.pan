# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Jaroslaw Polok <jaroslaw.polok@cern.ch>
#   Alan Fitton <Alan.Fitton@morganstanley.com>
#

# 
# #
# afsclt, 16.2.0-rc1, rc1_1, 2016-02-16T12:48:40Z
#

declaration template components/afsclt/schema;

include 'quattor/schema';

type component_afsclt_entry = {
   include structure_component
   
   "thiscell"   : string         # "AFS home cell"
   "thesecells" ? string[]       # "Cell list to authenticate to"
   "settime"    ? boolean        # "Shall AFS client sync sys time?"
   "cellservdb" ? string         # "Where Master CellServDB can be found"
   "cachemount" ? string         # "AFS cache location (/usr/vice/etc/cache)"
   "cachesize"  ? string         # "AFS cache size in kB"
   "options"    ? nlist          # "AFS client options"
   "enabled"    : string with match (SELF, 'yes|no') 
   				 # "Shall AFS client be active ?"
   "afsd_args"  ? string{} # /etc/afsd.args values for rc.afs
};

bind "/software/components/afsclt" = component_afsclt_entry;
   
