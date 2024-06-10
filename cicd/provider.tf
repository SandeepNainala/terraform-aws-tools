terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "devops91-terraform"
    key    = "aws-tools-cicd"
    region = "us-east-1"
    dynamodb_table = "devops91-terraform-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}