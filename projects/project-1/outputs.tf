# produtos/produto-a/outputs.tf

output "ec2_instance_id" {
  description = "ID da instância EC2 do Produto A"
  value       = aws_instance.produto_a_ec2.id
}

output "ec2_public_ip" {
  description = "IP público da instância EC2 do Produto A"
  value       = aws_instance.produto_a_ec2.public_ip
}

output "s3_bucket_id" {
  description = "ID do bucket S3 do Produto A"
  value       = aws_s3_bucket.produto_a_bucket.id
}

output "s3_bucket_arn" {
  description = "ARN do bucket S3 do Produto A"
  value       = aws_s3_bucket.produto_a_bucket.arn
}
