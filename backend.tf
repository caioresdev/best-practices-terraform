# backend.tf

terraform {
  backend "s3" {
    bucket         = var.backend_bucket
    key            = "terraform/state/terraform.tfstate"
    region         = var.aws_region
    dynamodb_table = var.backend_dynamodb_table
    encrypt        = true
  }
}
