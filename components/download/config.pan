# ex: set expandtab softtabstop=4 shiftwidth=4: -*- indent-tabs-mode: nil -*-
# This is 'TPL/config.tpl', a ncm-download's file
################################################################################
#
# VERSION:    1.1.3, 13/02/09 12:01
# AUTHOR:     njw
# MAINTAINER: njw
# LICENSE:    http://cern.ch/eu-datagrid/license.html
# Copyright © 2008, Contributor
# This program is free software; you can redistribute it and/or modify it under 
# the terms of the EU DataGrid Software License.  You should have received a 
# copy of the license with this program, and the license is published at 
# http://eu-datagrid.web.cern.ch/eu-datagrid/license.html. 
# 
# THE FOLLOWING DISCLAIMER APPLIES TO ALL SOFTWARE CODE AND OTHER MATERIALS 
# CONTRIBUTED IN CONNECTION WITH THIS PROGRAM.
#
# THIS SOFTWARE IS LICENSED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE AND ANY WARRANTY OF NON-INFRINGEMENT, ARE
# DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
# BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
# OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
# OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
# LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
# NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE. THIS
# SOFTWARE MAY BE REDISTRIBUTED TO OTHERS ONLY BY EFFECTIVELY USING
# THIS OR ANOTHER EQUIVALENT DISCLAIMER AS WELL AS ANY OTHER LICENSE
# TERMS THAT MAY APPLY.
#
################################################################################
# Coding style: emulate <TAB> characters with 4 spaces, thanks!
################################################################################
        
        
unique template components/download/config;

include { "components/download/schema" };

include { "pan/functions" };

# standard component settings
"/software/components/download/active"   ?= true ;
"/software/components/download/dispatch" ?= false ;
"/software/components/download/version"  = "1.1.3";
"/software/components/download/release"  = "1";

"/software/packages" = pkg_repl("ncm-download", "1.1.3-1", "noarch");
