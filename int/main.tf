###################################
# AWS VPC
###################################

module "vpc" {
  source   = "../modules/vpc"
  vpc_name = local.vpc_name
  cidr_block = local.cidr_block
  public_subnet_cidr = local.public_subnet_cidr
  private_subnet_cidr = local.private_subnet_cidr
  availability_zone = local.availability_zone
}