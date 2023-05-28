# Create Database Private Subnet
resource "aws_subnet" "database-subnet-1" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = var.Database_private1_cidr_block
  availability_zone = var.Database_private2_availability_zone

  tags = {
    Name = var.Database_private1_Name
  }
}

resource "aws_subnet" "database-subnet-2" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = var.Database_private2_cidr_block
  availability_zone = var.Database_private2_availability_zone

  tags = {
    Name = var.Database_private2_Name
  }
}

resource "aws_subnet" "database-subnet-3" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = var.Database_private3_cidr_block
  availability_zone = var.Database_private3_availability_zone

  tags = {
    Name = var.Database_private3_Name
  }
}

resource "aws_subnet" "database-subnet" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = var.Database_cidr_block
  availability_zone = var.Database_availability_zone

  tags = {
    Name = var.Database_Name
  }
}
