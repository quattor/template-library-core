declaration template quattor/types/annotation;


@documentation{
    optional hardware specific information
}
type structure_annotation = {
    @{product name}
    "name"         ? string
    @{product type}
    "type"         ? string
    @{product model}
    "model"        ? string
    @{manufacturer name}
    "manufacturer" ? string
    @{vendor name}
    "vendor"       ? string
    @{product version}
    "version"      ? string
    @{product chipset}
    "chipset"      ? string
    @{product serialnumber}
    "serialnumber" ? string
    @{product architecture: i386, amd64, m68k, ...}
    "arch"         ? string
    @{bus of peripheral}
    "bus"          ? string
    @{clock of peripheral}
    "clock"        ? long
    @{language of the product}
    "lang"         ? string
    @{power in watts}
    "power"        ? long
    @{location of the hardware}
    "location"     ? string
    @{Date at which the system support runs out.}
    "support"      ? type_isodate
    @{Date at witch the system is procured.}
    "procured"     ? type_isodate

};
