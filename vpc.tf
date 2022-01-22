terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.73.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "main" {
  cidr_block       = "10.134.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "pratik-terraform-poc-vpc"
  }
}
