# 
# ncm-oned, 1.2.1, 20101108.1858.43
#
#
# Created as part of the StratusLab project (http://stratuslab.eu),
# co-funded by the European Commission under the Grant Agreement
# INSFO-RI-261552."
#
# Copyright (c) 2010, Centre Nationale de la Recherche Scientifique
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

unique template components/oned/config;

include {'components/oned/schema'};

'/software/packages'=pkg_repl('ncm-oned','1.2.1-1','noarch');
'/software/components/oned/dependencies/pre' ?=  list ('spma', 'accounts');

'/software/components/oned/active' ?= true;
'/software/components/oned/dispatch' ?= true;
