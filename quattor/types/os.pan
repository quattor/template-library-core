@{
    Types describing the operating system in use by a system
}
declaration template quattor/types/os;

type structure_os_version = {
    @{Descriptive form of version, e.g. 7x}
    "name" : string
    @{Major version number component, e.g. 7}
    "major" ? long(0..)
    @{Minor version number component}
    "minor" ? long(0..)
};

type structure_os_distribution = {
    @{Distribution name, e.g. sl}
    "name" : string with match(SELF, '^((rh)?el|centos|sl)$')
    @{Full descriptive name, e.g. Scientific Linux}
    "description" ? string
    @{Family that this distribution belongs to e.g. The family for "sl" would be "el"}
    "family" ? string with match(SELF, '^el$')
};

type structure_os = {
    @{OS distribution details}
    "distribution" : structure_os_distribution
    @{OS version details}
    "version" : structure_os_version
    @{Architecture of OS (may be different to system architecture)}
    "architecture" : cpu_architecture
};
