terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  cloud {
    organization = "ptmakers"
    workspaces {
      name = "over-engineering-indie"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.instance_region
}

resource "aws_instance" "app_server" {
  ami           = "ami-09042b2f6d07d164a" // for frankfurt + ubuntu
  instance_type = "t2.small" // $0.023/H

  tags = {
    Name = var.instance_name
  }
}