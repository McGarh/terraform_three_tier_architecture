resource "aws_db_instance" "default" {
  allocated_storage      = 10
  db_subnet_group_name   = aws_db_subnet_group.default.id
  engine                 = var.DB_Instance_Default_Engine
  engine_version         = var.DB_Instance_Default_Engine_Version
  instance_class         = var.DB_Instance_Default_instance_class
  multi_az               = true
  name                   = var.DB_Instance_Default_name
  username               = var.DB_Instance_Default_username
  password               = var.DB_Instance_Default_password
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.database-sg.id]
}

resource "aws_db_subnet_group" "default" {
  name       = var.DB_Sub_Default_name
  subnet_ids = [aws_subnet.database-subnet-1.id, aws_subnet.database-subnet-2.id, aws_subnet.database-subnet-3.id]

  tags = {
    Name = var.DB_Sub_Default_tagname
  }
}
