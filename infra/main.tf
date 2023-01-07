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
  region = var.instance-region
}

resource "tls_private_key" "oei-key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "oei-key-pair" {
  key_name = "oei-key-pair"
  public_key = tls_private_key.oei-key.public_key_openssh
}

resource "local_file" "oei-private-key" {
  content  = tls_private_key.oei-key.private_key_pem
  filename = "oei_private_key.pem"
}

resource "aws_instance" "oei-server" {
  ami           = "ami-09042b2f6d07d164a" // for frankfurt + ubuntu
  instance_type = "t2.small" // $0.023/H
  key_name      = "oei-key-pair"

  tags = {
    Name = var.instance-name
  }
}