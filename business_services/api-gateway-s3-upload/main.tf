
provider "aws" {
  region = "eu-west-2"
}

module "api" {
  source = "../../terraform_modules/api-s3-connector"
  resource_prefix = "pinnatum-api-s3-connector"
}