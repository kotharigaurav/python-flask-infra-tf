output "vpc_arn" {
  description = "ARN of IAM Role"
  value       = element(concat(aws_vpc.main[*].arn, [""]), 0)
}

output "vpc_id" {
  description = "value of VPC ID"
  # value = element(concat(aws_vpc.main[*].id, [""]), 0)
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = aws_subnet.public[*].id
}