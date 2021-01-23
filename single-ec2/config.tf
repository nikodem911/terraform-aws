terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0663c8300ef945e88"
  instance_type = "t2.micro"
  tags = {
    Name = "tf-1"
  }
}
