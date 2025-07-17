locals {
  vpc_name            = "TerraformVPC"
  cidr_block          = "10.0.0.0/16"
  public_subnet_cidr  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidr = ["10.0.3.0/24", "10.0.4.0/24"]
  availability_zone   = ["us-east-1a", "us-east-1b"]

  ec2_sg_name = "TerraformEC2SecurityGroup"
}