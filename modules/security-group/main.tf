## AWS EC2 Security Group

resource "aws_security_group" "ec2_sg" {
  name   = var.ec2_sg_name
  description = "Enable the Port 22(SSH) & Port 80(http)"
  vpc_id = var.vpc_id

  ingress {
    description = "Allow SSH requests from anywhere"
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
  }
  
  ingress {
    description = "Allow HTTP requests from anywhere"
    cidr_blocks = ["0.0.0.0.0/0"]
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
  }

  ingress {
    description = "Allow HTTPS requests from anywhere"
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 443
    to_port   = 443
    protocol  = "tcp"
  }

  egress {
    description = "Allow all traffic"
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    name = "Aws Ec2 Security Group"
  }
}