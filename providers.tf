provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      project     = "devops_monitoring"
      Environment = "dev"
      ManagedBy   = "Terraform"
    }
  }
}