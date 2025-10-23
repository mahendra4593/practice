# terraform block providers version,backend,locking.
terraform {
 required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "6.17.0"
 region = "us-east-1"
  }
}
assume_role {
    role_arn     = "arn:aws:iam::225989358737:role/terraformproj"
    session_name = "terraform-session"
}
}
