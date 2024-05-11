
resource "aws_instance" "web" {
  ami                                  = "ami-0a1179631ec8933d7"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1c"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0
  key_name                             = "ec2-key"
  monitoring                           = false
  security_groups                      = ["launch-wizard-3"]
  subnet_id                            = "subnet-0a6feb2761ad47064"
  tags = {
    Name = "webserver"
  }
}
