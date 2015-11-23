# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Nathan Dimmock <nathan.dimmock@morganstanley.com>
#

# #
# Author(s): Nick Williams, Nathan Dimmock
#

# #
# pam, 15.8.0, 1, 2015-10-29T11:33:30Z
#

##########################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
##########################################################################

unique template components/pam/config;

include {'components/pam/schema'};

# standard component settings
"/software/components/pam/version"    = '15.8.0';
"/software/components/pam/active"    ?=  true;
"/software/components/pam/dispatch"  ?=  true;
"/software/components/pam/directory" ?= "/etc/pam.d";
"/software/components/pam/acldir"    ?= "/etc/pam.acls";

# Add rpm to profile
include { 'components/pam/config-rpm' };

# standard functions
include {'pan/functions'};

#
# Definition of functions used to configure this component
#

#
# takes (service, type, control, module, options?)
#
function pam_add = {
	service = ARGV[0];
	pamtype = ARGV[1];
	control = ARGV[2];
	module  = ARGV[3];
	if (!exists("/software/components/pam/modules/" + module)) {
		error("PAM module " + module + " is not a registered module");
	};

	if (is_nlist(SELF)) {
		ret = SELF;
	} else {
		ret = nlist();
	};

	if (!exists(ret[service])) {
		ret[service] = nlist();
	};

	if (!exists(ret[service][pamtype])) {
		ret[service][pamtype] = list();
	};
	tail = length(ret[service][pamtype]);
        options = nlist();
        if (exists(ARGV[4])) {
                options = ARGV[4];
        };
	ret[service][pamtype][tail] = nlist("control", control, "module", module, "options", options);

	return (ret);
};


#
# takes (service, type, control, stackedservice)
#
function pam_add_stack = {
	stacked = ARGV[3];
	if (!exists("/software/components/pam/services/" + stacked)) {
		error("PAM service " + stacked + " is not known");
	};
	options = nlist("service", stacked);
	pam_add(ARGV[0], ARGV[1], ARGV[2], "stack", options);
};

#
# "software/components/pam/access" inserts
#
# takes (service, type, control, sense, itemtype, items, onerr?)
#
# Ick. this is a horrible interface.
# The filename for ACLs is forced
# to be /etc/acls/<servicename>.allow|deny. If you want something
# else, don't use the function but construct the structure yourSELF.
# Example:
# "/software/components/pam/services" = pam_add_acl("sshd", "auth", "required", "deny", "users", list("bob", "fred"));
function pam_add_listfile_acl = {
	service = ARGV[0];
	pamtype = ARGV[1];
	control = ARGV[2];
	sense   = ARGV[3];
	if (!match(sense, "allow|deny")) {
		error("sense for pam acl must be 'allow' or 'deny'");
	};
	itemtype = ARGV[4];
	if (!match(itemtype, "tty|user|rhost|ruser|group|shell")) {
		error("item type for pam acl is illegal");
	};

	items = ARGV[5];
	if (!is_list(items)) {
		error("items within a pam ACL must be a list");
	};
	onerr = "succeed";
	if (exists (ARGV[6])) {
		onerr = ARGV[6];
		if (!match(onerr, "succeed|fail")) {
			error("onerror for pam acl must be either succeed or fail");
		};
	};

	aclbase = value("/software/components/pam/acldir");
	filename = aclbase+"/" + service + "." + sense;
	opts = nlist("onerr", onerr, "file", filename, "item", itemtype, "sense", sense);
	ret = pam_add(service, pamtype, control, "listfile", opts);
	# Now, grab the entry that was just put at the end of the list and
	# add in the ACL information.
	ret[service][pamtype][length(ret[service][pamtype])-1][sense] = nlist("filename", filename, "items", items);
	return (ret);
};

#
# takes (key, filename, allowpos, allowneg)
#
function pam_add_access_file = {
	key        = ARGV[0];
	filename   = ARGV[1];
	allowpos   = ARGV[2];
	allowneg   = ARGV[3];

	if(exists("/software/components/pam/access/" + key)) {
		error("PAM access configuration key (" + key + ") is already defined");
	};

	if (is_nlist(SELF)) {
		ret = SELF;
	} else {
		ret = nlist();
	};

	ret[key]["filename"] = filename;
	ret[key]["allowpos"] = allowpos;
	ret[key]["allowneg"] = allowneg;

	return(ret);
};

#
# takes (key, permission, users, origins)
function pam_add_access_lastacl = {
	key        = ARGV[0];
	permission = ARGV[1];
	users      = ARGV[2];
	origins    = ARGV[3];

	if(!exists("/software/components/pam/access/" + key)) {
		error("PAM access configuration (" + key + ") is unknown");
	};

	if (is_nlist(SELF)) {
		ret = SELF;
	} else {
		ret = nlist();
	};

	ret[key]["lastacl"] = nlist("permission", permission, "users", users, "origins", origins);
	
	return (ret);
};

# takes (key, permission, users, origins)
# Examples:
# "/software/components/pam/services" = pam_append_access
function pam_add_access_acl = {
	key        = ARGV[0];
	permission = ARGV[1];
	users      = ARGV[2];
	origins    = ARGV[3];

	acl        = "acl";

	if(!exists("/software/components/pam/access/" + key)) {
		error("PAM access configuration (" + key + ") is unknown");
	};

	if (is_nlist(SELF)) {
		ret = SELF;
	} else {
		ret = nlist();
	};

	if(!exists(ret[key][acl])) {
		ret[key][acl] = list();
	};

	entry_string = permission + ":" + users + ":" + origins;

	if(!ret[key]["allowpos"] && permission == "+") {
		error("PAM access policy for " + key + "does not permit positive acls, discarding " + entry_string);
        };

	if(!ret[key]["allowneg"] && permission == "-") {
		error("PAM access policy for " + key + "does not permit negative acls, discarding " + entry_string);
        };

	tail = length(ret[key][acl]);
	ret[key][acl][tail] = nlist("permission", permission, "users", users, "origins", origins);

	return(ret);
};

function pam_add_access_netgroup = {
	key      = ARGV[0];
	netgroup = ARGV[1];

	ret = pam_add_access_acl(key, "+", "@" + netgroup, "ALL");

	return (ret);
};

function pam_add_access_user = {
	key  = ARGV[0];
	user = ARGV[1];

	ret = pam_add_access_acl(key, "+", user, "ALL");

	return (ret);
};
