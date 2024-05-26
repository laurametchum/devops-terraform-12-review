module "rds1" {
  source = "../module/rds"
  region = "us-east-1"
  allocated_storage = 10
  backup_retention_period = 0
  identifier = "dev-database"
  db_name = "devdb"
  engine_version = "5.7"
  engine = "mysql"
  username = ""
  instance_class = "db.t3.micro"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot = true
  password = ""

}

module "key"{
  source = "../module/key-pair"
  region_name = "us-east-1"
key_name = "laura-key"
}