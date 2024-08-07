variable "bucket_name" {
  description = "Nome do bucket S3 para hospedagem do site"
  type        = string
}

variable "domain_name" {
  description = "Nome do domínio do site"
  type        = string
}

variable "hosted_zone_id" {
    description = "ID da hosted zone"
    type        = string
}

variable "subject_alternative_names" {
    description = "Lista de nomes alternativos para o certificado SSL"
    type        = list(string)
    default     = []
}