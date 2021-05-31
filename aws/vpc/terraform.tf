terraform {
  required_version = "0.15.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.37.0"
    }
  }
  backend "s3" {
    bucket = "dorwinia-tf-state"
    key    = "terraform-homelab/aws/vpc.tfstate"
    region = "us-west-2"
  }
}

provider "aws" {
  region = "us-west-2"
}
