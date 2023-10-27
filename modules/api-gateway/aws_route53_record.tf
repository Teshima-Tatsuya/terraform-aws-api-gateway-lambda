data "aws_route53_zone" "aws" {
  name = "aws.tessy.dev"
}

resource "aws_route53_record" "api" {
  name = aws_api_gateway_domain_name.api.domain_name
  type = "A"
  zone_id = data.aws_route53_zone.aws.zone_id

  alias {
    evaluate_target_health = true
    name = aws_api_gateway_domain_name.api.cloudfront_domain_name
    zone_id = aws_api_gateway_domain_name.api.cloudfront_zone_id
  }
}
