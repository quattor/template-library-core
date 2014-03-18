
template quattor/client/version;

# Used to configure the appropriate repository
# 13.1.3 release is based on 13.1.2 RPMs + a few modified ones
variable QUATTOR_RELEASE ?= '13.1.3';
variable QUATTOR_REPOSITORY_RELEASE ?= '13.1.2';
variable QUATTOR_PACKAGES_VERSION ?= QUATTOR_REPOSITORY_RELEASE + "-1";

