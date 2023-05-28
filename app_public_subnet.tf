# Create Application Public Subnet
resource "aws_subnet" "application-subnet-1" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = var.App_public1_cidr_block
  availability_zone       = var.App_public1_availability_zone
  map_public_ip_on_launch = false

  tags = {
    Name = var.App_public1_Name
  }
}

resource "aws_subnet" "application-subnet-2" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = var.App_public2_cidr_block
  availability_zone       = var.App_public1_availability_zone
  map_public_ip_on_launch = false

  tags = {
    Name = var.App_public2_Name
  }
}
