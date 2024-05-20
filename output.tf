output "rds-name" {
  value = "rds-${var.projectName}"
}

output "rds-name-product" {
  value = "rds-${var.projectNameProduct}"
}

output "rds-name-product" {
  value = "rds-${var.projectNameOrder}"
}

output "security_group_id" {
  description = "The ID of the security group"
  value       = try(aws_security_group.sg-rds.id)
}