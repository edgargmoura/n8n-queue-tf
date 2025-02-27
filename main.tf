terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.86.1"
    }
  }
}

provider "aws" {
  region = var.aws_provider.region

  default_tags {
    tags = var.tags
  }

  assume_role {
    role_arn = var.aws_provider.assume_role.role_arn
  }
}