variable "alb_name" {
  description = "The name of the Application Load Balancer"
  type        = string
  default     = ""
}

variable "load_balancer_type" {
  description = "The type of the load balancer"
  type        = string
  default     = ""
}

variable "security_group_ids" {
  description = "List of security group IDs to associate with the load balancer"
  type        = list(string)
  default     = []
}

variable "subnets" {
  description = "List of subnet IDs to associate with the load balancer"
  type        = list(string)
  default     = []
}

variable "target_group_arn" {
  description = "The ARN of the target group to attach to the load balancer"
  type        = string
  default     = ""
}

variable "target_id" {
  description = "The ID of the target to attach to the target group"
  type        = string
  default     = ""
}

variable "port" {
  description = "The port on which the target is listening"
  type        = number
}

variable "lb_listner_protocol" {
  description = "The protocol for the load balancer listener"
  type        = string
  default     = ""
}

variable "lb_listner_default_action" {
  description = "The default action for the load balancer listener"
  type        = string
  default     = "forward"
}

variable "lb_target_group_arn" {
  description = "The ARN of the target group for the load balancer listener"
  type        = string
  default     = ""
}