# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Luis Fernando Muñoz Mejías <Luis.Munoz@UGent.be>
#

# #
# Author(s): David Groep
#


@{

    Contains the data structure describing the SASL and KRB5
    configurations in the LDAP SSSD provider.

    Fields in these data types match the ldap_sasl_* and ldap_krb5_*
    fields in the sssd-ldap man page.

}

declaration template components/authconfig/sssd-sasl;

type sssd_sasl = {
    "mech" ? string
    "authid" ? string
    "realm" ? string
    "canonicalize" ? boolean
    "minssf" ?  long
};

type sssd_krb5 = {
    "keytab" ? string
    "init_creds" ? boolean
    "ticket_lifetime" ?  long
};
