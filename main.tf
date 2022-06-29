terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
