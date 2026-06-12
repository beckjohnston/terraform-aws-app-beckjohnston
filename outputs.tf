output "bastion_public_ip" {
  description = "Public IP of bastion host"
  value       = aws_instance.bastion.public_ip
}

output "app_server_private_ip" {
  description = "Private IP of app server"
  value       = aws_instance.app_server.private_ip
}

output "ssh_to_bastion" {
  description = "SSH command to connect to bastion"
  value       = "ssh -A -i your-key.pem ec2-user@${aws_instance.bastion.public_ip}"
}

output "ssh_to_app_from_bastion" {
  description = "SSH command to connect to app server from bastion"
  value       = "ssh ec2-user@${aws_instance.app_server.private_ip}"
}
