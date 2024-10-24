# global/route53.tf

resource "aws_route53_zone" "main" {
  name = var.route53_zone_name
}

output "route53_zone_id" {
  description = "ID da Zona Route53"
  value       = aws_route53_zone.main.zone_id
}
