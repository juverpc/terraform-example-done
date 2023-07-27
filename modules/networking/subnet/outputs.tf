output "private_subnet_ids" {
  description = "List of IDs for public subnets."
  value       = aws_subnet.subnet_private[*].id
}