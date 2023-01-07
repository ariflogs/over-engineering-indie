output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.oei-server.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.oei-server.public_ip
}

output "instance_public_DNS" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.oei-server.public_dns
}

output "instance_public_key" {
  description = "Public key of oe-key-pair"
  value       = tls_private_key.oei-key.public_key_openssh
  sensitive   = true
}

output "instance_private_key" {
  description = "Private key of oe-key-pair"
  value       =  tls_private_key.oei-key.private_key_pem
  sensitive   = true
}