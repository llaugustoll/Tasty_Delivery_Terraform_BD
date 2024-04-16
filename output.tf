output "rds-name" {
  value = "rds-${var.projectName}"
}

output "security_group_id" {
  description = "The ID of the security group"
  value       = try(aws_security_group.sg-rds.id)
}