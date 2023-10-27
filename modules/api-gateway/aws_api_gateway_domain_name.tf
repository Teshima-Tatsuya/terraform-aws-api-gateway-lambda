data "aws_acm_certificate" "aws" {
  domain = "*.aws.tessy.dev"
}

resource "aws_api_gateway_domain_name" "api" {
  certificate_arn = data.aws_acm_certificate.aws.arn
  domain_name = "api.aws.tessy.dev"

  endpoint_configuration {
    types = ["REGIONAL"]
  }
}
