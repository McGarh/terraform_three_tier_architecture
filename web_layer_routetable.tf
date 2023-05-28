# Create Web layber route table
resource "aws_route_table" "web-rt" {
  vpc_id = aws_vpc.my-vpc.id


  route {
    cidr_block = var.WebRT_cidr_block
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = var.WebRT_Name
  }
}
