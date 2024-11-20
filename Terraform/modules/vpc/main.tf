resource "aws_vpc" "travel_agency_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "Mvar.vpc_name"
  }
}

#Create subnet 1 and reference the vpc variable
resource "aws_subnet" "subnet_a" {
  vpc_id     = aws_vpc.travel_agency_vpc.id
  cidr_block = "172.16.0.0/24"

  tags = {
    Name = "subnet_1a"
  }
}

resource "aws_subnet" "subnet_b" {
  vpc_id     = aws_vpc.travel_agency_vpc.id
  cidr_block = "172.16.2.0/24"

  tags = {
    Name = "subnet_1b"
  }
}