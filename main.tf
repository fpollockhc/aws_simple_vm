# Configure the AWS Provider
provider "aws" {
  region = var.region
}

resource "aws_instance" "web" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}