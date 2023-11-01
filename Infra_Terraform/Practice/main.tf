provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "ec2_from_terraform" {
  ami           = "ami-0cb441cf7bb9cba22"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}