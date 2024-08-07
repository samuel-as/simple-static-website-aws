# Nome do Projeto

Breve descrição do projeto e seu propósito.

## Índice

- [Descrição](#descrição)
- [Tecnologias Utilizadas](#tecnologias-utilizadas)
- [Pré-requisitos](#pré-requisitos)
- [Instalação](#instalação)
- [Uso](#uso)
- [Contribuição](#contribuição)
- [Licença](#licença)

## Descrição

Este repositório contém a infraestrutura como código (IaC) para hospedar um site estático na AWS utilizando Terraform. A configuração inclui um bucket S3, uma distribuição CloudFront, um certificado SSL gerado pelo AWS Certificate Manager (ACM) e a configuração do Route 53 para gerenciamento de DNS.

## Tecnologias Utilizadas

- [Terraform](https://www.terraform.io/)
- [AWS](https://aws.amazon.com/)
- [S3](https://aws.amazon.com/s3/)
- [CloudFront](https://aws.amazon.com/cloudfront/)
- [ACM](https://aws.amazon.com/certificate-manager/)
- [Route 53](https://aws.amazon.com/route53/)

## Pré-requisitos

Antes de começar, você precisará ter as seguintes ferramentas instaladas:

- [Terraform](https://www.terraform.io/downloads.html)
- [AWS CLI](https://aws.amazon.com/cli/)
- Conta na AWS com permissões adequadas para criar os recursos.

## Instalação

1. Clone este repositório:
   ```bash
   git clone https://github.com/seuusuario/seurepositorio.git
   cd seurepositorio
2. Configure suas credenciais da AWS usando o AWS CLI:
     ```bash
     aws configure
3. Inicialize o Terraform:
    ```bash
    terraform init
4. Valide o plano de execução:

5. Aplique a configuração:

## Uso
Após a aplicação bem-sucedida, você pode acessar seu site estático através da URL fornecida pela distribuição CloudFront. Verifique os outputs do Terraform para obter a URL.

## Licença
Este projeto está licenciado sob a MIT License - veja o arquivo LICENSE para mais detalhes.
