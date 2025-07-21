resource "aws_lb" "test" {
  name               = var.alb_name
  internal           = false
  load_balancer_type = var.load_balancer_type
  security_groups    = var.security_group_ids
  subnets            = var.subnets

  enable_deletion_protection = false

  tags = {
    Name = var.alb_name
  }
}

resource "aws_lb_target_group_attachment" "test" {
  target_group_arn = var.target_group_arn
  target_id        = var.target_id
  port             = var.port
}

resource "aws_lb_listener" "dev_proj_1_lb_listner" {
  load_balancer_arn = aws_lb.test.arn
  port              = var.port
  protocol          = var.lb_listner_protocol

  default_action {
    type             = var.lb_listner_default_action
    target_group_arn = var.lb_target_group_arn
  }
}

# # https listner on port 443
# resource "aws_lb_listener" "dev_proj_1_lb_https_listner" {
#   load_balancer_arn = aws_lb.dev_proj_1_lb.arn
#   port              = var.lb_https_listner_port
#   protocol          = var.lb_https_listner_protocol
#   ssl_policy        = "ELBSecurityPolicy-FS-1-2-Res-2019-08"
#   certificate_arn   = var.dev_proj_1_acm_arn

#   default_action {
#     type             = var.lb_listner_default_action
#     target_group_arn = var.lb_target_group_arn
#   }
# }