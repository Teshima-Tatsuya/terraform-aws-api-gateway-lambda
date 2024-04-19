resource "aws_api_gateway_domain_name" "api" {
  regional_certificate_arn = var.apigateway.certificate_arn
  domain_name = var.apigateway.domain_name

  endpoint_configuration {
    types = ["REGIONAL"]
  }
}
