# This template extends the base schema with Aquilon-provied resources

declaration template quattor/types/aquilon/hardware;

include 'pan/types';
include 'quattor/functions/hardware';
include 'quattor/types/annotation';
include 'quattor/types/sensors';
include 'quattor/physdevices';

@documentation{
    Rack definition
}
type structure_rack = {
    "column" : string
    "name"   : string
    "room"   ? string
    "row"    : string
};

@documentation{
    system location definition
}
type structure_sysloc = {
    "building"   : string
    "campus"     ? string
    "city"       : string
    "country"    : string
    "continent"  : string
    "room"       : string
    "bunker"     ? string
    "region"     ? string
    "dns_search_domains" ? string[]
    "location"   ? string
};

# All the resources in this type must be optional for
# the schema to remain usable by non-Aquilon users
type structure_hardware_aquilon = {
    "rack"       ? structure_rack
    "sysloc"     ? structure_sysloc
};

