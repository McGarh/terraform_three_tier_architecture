# Create Web Security Group
resource "aws_security_group" "web-sg" {
  name        = var.Web_SG_name
  description = var.Web_SG_Description
  vpc_id      = aws_vpc.my-vpc.id

  ingress {
    description = var.Web_SG_ing_Description
    from_port   = 80
    to_port     = 80
    protocol    = var.Web_SG_ing_Protocol
    cidr_blocks = [var.Web_SG_ing_cidr_blocks]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = var.Web_SG_eg_Protocol
    cidr_blocks = [var.Web_SG_eg_cidr_blocks]
  }

  tags = {
    Name = var.Web_SG_eg_Name
  }
}
