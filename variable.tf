variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
}

variable "resource_prefix" {
  description = "Prefix for resource names"
  type        = string
}

variable "environment" {
  description = "Environment name (dev/staging/prod)"
  type        = string
}

variable "public_subnet_1_az" {
  description = "Availability Zone for public subnet 1"
  type        = string
}
