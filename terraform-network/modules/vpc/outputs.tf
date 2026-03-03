output "vpc_id" {
  value = aws_vpc.this.id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "web_sg_id" {
  value = aws_security_group.web_sg.id
}

output "ec2_public_ip" {
  value = length(aws_instance.public_ec2) > 0 ? aws_instance.public_ec2[0].public_ip : null
}