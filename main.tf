# Configure the AWS Provider
provider "aws" {
  region = var.region
}

resource "aws_subnet" "example" {
  vpc_id            = "vpc-0003dc24dd09db43f"
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-east-2a"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_instance" "web" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.example.id

  tags = {
    Name = "HelloWorld"
  }
}