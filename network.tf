resource "aws_default_vpc" "default" {
  enable_dns_hostnames = true

  tags = {
    Name = "Default VPC"
  }
}

data "aws_availability_zones" "available" { }

resource "aws_default_subnet" "default_az1" {
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "Default subnet for us-east-1a"
  }
}