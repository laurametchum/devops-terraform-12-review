terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

## ec2 data source
data "aws_instance" "ec21" {
  instance_id = "i-06c7641b649c771a4"
}
resource "aws_instance" "demo" {
  ami = data.aws_ami.ami1.id
  instance_type = data.aws_instance.ec21.instance_type
  key_name = data.aws_instance.ec21.key_name
}
## vpc data source
/*data "aws_vpc" "vpc1" {
  id = var.vpc_id
}
resource "aws_subnet" "example" {
  vpc_id            = data.aws_vpc.selected.id
  availability_zone = "us-west-2a"
  cidr_block        = cidrsubnet(data.aws_vpc.selected.cidr_block, 4, 1)
}
*/
