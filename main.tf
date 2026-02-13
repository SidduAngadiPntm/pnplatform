module "vpc" {
  source = "./terraform_modules/vpc"

  environment            = var.environment
  resource_prefix        = var.resource_prefix
  vpc_cidr_block         = "10.0.0.0/16"
  public_subnet_1_cidr   = "10.0.1.0/24"
  public_subnet_1_az     = var.public_subnet_1_az
 }

module "ecs_cluster" {
  source = "./terraform_modules/ecs_cluster"

  ecs_cluster_name = "ecs-${var.resource_prefix}-${var.environment}"

  tags = {
    Environment = var.environment
    ManagedBy   = "terraform"
  }
}

# module "ecs_services" {
#     source = "terraform_modules/ecs_services"
    
# }