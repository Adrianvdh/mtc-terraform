output "rds_subnetgroup_names" {
  value       = module.networking.db_subgroup_names
  description = "The RDS networkgroup name"
}

output "vpc_security_group_ids" {
  value       = module.networking.db_security_group_ids
  description = "The vpc security group ids"
}