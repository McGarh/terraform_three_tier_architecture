output "lb_dns_name" {
  description = "main"
  value       = aws_lb.external-elb.dns_name
}

output "web1" {
  description = "main"
  value       = aws_instance.webserver2.public_ip
}
