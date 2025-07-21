variable "ami_id" {
    description = "value of the AMI ID to use for the EC2 instance"
    type        = string
    default     = ""
}

variable "instance_type" {
    description = "Type of instance to use for the EC2 instance"
    type        = string
    default     = ""
}

variable "instance_name" {
    description = "Name tag for the EC2 instance"
    type        = string
    default     = ""
}

variable "security_groups" {
    description = "List of security groups to associate with the EC2 instance"
    type        = list(string)
    default     = []
}

variable "subnet_id" {
    description = "ID of the subnet in which to launch the EC2 instance"
    type        = string
    default     = ""
}

variable "key_name" {
    description = "Name of the AWS key pair to use for SSH access to the EC2 instance"
    type        = string
    default     = ""
}

variable "user_data" {
    description = "User data script to run on instance launch"
    type        = string
    default     = ""
}

variable public_key {
    description = "Public key for the AWS key pair"
    type        = string
    default     = ""
}