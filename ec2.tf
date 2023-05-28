#Create EC2 Instance
resource "aws_instance" "webserver1" {
  ami                    = var.Webserver1_ami
  instance_type          = var.Webserver1_instance_type
  availability_zone      = var.Webserver1_availability_zone
  vpc_security_group_ids = [aws_security_group.webserver-sg.id]
  subnet_id              = aws_subnet.web-subnet-1.id
  user_data              = file(var.Webserver1_user_data)

  tags = {
    Name = var.Webserver1_Name
  }

}

resource "aws_instance" "webserver2" {
  ami                    = var.Webserver2_ami
  instance_type          = var.Webserver2_instance_type
  availability_zone      = var.Webserver2_availability_zone
  vpc_security_group_ids = [aws_security_group.webserver-sg.id]
  subnet_id              = aws_subnet.web-subnet-2.id
  user_data              = file(var.Webserver2_user_data)

  tags = {
    Name = var.Webserver2_Name
  }

}
