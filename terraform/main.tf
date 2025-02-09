terraform {
  required_version = ">= 1.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.AWS_REGION
}

data "aws_ami" "packer_ami" {
  most_recent = true
  owners      = ["self"]

  filter {
    name   = "name"
    values = [local.ami-name]
  }
}

module "network" {
  source = "./modules/network"

  VPC_NAME           = var.VPC_NAME
  VPC_CIDR_BLOCK     = var.VPC_CIDR_BLOCK
  GW_NAME            = var.GW_NAME
  PUBLIC_RT_NAME     = var.PUBLIC_RT_NAME
  AVAILABILITY_ZONES = var.AVAILABILITY_ZONES
  SUBNET_NAMES       = var.SUBNET_NAMES
  SUBNET_IPS         = var.SUBNET_IPS
}