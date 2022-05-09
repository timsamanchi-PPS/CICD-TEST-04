terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
}
provider "aws" {
    region = "eu-west-1"
}
resource "aws_vpc" "TEST-VPC" {
    cidr_block = "10.10.0.0/24"
    tags = {
      Name = "TEST-VPC"
    }
}