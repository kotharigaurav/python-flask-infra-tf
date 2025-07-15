###################################
# AWS VPC
###################################

module "vpc" {
  source   = "../modules/vpc"
  vpc_name = local.vpc_name
  cidr_block = var.cidr_block
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zone = var.availability_zone
}