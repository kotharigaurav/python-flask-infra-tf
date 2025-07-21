variable "tg_name" {
  description = "The name of the target group"
  type        = string
  default     = ""
}

variable "port" {
  description = "The port on which the target group is listening"
  type        = number
}