###################################
# IAM Role
###################################

# module "iam_role_module" {
#   source    = "../modules/iam"
#   role_name = local.iam_role_name
#   policy_name = local.iam_policy_name
# }

output "aws_vpc_id" {
  value = data.aws_vpc.selected.id
}

output "aws_vpc_arn" {
  value = data.aws_vpc.selected.arn
}