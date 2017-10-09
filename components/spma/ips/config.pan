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
# Author(s): Germán Cancio, Marco Emilio Poleggi, Michel Jouvin, Jan Iven, Mark R. Bannister, Jindrich Novy, James Adams
#

# #
# spma, 17.8.0-rc3, rc3_1, Mon Oct 09 2017
#

unique template components/spma/ips/config;

# Set prefix to root of component configuration.
prefix '/software/components/spma';

#
# Configure SPMA appropriately for Solaris 11
#
'packager' = 'ips';

'pkgpaths' = list(
    '/software/catalogues',
    '/software/requests',
);

'uninstpaths' = list(
    '/software/uninstall',
);

'whitepaths' = list(
    '/software/whitelist',
);

'register_change' = list(
    '/software/catalogues',
    '/software/requests',
    '/software/whitelist',
    '/software/uninstall',
);

'flagfile' = '/var/tmp/spma-run-flag';
