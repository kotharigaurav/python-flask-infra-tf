variable "ec2_sg_name" {
  description = "Security Groups to allow SSH(22) and HTTP(80)"
  type = string
  default = ""
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default     = ""
}