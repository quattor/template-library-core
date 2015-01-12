# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Nick Williams <Nick.Williams@morganstanley.com>
#

# 

############################################################
#
# type definition components/mcx
#
#
#
#
############################################################

declaration template components/mcx/schema;

include { 'quattor/schema' };

# To support:
#        "mcx_application_data", nlist(
#            "com.apple.loginwindow", nlist(
#                    "RetriesUntilHint", nlist("state", "always", "value", 0),
#                    ("com.apple.login.mcx.DisableAutoLoginClient", nlist("state", "always", value, 1))
#            )

type mcx_entry = extensible {
};

type mcx_app_data = extensible {
};

type mcx_computer = {
    "RealName" : string
    # ENet should be a mac
    "ENetAddress" : string
    "apps" : mcx_app_data{}
};

type component_mcx = {
	include structure_component
        "node"      : string = "MCX"
        "computer"  ? mcx_computer
};

bind "/software/components/mcx" = component_mcx;

