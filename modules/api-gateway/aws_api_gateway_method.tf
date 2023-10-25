resource "aws_api_gateway_method" "lambda" {
  rest_api_id   = aws_api_gateway_rest_api.lambda.id
  resource_id   = aws_api_gateway_resource.lambda.id
  authorization = "NONE"
  http_method   = "GET"
}
