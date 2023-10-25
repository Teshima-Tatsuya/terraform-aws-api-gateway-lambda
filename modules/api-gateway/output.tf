output "apigateway" {
  value = {
    aws_api_gateway_rest_api = aws_api_gateway_rest_api.lambda
    aws_api_gateway_method   = aws_api_gateway_method.lambda
    aws_api_gateway_resource = aws_api_gateway_resource.lambda
  }

}
