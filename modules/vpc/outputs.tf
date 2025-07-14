output "vpc_arn" {
  description = "ARN of IAM Role"
  value       = element(concat(aws_vpc.main[*].arn, [""]), 0)
}