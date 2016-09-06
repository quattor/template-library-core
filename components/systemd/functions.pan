# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Stijn De Weirdt <stijn.deweirdt@ugent.be>
#

# 

unique template components/systemd/functions;

@documentation{
    desc = Convert path argument and return mount unit. Example: /a/b/c returns a-b-c.mount
    arg = Path to convert
}
function systemd_make_mountunit = {
    if (ARGC != 1) {
        error(format("systemd_make_mountunit takes exactly one argument, got %s", ARGC));
    };
    if (ARGV[0] == '/') {
        error("systemd_make_mountunit cannot convert /");
    };

    # strip leading and/or trailing /
    path = replace('(^/|/$)', '', ARGV[0]);
    format("%s.mount", replace('/', '-', path));
};
