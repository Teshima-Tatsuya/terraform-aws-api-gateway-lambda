resource "aws_route53_record" "api" {
  name = var.apigateway.aws_api_gateway_domain_name.domain_name
  type = "A"
  zone_id = var.route53.zone_id

  alias {
    evaluate_target_health = true
    name = var.apigateway.aws_api_gateway_domain_name.domain_name
    zone_id = var.apigateway.aws_api_gateway_domain_name.regional_zone_id
  }
}