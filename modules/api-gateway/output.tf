output "apigateway" {
  value = {
    aws_api_gateway_rest_api = aws_api_gateway_rest_api.sample
    aws_api_gateway_method   = aws_api_gateway_method.sample
    aws_api_gateway_resource = aws_api_gateway_resource.sample
  }

}
