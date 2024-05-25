module "rds1" {
  source = "../module/rds"
}

module "key" {
  source = "../module/key-pair"
}