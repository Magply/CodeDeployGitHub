terraform {

 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 5.0"
   }
 }
}

provider "aws" {
 region = var.region
}
variable "region" {
 default = "eu-north-1"
 description = "AWS Region"
}

variable "ami" {
 default = "ami-09a4c4dcdd8ac8acd"
 description = "Amazon Machine Image ID for Amazon Linux 2023"
}

variable "type" {
 default = "t3.micro"
 description = "Size of VM"
}

resource "aws_instance" "Terraform" {
 ami = var.ami
 instance_type = var.type

 tags = {
   name = "Demo System"
 }
}
