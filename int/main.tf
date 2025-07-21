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
  public_key = local.public_key
}

###################################
# AWS Load Balancer Target Group
###################################

module "lb_target_group" {
  source = "../modules/lb-tg"
  tg_name = local.tg_name
  port    = local.port
  vpc_id = module.vpc.vpc_id
  ec2_instance_id = module.ec2.instance_id
}

###################################
# AWS Application Load Balancer
###################################

module "alb" {
  source = "../modules/alb"
  alb_name = local.alb_name
  load_balancer_type = local.load_balancer_type
  security_group_ids = [module.security_group.security_group_ids]
  subnets = tolist(module.vpc.public_subnet_ids)
  target_group_arn = module.lb_target_group.target_group_arn
  target_id = module.ec2.instance_id
  port = local.port
  lb_listner_protocol = local.lb_listner_protocol
  lb_listner_default_action = local.lb_listner_default_action
  lb_target_group_arn = module.lb_target_group.target_group_arn
}