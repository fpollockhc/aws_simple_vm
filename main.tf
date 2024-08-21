# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

source "aws_instance" "web" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}