resource "aws_api_gateway_rest_api" "lambda" {
  name = var.apigateway.api_name
}