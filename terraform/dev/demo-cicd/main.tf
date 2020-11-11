terraform {
  required_version = ">= 0.12.7, < 0.14"

  required_providers {
    aws = ">= 2.68, < 4.0"
  }

  backend "s3" {
    key            = "github-action-demo/dev/terraform.tfstate"
    bucket         = "tf-backend-terraform-state"
    dynamodb_table = "tf-backend-terraform-state"
    acl            = "bucket-owner-full-control"
    region         = "eu-west-1"
  }
}

provider "aws" {
  region = "eu-west-1"
}

locals {
  environment = "dev"
  name_prefix = "github-action-demo"

  tags = {
    terraform   = "True"
    environment = local.environment
  }
}
# test
module "demo-cicd" {
  name_prefix = "${local.name_prefix}-${local.environment}"
  source      = "../../modules/demo-cicd"
}