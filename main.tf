# Configure the AWS Provider
provider "aws" {
  region = var.region
}

resource "aws_instance" "web" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  subnet_id = "subnet-02287f9116fc45b62"

  tags = {
    Name = "HelloWorld"
  }
}