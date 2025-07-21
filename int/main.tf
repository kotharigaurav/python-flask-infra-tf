###################################
# AWS VPC
###################################

module "vpc" {
  source              = "../modules/vpc"
  vpc_name            = local.vpc_name
  cidr_block          = local.cidr_block
  public_subnet_cidr  = local.public_subnet_cidr
  private_subnet_cidr = local.private_subnet_cidr
  availability_zone   = local.availability_zone
}

###################################
# AWS EC2 Security Group
###################################

module "security_group" {
  source      = "../modules/security-group"
  ec2_sg_name = local.ec2_sg_name
  vpc_id      = module.vpc.vpc_id
}

###################################
# AWS EC2 Instance
###################################

module "ec2" {
  source      = "../modules/ec2"
  instance_name = local.instance_name
  ami_id      = local.ami_id
  instance_type = local.instance_type
  security_groups = local.security_group_ids
  subnet_id = local.subnet_id
  key_name = local.key_name
  user_data = local.user_data
  public_key = var.public_key
}