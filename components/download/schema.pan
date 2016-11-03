# #
# Software subject to following license(s):
#   EU Datagrid (http://opensource.org/licenses/EUDatagrid)
#   null
#

# #
# Current developer(s):
#   Nick Williams <nick.williams@morganstanley.com>
#   Mark Wilson <Mark.Wilson@morganstanley.com>
#

# 
# #
# download, 16.10.0-rc1, rc1_1, Thu Nov 03 2016
#

declaration template components/download/schema;

include 'quattor/types/component';

type component_download_file = {
    "href"    : string
    @{command (no options) to run after download, the filename is added as first and (only) argument}
    "post"    ? string
    "proxy"   : boolean = true
    "gssapi"  ? boolean
    "perm"    ? string
    "owner"   ? string
    "group"   ? string
    @{Don't consider the remote file to be new until it is this number of minutes old}
    "min_age" : long = 0
    "cacert"  ? string
    "capath"  ? string
    "cert" ? string
    "key" ? string
    @{seconds, overrides setting in component}
    "timeout" ? long
};

type component_download_type = extensible {
    include structure_component
    "server" ? string
    "proto"  ? string with match(SELF, "^https?$")
    "files"  ? component_download_file{}
    "proxyhosts" ? string[]
    @{seconds, timeout for HEAD requests which checks for changes}
    "head_timeout" ? long
    @{seconds, total timeout for fetch of file, can be overridden per file}
    "timeout" ? long
};
