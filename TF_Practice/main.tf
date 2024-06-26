# Terraform

provider "aws" {
  region = "us-west-2" # Update with your desired AWS region
}


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.43.0"
    }
  }
}

resource "aws_instance" "ec2" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI ID, update as needed
  instance_type = "t2.micro"              # Instance type, update as needed
  tags = {
    Name = "HelloWorld"
  }
}
