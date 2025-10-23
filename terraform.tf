terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.17.0"
    }
  }

#backend
 /* backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }*/
}

provider "aws" {
  region = "us-east-1"

  # 👇 Assume Role Configuration
  assume_role {
    role_arn     = "arn:aws:iam::225989358737:role/terraformproj"
    session_name = "terraform-session"
  }
}

# Example Resource
/*resource "aws_s3_bucket" "example_bucket" {
  bucket = "terraform-demo-bucket-123456"
  acl    = "private"

  tags = {
    Name        = "TerraformDemoBucket"
    Environment = "Dev"
  }
}*/
