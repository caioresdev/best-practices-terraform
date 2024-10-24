# global/iam.tf

resource "aws_iam_role" "ec2_role" {
  name = "ec2_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action    = "sts:AssumeRole",
      Effect    = "Allow",
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
  })

  tags = {
    Name = "EC2Role"
  }
}

resource "aws_iam_policy" "ec2_policy" {
  name        = "ec2_policy"
  description = "Permissões para EC2 acessar S3"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action   = [
        "s3:ListBucket",
        "s3:GetObject"
      ],
      Effect   = "Allow",
      Resource = [
        "arn:aws:s3:::${var.s3_bucket_name}",
        "arn:aws:s3:::${var.s3_bucket_name}/*"
      ]
    }]
  })
}

resource "aws_iam_role_policy_attachment" "ec2_attach" {
  role       = aws_iam_role.ec2_role.name
  policy_arn = aws_iam_policy.ec2_policy.arn
}

output "ec2_role_arn" {
  description = "ARN da Role IAM para EC2"
  value       = aws_iam_role.ec2_role.arn
}
