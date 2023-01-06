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
  region = "eu-central-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-09042b2f6d07d164a" // for frankfurt + ubuntu
  instance_type = "t2.small" // $0.023/H

  tags = {
    Name = "OverEngineeredVPS"
  }
}