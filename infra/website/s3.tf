resource "aws_s3_bucket" "bucket" {
  bucket = var.domain_name
  tags = {
    "monthly-cs" : "monthly-cs"
    "week" : 1
  }
}