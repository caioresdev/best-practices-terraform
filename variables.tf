# variables.tf

# Variáveis Globais
variable "aws_region" {
  description = "Região AWS para provisionamento"
  type        = string
  default     = "us-east-1"
}

variable "backend_bucket" {
  description = "Bucket S3 para o backend do Terraform"
  type        = string
}

variable "backend_dynamodb_table" {
  description = "Tabela DynamoDB para lock do Terraform"
  type        = string
}

variable "route53_zone_name" {
  description = "Nome da Zona Route53"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block para a VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block para a Subnet Pública"
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Zona de disponibilidade para a Subnet Pública"
  type        = string
  default     = "us-east-1a"
}

variable "s3_bucket_name" {
  description = "Nome do bucket S3 para IAM Policy"
  type        = string
  default     = "produto-a-s3-bucket"
}

# Variáveis do Produto A
variable "produto_a_ami" {
  description = "AMI ID para a instância EC2 do Produto A"
  type        = string
}

variable "produto_a_bucket_name" {
  description = "Nome do bucket S3 para o Produto A"
  type        = string
}

# Variáveis do Produto B
variable "produto_b_ami" {
  description = "AMI ID para a instância EC2 do Produto B"
  type        = string
}

variable "produto_b_bucket_name" {
  description = "Nome do bucket S3 para o Produto B"
  type        = string
}

# Variáveis Comuns
variable "instance_type" {
  description = "Tipo da instância EC2"
  type        = string
  default     = "t2.micro"
}
