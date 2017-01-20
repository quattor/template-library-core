declaration template quattor/types/metadata;

@{Metadata about the source code management branch from which this
  profile was generated}
type structure_branch = {
    "author" ? string
    "name" : string
    "type" : string
    @{id/hash of (last) commit}
    "commit-id" ? string
    @{timestamp (in seconds since 1970), e.g. timestamp of last git commit}
    "timestamp" ? long(0..)
};

@{Metadata about the templates that generated this profile}
type structure_template = {
    "branch" : structure_branch
};

@{Information about how the profile was generated. For example, the
  provenance of templates used as input to the compile, and which specific
  templates were selected for inclusion.
}
type structure_metadata = {
    @{provenance of the template set}
    "template" : structure_template
    @{list of templates from the features tree that were included}
    "features" ? string[]
};
