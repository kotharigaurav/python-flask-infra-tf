# AWS VPC Module

resource "aws_vpc" "main" {
  cidr_block = var.cidr_block

  tags = {
    Name = var.vpc_name
  }
}

# Create public subnets
resource "aws_subnet" "public" {
  count = length(var.public_subnet_cidr)
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.public_subnet_cidr, count.index)
  availability_zone = element(var.availability_zone, count.index  )

  tags = {
    Name = "aws-public-subnet-${count.index + 1}"
  }
}

# Create private subnets
resource "aws_subnet" "private" {
  count = length(var.private_subnet_cidr)
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.private_subnet_cidr, count.index)
  availability_zone = element(var.availability_zone, count.index)

  tags = {
    Name = "aws private-subnet-${count.index + 1}"
  }
}