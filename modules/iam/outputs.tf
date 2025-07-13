output "iam_role_arn" {
  description = "ARN of IAM Role"
  value       = element(concat(aws_iam_role.this[*].arn, [""]), 0)
}