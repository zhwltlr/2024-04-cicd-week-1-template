resource "aws_route53_record" "acm" {
  zone_id = data.aws_route53_zone.zone.id

  name = var.domain_name

  type    = "A"
  ttl     = null
  records = null

  alias {
    name                   = aws_cloudfront_distribution.cf_dist.domain_name
    zone_id                = aws_cloudfront_distribution.cf_dist.hosted_zone_id
    evaluate_target_health = false
  }
}