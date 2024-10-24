# main.tf

terraform {
  backend "s3" {
    bucket         = var.backend_bucket
    key            = "terraform/state/terraform.tfstate"
    region         = var.aws_region
    dynamodb_table = var.backend_dynamodb_table
    encrypt        = true
  }

  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# Chamando os Recursos Globais
module "route53" {
  source = "./global/route53"

  route53_zone_name = var.route53_zone_name
}

module "vpc" {
  source = "./global/vpc"

  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  availability_zone   = var.availability_zone
}

module "iam" {
  source = "./global/iam"

  s3_bucket_name = var.s3_bucket_name
}

# Chamando os Módulos dos Produtos
module "produto_a" {
  source = "./produtos/produto-a"

  ami                  = var.produto_a_ami
  instance_type        = var.instance_type
  subnet_id            = module.vpc.public_subnet_id
  iam_instance_profile = module.iam.ec2_role_arn
  bucket_name          = var.produto_a_bucket_name
}

module "produto_b" {
  source = "./produtos/produto-b"

  ami                  = var.produto_b_ami
  instance_type        = var.instance_type
  subnet_id            = module.vpc.public_subnet_id
  iam_instance_profile = module.iam.ec2_role_arn
  bucket_name          = var.produto_b_bucket_name
}
