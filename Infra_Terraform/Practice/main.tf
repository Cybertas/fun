terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "ec2_from_terraform" {
  ami           = "ami-0cb441cf7bb9cba22"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_from_var_file
  }
}