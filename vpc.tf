# Create a VPC
resource "aws_vpc" "my-vpc" {
  cidr_block = var.VPC_cidr_block
  tags = {
    Name = var.VPC_Name
  }
}
