declaration template quattor/types/software;

@documentation{
    generic definition of the software tree. This is made more specific if the
    SPMA definitions are included
}
type structure_software = {
    "components"    ? structure_component{}
    "repositories"  ? list
    "packages"      ? dict
    "groups"        ? dict
};
