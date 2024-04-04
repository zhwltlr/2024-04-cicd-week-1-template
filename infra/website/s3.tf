resource "aws_s3_bucket" "bucket" {
  bucket = var.domain_name
}