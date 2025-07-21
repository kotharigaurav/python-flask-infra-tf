resource "aws_instance" "foo" {
  ami           = var.ami_id
  instance_type = var.instance_type  
  vpc_security_group_ids = var.security_groups
  subnet_id = var.subnet_id
  tags = {
    Name = var.instance_name
  }
  key_name =  var.key_name
  user_data = var.user_data
}

resource "aws_key_pair" "deployer" {
  key_name   = var.key_name
  public_key = var.public_key
}