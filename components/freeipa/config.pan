#
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

#
# Current developer(s):
#   Stijn De Weirdt <stijn.deweirdt@ugent.be>
#



unique template components/freeipa/config;

include 'components/freeipa/schema';

bind '/software/components/freeipa' = freeipa_component;

'/software/packages' = pkg_repl('ncm-freeipa', '24.10.0-rc5_1', 'noarch');

include if_exists('components/freeipa/site-config');

prefix '/software/components/freeipa';
'active' ?= true;
'dispatch' ?= true;
'version' ?= '24.10.0';
'dependencies/pre' ?= list('spma');

variable FREEIPA_CLI_REQUIRES_PAM_KRB5 ?= true;

'cli_packages' ?= {
    t = list(
        'ncm-freeipa-24.10.0-rc5_1',
        'nss-pam-ldapd',
        'ipa-client',
        'nss-tools',
        'openssl',
    );
    if (FREEIPA_CLI_REQUIRES_PAM_KRB5) {
        append(t, 'pam_krb5');
    };
    t;
};
