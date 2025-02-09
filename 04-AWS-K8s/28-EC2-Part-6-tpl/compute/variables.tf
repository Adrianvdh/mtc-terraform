# --- compute/variables.tf ---

variable "instance_count" {}
variable "instance_type" {}
variable "public_sg" {}
variable "public_subnets" {}
variable "vol_size" {}
variable "public_key_path" {}
variable "key_name" {}
variable "dbname" {}
variable "dbuser" {}
variable "dbpassword" {}
variable "db_endpoint" {}
variable "user_data_path" {}
variable "lb_target_group_arn" {}
variable "lb_target_group_port" {}