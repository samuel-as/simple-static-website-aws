resource "aws_s3_bucket" "static_website" {
  bucket = var.bucket_name

  tags = {
    Name = var.bucket_name
  }
}

resource "aws_s3_bucket_acl" "static_website" {
  bucket = aws_s3_bucket.static_website.id
  acl    = "private"
}

locals {
  s3_origin_id = "mys3Origin"
}