declaration template quattor/types/metadata;

type structure_branch = {
    "author" ? string
    "name" : string
    "type" : string
    @{id/hash of (last) commit}
    "commit-id" ? string
    @{timestamp (in seconds since 1970), e.g. timestamp of last git commit}
    "timestamp" ? long(0..)
};

type structure_template = {
    "branch" : structure_branch
};

type structure_metadata = {
    "template" : structure_template
    "features" ? string[]
};
