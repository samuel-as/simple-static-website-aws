resource "aws_acm_certificate" "certificate" {
  domain_name       = var.domain_name
  subject_alternative_names = var.subject_alternative_names
  validation_method = "DNS"

  tags = {
    Name = "Meu Certificado SSL"
  }
}

resource "aws_acm_certificate_validation" "certificate_validation" {
  certificate_arn          = aws_acm_certificate.certificate.arn
  validation_record_fqdns  = [for record in aws_route53_record.certificate_validation : record.fqdn]

  depends_on = [
    aws_acm_certificate.certificate
  ]
}