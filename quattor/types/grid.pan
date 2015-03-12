declaration template quattor/types/grid;

include 'pan/types';

@documentation{
    type definition for EDG (legacy support for DataGrid)
}
type structure_edg_config = {
    "EDG_LOCATION"              ? string
    "EDG_LOCATION_VAR"          ? string
    "EDG_TMP"                   ? string
    "CERTDIR"                   ? string
    "X509_USER_CERT"            ? string
    "X509_USER_KEY"             ? string
    "GRIDMAP"                   ? string
    "GRIDMAPDIR"                ? string
    "EDG_WL_BKSERVERD_ADDOPTS"  ? string
    "EDG_WL_RGMA_FILE"          ? string
    "EDG_WL_RGMA_SOCK"          ? string
};

type structure_edg = {
    "config" ? structure_edg_config
};


@documentation{
    type definition for gLite
}
type structure_glite_config = {
    "GLITE_LOCATION"      : string = '/opt/glite'
    "GLITE_LOCATION_VAR"  : string = '/var/glite'
    "GLITE_LOCATION_LOG"  : string = '/var/log/glite'
    "GLITE_TMP"           : string = '/tmp'
    "GLITE_USER"          ? string
    "GLITE_GROUP"         ? string
    "GLITE_X509_PROXY"    ? string
};

type structure_glite = {
    "config" ? structure_glite_config
};


@documentation{
    type definition for LCG
}
type structure_lcg_config = {
    "LCG_LOCATION"      ? string
    "LCG_LOCATION_VAR"  ? string
    "LCG_TMP"           ? string
};

type structure_lcg = {
    "config" ? structure_lcg_config
};


@documentation{
    type definition for Virtual Organisation (VO)
}
type structure_vo_auth = {
    "uri"   : type_hostURI
    "user"  : string
};

type structure_vo_voms = {
    "fqan"  : string
    "user"  ? string
    "group" ? string
};

type structure_vo_services_wms = {
    "lbhosts"   : type_hostport[]
    "nshosts"   ? type_hostport[]
    "wmproxies" : type_hostURI[]
};

type structure_vo_services = {
    "myproxy" ? type_hostname
    "hlr"     ? type_hostname
    "nshosts" ? type_hostport[]
    "lbhosts" ? type_hostport[]
    "wms"     ? structure_vo_services_wms
};

type structure_vo = {
    "name"      : string
    "auth"      ? structure_vo_auth[]
    "services"  ? structure_vo_services
    "voms"      ? structure_vo_voms[]
};
