resource "aws_api_gateway_integration_response" "lambda" {
  rest_api_id = aws_api_gateway_rest_api.lambda.id
  resource_id = aws_api_gateway_resource.lambda.id
  http_method = aws_api_gateway_method.lambda.http_method
  status_code = aws_api_gateway_method_response.lambda.status_code
}
