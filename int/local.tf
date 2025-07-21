locals {
  vpc_name            = "TerraformVPC"
  cidr_block          = "10.0.0.0/16"
  public_subnet_cidr  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidr = ["10.0.3.0/24", "10.0.4.0/24"]
  availability_zone   = ["us-east-1a", "us-east-1b"]

  ec2_sg_name = "TerraformEC2SecurityGroup"

  instance_name = "TerraformEC2Instance"
  ami_id    = "ami-020cba7c55df1f615"
  instance_type = "t2.micro"
  security_group_ids = [module.security_group.security_group_ids]
  subnet_id = module.vpc.public_subnet_ids[0] # Assuming you want to use the first public subnet
  key_name = "aws-key"
  user_data = templatefile("./template/ec2_install_apache.sh", {})
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDpypvOKIoPl9dqED2Zpfp0CDFihrykdRtSBV+bguW24 gaura@Kothari"

  tg_name = "TerraofrmLBTargetGroup"
  port    = 5000

  alb_name = "TerraformALB"
  load_balancer_type = "application"
  lb_listner_protocol = "HTTP"
  lb_listner_default_action = "forward"
}