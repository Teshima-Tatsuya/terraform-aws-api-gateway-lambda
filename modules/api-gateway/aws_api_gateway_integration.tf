resource "aws_api_gateway_integration" "lambda" {
  rest_api_id             = aws_api_gateway_rest_api.lambda.id
  resource_id             = aws_api_gateway_resource.lambda.id
  http_method             = aws_api_gateway_method.lambda.http_method
  type                    = "AWS_PROXY"
  uri                     = var.lambda.function_invoke_arn
  integration_http_method = "POST"
}
