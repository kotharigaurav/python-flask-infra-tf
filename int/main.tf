###################################
# AWS VPC
###################################

module "vpc" {
  source   = "../modules/vpc"
  vpc_name = local.vpc_name
}