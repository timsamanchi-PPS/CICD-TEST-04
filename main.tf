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
resource "aws_vpc" "test-VPC" {
    cidr_block = "10.10.0.0/24"
    tags = {
      Name = "TEST-VPC"
    }
}
resource "aws_internet_gateway" "test-IGW" {
    vpc_id = aws_vpc.test-VPC.id
    tags = {
      Name = "test-IGW-ts"
    }
}