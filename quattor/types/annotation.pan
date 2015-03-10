declaration template quattor/types/annotation;


@documentation{
    optional hardware specific information
}
type structure_annotation = {
   "name"         ? string # "product name"
   "type"         ? string # "product type"
   "model"        ? string # "product model"
   "manufacturer" ? string # "manufacturer name"
   "vendor"       ? string # "vendor name"
   "version"      ? string # "product version"
   "chipset"      ? string # "product chipset"
   "serialnumber" ? string # "product serialnumber"
   "arch"         ? string # "product architecture" i386, amd64, m68k, ...
   "bus"          ? string # "bus of peripheral"
   "clock"        ? long   # "clock of peripheral"
   "lang"         ? string # "language of the product"
   "power"        ? long   # "power in watts"
   "location"     ? string # "location of the hardware"
};
