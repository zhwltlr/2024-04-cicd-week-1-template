resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.bucket.bucket

  policy = jsonencode({
    Version = "2008-10-17",
    Id      = "PolicyForCloudFrontPrivateContent",
    Statement = [
      {
        Sid    = "AllowCloudFrontServicePrincipal",
        Effect = "Allow",
        Principal = {
          "Service" = "cloudfront.amazonaws.com"
        },
        Action   = "s3:GetObject",
        Resource = "${aws_s3_bucket.bucket.arn}/*",
        Condition = {
          StringEquals = {
            "AWS:SourceArn" = aws_cloudfront_distribution.cf_dist.arn
          }
        }
      }
    ]
  })

  depends_on = [
    aws_s3_bucket.bucket,
    aws_cloudfront_distribution.cf_dist
  ]
}