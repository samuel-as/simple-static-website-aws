# Simple Static Website On AWS
This project uses Terraform to provision an infrastructure on AWS that hosts a static website, including the creation of an S3 bucket for file storage, the configuration of a CloudFront distribution for fast and secure content delivery, and the generation of an SSL certificate via AWS Certificate Manager (ACM) to ensure secure connections, the creation of DNS records on Route 53 for validation of ACM certificates and publication of the website URL on the internet.

## Table of Contents

- [Technologies Used](#technologies-used)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [License](#license)


## Technologies Used

- [Terraform](https://www.terraform.io/)
- [AWS](https://aws.amazon.com/)
- [S3](https://aws.amazon.com/s3/)
- [CloudFront](https://aws.amazon.com/cloudfront/)
- [ACM](https://aws.amazon.com/certificate-manager/)
- [Route 53](https://aws.amazon.com/route53/)

## Prerequisites

Before you begin, you will need to have the following tools installed:

- [Terraform](https://www.terraform.io/downloads.html)
- [AWS CLI](https://aws.amazon.com/cli/)
- An AWS account with appropriate permissions to create resources.
- A pre-configured domain on Route 53

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/samuel-as/simple-static-website-aws.git
   cd simple-static-website-aws
2. Configure your AWS credentials using the AWS CLI:
     ```bash
     aws configure
3. Fill terraform.tfvars file
    ```bash
    bucket_name   = ""
    domain_name    = ""
    hosted_zone_id = ""
    subject_alternative_names = [""]
    cdn_aliases = ""
4. Initialize Terraform:
    ```bash
    terraform init
5. Validate the execution plan:
    ```bash
    terraform plan
6. Apply the configuration:
    ```bash
    terraform apply
## Usage
After successfully applying the changes, upload your static website files to the bucket (bucket_name). 
You can access your static website through the URL configured in the 'domain_name' variable.

## License
This project is licensed under the MIT License - see the LICENSE file for details.
