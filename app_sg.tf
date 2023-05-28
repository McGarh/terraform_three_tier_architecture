# Create Application Security Group
resource "aws_security_group" "webserver-sg" {
  name        = var.App_SG_name
  description = var.App_SG_Description
  vpc_id      = aws_vpc.my-vpc.id

  ingress {
    description     = var.App_SG_ing_Description
    from_port       = 80
    to_port         = 80
    protocol        = var.App_SG_ing_Protocol
    security_groups = [aws_security_group.web-sg.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = var.App_SG_eg_Protocol
    cidr_blocks = [var.App_SG_eg_cidr_blocks]
  }

  tags = {
    Name = var.App_SG_tag_Name
  }
}
