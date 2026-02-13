# module "vpc" {
#     source = "terraform_modules/vpc_networking"

# }

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