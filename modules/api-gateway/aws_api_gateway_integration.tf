resource "aws_api_gateway_integration" "sample" {
  rest_api_id             = aws_api_gateway_rest_api.sample.id
  resource_id             = aws_api_gateway_resource.sample.id
  http_method             = aws_api_gateway_method.sample.http_method
  type                    = "AWS_PROXY"
  uri                     = var.lambda.function_invoke_arn
  integration_http_method = "POST"


}
