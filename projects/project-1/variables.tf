# produtos/produto-a/variables.tf

variable "ami" {
  description = "AMI ID para a instância EC2"
  type        = string
}

variable "instance_type" {
  description = "Tipo da instância EC2"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "ID da subnet onde a EC2 será lançada"
  type        = string
}

variable "iam_instance_profile" {
  description = "ARN do profile IAM para a EC2"
  type        = string
}

variable "bucket_name" {
  description = "Nome do bucket S3"
  type        = string
}
