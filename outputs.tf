# outputs.tf

output "route53_zone_id" {
  description = "ID da Zona Route53"
  value       = module.route53.route53_zone_id
}

output "vpc_id" {
  description = "ID da VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_id" {
  description = "ID da Subnet Pública"
  value       = module.vpc.public_subnet_id
}

output "ec2_role_arn" {
  description = "ARN da Role IAM para EC2"
  value       = module.iam.ec2_role_arn
}

output "produto_a_ec2_instance_id" {
  description = "ID da instância EC2 do Produto A"
  value       = module.produto_a.ec2_instance_id
}

output "produto_a_ec2_public_ip" {
  description = "IP público da instância EC2 do Produto A"
  value       = module.produto_a.ec2_public_ip
}

output "produto_a_s3_bucket_id" {
  description = "ID do bucket S3 do Produto A"
  value       = module.produto_a.s3_bucket_id
}

output "produto_a_s3_bucket_arn" {
  description = "ARN do bucket S3 do Produto A"
  value       = module.produto_a.s3_bucket_arn
}

output "produto_b_ec2_instance_id" {
  description = "ID da instância EC2 do Produto B"
  value       = module.produto_b.ec2_instance_id
}

output "produto_b_ec2_public_ip" {
  description = "IP público da instância EC2 do Produto B"
  value       = module.produto_b.ec2_public_ip
}

output "produto_b_s3_bucket_id" {
  description = "ID do bucket S3 do Produto B"
  value       = module.produto_b.s3_bucket_id
}

output "produto_b_s3_bucket_arn" {
  description = "ARN do bucket S3 do Produto B"
  value       = module.produto_b.s3_bucket_arn
}
