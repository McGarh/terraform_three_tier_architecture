# Create Web Public Subnet
resource "aws_subnet" "web-subnet-1" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = var.Web1_cidr_block
  availability_zone       = var.Web1_availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = var.Web1_Name
  }
}

resource "aws_subnet" "web-subnet-2" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = var.Web2_cidr_block
  availability_zone       = var.Web2_availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = var.Web2_Name
  }
}
