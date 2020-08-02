terraform {
  backend "s3" {
    bucket = "dorwinia-tf-state"
    key    = "terraform-homelab/nginx.tfstate"
    region = "us-west-2"
  }
}
