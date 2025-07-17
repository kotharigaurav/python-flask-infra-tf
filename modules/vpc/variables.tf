variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default     = ""
}

variable "cidr_block" {
  description = "value of CIDR block for the VPC"
  type        = string
  default     = ""
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = list(string)
  default     = []
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = list(string)
  default     = []
}

variable "availability_zone" {
  description = "List of availability zones for the subnets"
  type        = list(string)
  default     = []
}