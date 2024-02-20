#Getting Public instance IP address
output "public_ip_adress" {
  description = "The Public IP of instance"
  value       = aws_instance.terraform.public_ip
}
