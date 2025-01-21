output "dns-lb" {
  value = aws_lb.lb1.dns_name
}

output "instance1-id" {
  value = aws_instance.serv1.id
}

output "instance2-id" {
  value = aws_instance.serv2.id
}