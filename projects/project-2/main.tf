# produtos/produto-b/main.tf

resource "aws_instance" "produto_b_ec2" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  iam_instance_profile        = var.iam_instance_profile
  associate_public_ip_address = true

  tags = {
    Name = "ProdutoB-EC2"
  }
}

resource "aws_s3_bucket" "produto_b_bucket" {
  bucket = var.bucket_name

  tags = {
    Name = "produto-b-s3-bucket"
  }
}

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
