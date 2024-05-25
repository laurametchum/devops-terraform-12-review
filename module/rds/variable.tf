variable "allocated_storage" {
  default = 10
}
variable "backup_retention_period" {
  description = "time long backup should be kept"
  default = 0
}
variable "identifier" {
  default = "dev-database"
}
variable "password" {
  sensitive = true
}
variable "db_name" {
  description = "name of the initial database"
  default = "devdb"
}
variable "engine_version" {
  default = "5.7"
}
variable "engine" {
    default = "mysql"
  
}
variable "username" {
  sensitive = true
}
variable "instance_class" {
  default = "db.t3.micro"
}
variable "parameter_group_name" {
  default = "default.mysql5.7"
}
variable "skip_final_snapshot" {
  default = true
}
variable "region" {
  default = "us-east-1"
}