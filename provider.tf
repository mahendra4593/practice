
provider "aws" {
region = "us-east-1"
}
assume_role {
    role_arn     = "arn:aws:iam::225989358737:role/terraformproj"
    session_name = "terraform-session"
}
