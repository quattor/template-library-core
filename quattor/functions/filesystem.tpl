################################################################################
# This is 'namespaces/standard/quattor/functions/filesystem.tpl', a pan-templates's file
################################################################################
#
# VERSION:    3.2.9-1, 25/11/09 16:16
# AUTHOR:     Martin Bock
# MAINTAINER: Marco Emilio Poleggi <Marco.Emilio.Poleggi@cern.ch>, German Cancio <German.Cancio.Melia@cern.ch>, Michel Jouvin <jouvin@lal.in2p3.fr>
# LICENSE:    http://cern.ch/eu-datagrid/license.html
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
#
# System Function Definitions for hard disk and partitions
#
################################################################################

declaration template quattor/functions/filesystem;


############################################################
# FUNCTION num_of_harddisks
############################################################
function num_of_harddisks = {
   #
   # get resource harddisks
   #
   harddisks = value("/hardware/harddisks");
   #
   # count entries of resource harddisks
   #
   num_of_harddisks = length(harddisks);
   num_of_harddisks;
};

############################################################
# FINCTION boot_disk
#
# returns the disk where grub must be installed
############################################################
function boot_disk = {
    base = "/hardware/harddisks";
    dsk = value(base);
    device = "";
    ok = first(dsk,i,v);
    while (ok) {
        path = base+"/"+to_string(i)+"/boot";
        if (exists(to_string(path))) {
            if (value(path)) {
                device = i;
            };
        };
        ok = next(dsk,i,v);
    };
    if (length(device)>0) {
        device;
    } else {
        null;
    }
};

# Adds a list of logical volumes to a volume group. See
# https://twiki.cern.ch/twiki/bin/view/FIOgroup/TsiCDBBlockDevices#Proposed_helper_functions
# for more details.
function lvs_add = {
     function_name = 'lvs_add';
     if (length (ARGV) != 2) {
       error (function_name+": should get 2 arguments");
     };

     vg = ARGV[0];
     lv=ARGV[1];

     foreach (l; sz; lv) {
	  SELF[l]["volume_group"] = vg;
	  if (sz != -1) {
	       SELF[l]["size"] = sz;
	  };
     };
     # Validation stuff might be added here.
     SELF;
};

# Adds a list of partitions to a disk. The third argument, if any, is
# the name of the extended partition to be used. If there is no
# extended partition, the disk is supposed to have only primary
# partitions. This is true with GPT labels. See
# https://twiki.cern.ch/twiki/bin/view/FIOgroup/TsiCDBBlockDevices#Proposed_helper_functions
# for more details.
function partitions_add = {
     function_name = 'partitions_add';
     if (length (ARGV) != 2 && length (ARGV) != 3) {
       error (function_name+": should get 2 or 3 arguments");
     };

     
     pt=ARGV[1];
     ep=undef;
     if (length (ARGV) == 3) {
	  ep=ARGV[2];
     };

     foreach (p; sz; pt) {
	  if (is_defined (ep)) {
	       ns=matches (p, ".*[^0-9]([0-9]+)$");
	       n=to_long (ns[1]);
	       if (n > 4) {
		    SELF[p]["type"] = "logical";
	       } else if (p == ep) {
		    SELF[p]["type"] = "extended";
	       }; # Else, primary, which is the default
	  };
	  SELF[p]["holding_dev"] = ARGV[0];
	  if (sz != -1) {
	       SELF[p]["size"] = sz;
	  };
     };
     # Validation stuff might be added here.
     SELF;
};


# Function to modify an existing entry in filesystem list or add it if it doesn't exist yet.
#
#          '/system/filesystems' = filesystem_mod(filesystems);
#
# Arguments :
#    - filesystems : list of structure_filesystem entries. If there is only one entry, a structure_filesystem
#                    (nlist) may be passed as argument. 
#
# For each entry in the list, an entry with the same mountpoint is replaced. If not entry with the
# same entry already exists, a new entry is added at the end of the list. Thus order of list 'filesystems'
# is preserved, except for entries already defined.

function filesystem_mod = {
  function_name = 'filesystem_mod';

  # Check the argument.  Code below uses fslist as a list of
  # nlists, each containing file system parameters.
  if ( ARGC != 1 ) {
    error(function_name + ': usage: filesystem_mod(filesystems)');
  } else if ( is_nlist(ARGV[0]) ) {
    fslist = list(ARGV[0]);
  } else if ( is_list(ARGV[0]) ) {
    fslist = ARGV[0];
  } else {
    error(function_name+': argument must be a list of nlist or a nlist');
  };

  # Ensure that SELF exists and is a list.
  if (!exists(SELF) || !is_defined(SELF)) {
    SELF[0] = 1;
    SELF[0] = null;
  };

  # Code below has been modified to use SELF reference directly.
  foreach (i; params; fslist) {

    # By default, add this entry to the end of SELF.
    found = length(SELF);

    # Search for the matching entry in SELF based on the 
    # defined mountpoint.
    ok = first(SELF, fsnum, fsparams);
    while (ok) {

      if ( (params['mountpoint'] == fsparams['mountpoint']) ) {

        # Found a matching entry.  Save index and stop the loop.
        found = fsnum;
        ok = false;

      } else {

        # No match.  Get the next entry. 
        ok = next(SELF,fsnum,fsparams);
      };
    };

    # If found, replace existing entry; if not, add to the 
    # end of the list.
    SELF[found] = params;      
  };

  # Send back the modifications to SELF.
  SELF;
};


# Function to delete one or more filesystem from the filesystem list.
#
#          '/system/filesystems' = filesystem_mod(mountpoints);
#
# Arguments :
#    - mountpoints : one or list of mountpoints (string) to remove from filesystem list.
#
# For each mount point, if it is present in the filesystem list, remove it. If it is not
# present, silently ignore.

function filesystem_del = {
  function_name = 'filesystem_del';

  if ( ARGC != 1 ) {
    error(function_name+': usage: filesytem_del(mountpoints)');
  } else if ( is_string(ARGV[0]) ) {
    mpoints = list(ARGV[0]);
  } else if ( !is_list(ARGV[0]) ) {
    error(function_name+': argument must be a list of string or a string');
  } else {
    mpoints = ARGV[0];
  };

  newfslist = list();
  
  foreach (fsnum;fsparams;SELF) {
    keep_fs = true;
    ok = first(mpoints,i,mpoint);
    while ( ok && keep_fs ) {
      if ( fsparams['mountpoint'] == mpoint ) {
        keep_fs = false;
      };
      ok = next(mpoints,i,mpoint);
    };
    if ( keep_fs ) {
      newfslist[length(newfslist)] = fsparams;
    };
  };
  
  newfslist;
};

