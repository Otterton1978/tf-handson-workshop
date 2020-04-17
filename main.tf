terraform {
	required_version = "~> 0.12"
}

provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}

# This is a single-line comment

resource "aws_instance" "base" {
  ami           = var.ami[var.region]
  instance_type = "t2.micro"
  vpc_security_group_ids = var.security_group_ids
  #vpc_security_group_ids = var.security_group_ids[0]
}


resource "aws_eip" "base" {
  instance = aws_instance.base.id
}