resource "aws_lb" "external-elb" {
  name               = var.External_LB_name
  internal           = false
  load_balancer_type = var.External_LB_type
  security_groups    = [aws_security_group.web-sg.id]
  subnets            = [aws_subnet.web-subnet-1.id, aws_subnet.web-subnet-2.id]
}

resource "aws_lb_target_group" "external-elb" {
  name     = var.ALB_TG_name
  port     = 80
  protocol = var.ALB_TG_Protocol
  vpc_id   = aws_vpc.my-vpc.id
}

resource "aws_lb_target_group_attachment" "external-elb1" {
  target_group_arn = aws_lb_target_group.external-elb.arn
  target_id        = aws_instance.webserver1.id
  port             = 80

  depends_on = [
    aws_instance.webserver1,
  ]
}

resource "aws_lb_target_group_attachment" "external-elb2" {
  target_group_arn = aws_lb_target_group.external-elb.arn
  target_id        = aws_instance.webserver2.id
  port             = 80

  depends_on = [
    aws_instance.webserver2,
  ]
}

resource "aws_lb_listener" "external-elb" {
  load_balancer_arn = aws_lb.external-elb.arn
  port              = var.LB_Listener_Port
  protocol          = var.LB_Listener_Protocol

  default_action {
    type             = var.LB_Listener_Def_Type
    target_group_arn = aws_lb_target_group.external-elb.arn
  }
}
