# #
# Software subject to following license(s):
#   Apache 2 License (http://www.opensource.org/licenses/apache2.0)
#   Copyright (c) Responsible Organization
#

# #
# Current developer(s):
#   Charles Loomis <charles.loomis@cern.ch>
#

# #
# Author(s): Jane SMITH, Joe DOE
#

# #
# maui, 15.8.0, 1, 2015-10-29T11:34:15Z
#
#

declaration template components/maui/schema;

include { 'quattor/schema' };

type maui_component = {
	include structure_component
        'configPath' ? string
        'configFile' ? string
        'contents' ? string
};

bind '/software/components/maui' = maui_component;


