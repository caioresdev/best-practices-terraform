# produtos/produto-b/outputs.tf

output "ec2_instance_id" {
  description = "ID da instância EC2 do Produto B"
  value       = aws_instance.produto_b_ec2.id
}

output "ec2_public_ip" {
  description = "IP público da instância EC2 do Produto B"
  value       = aws_instance.produto_b_ec2.public_ip
}

output "s3_bucket_id" {
  description = "ID do bucket S3 do Produto B"
  value       = aws_s3_bucket.produto_b_bucket.id
}

output "s3_bucket_arn" {
  description = "ARN do bucket S3 do Produto B"
  value       = aws_s3_bucket.produto_b_bucket.arn
}
