# terraform block installs providers,terraform version,backend,locking.
terraform {
 required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "6.17.0"
}
}
