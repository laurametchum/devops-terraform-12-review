module "key-pair" {
  source = "../key-pair"
region_name = "us-east-1"
key_name = "serge-key"
}
/*output "key_name" {
  value = aws_key_pair
}*/