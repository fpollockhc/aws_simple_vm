# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.6.0"
}