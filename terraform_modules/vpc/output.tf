output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "subnets" {
  value = aws_subnet.subnet
}

output "internet_gateway_id" {
  description = "Internet Gateway ID"
  value       = aws_internet_gateway.main.id
}
