output "security_group_ids" {
  description = "List of security group IDs created by the security group module"
  value       = aws_security_group.ec2_sg.id
}