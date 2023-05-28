# Create Database Security Group
resource "aws_security_group" "database-sg" {
  name        = var.DB_SG_name
  description = var.DB_SG_Description
  vpc_id      = aws_vpc.my-vpc.id

  ingress {
    description     = var.DB_SG_ing_Description
    from_port       = 3306
    to_port         = 3306
    protocol        = var.DB_SG_ing_Protocol
    security_groups = [aws_security_group.webserver-sg.id]
  }

  egress {
    from_port   = 32768
    to_port     = 65535
    protocol    = var.DB_SG_eg_Protocol
    cidr_blocks = [var.DB_SG_eg_cidr_blocks]
  }

  tags = {
    Name = var.DB_SG_tag_Name
  }
}
