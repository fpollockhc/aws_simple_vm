# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"

  region = "us-east-1"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}