declaration template quattor/types/metadata;

type structure_branch = {
    "author" ? string
    "name" : string
    "type" : string
};

type structure_template = {
    "branch" : structure_branch
};

type structure_metadata = {
    "template" : structure_template
    "features" ? string[]
};
