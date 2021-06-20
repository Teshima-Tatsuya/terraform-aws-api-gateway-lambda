resource "aws_api_gateway_method" "sample" {
  rest_api_id   = aws_api_gateway_rest_api.sample.id
  resource_id   = aws_api_gateway_resource.sample.id
  authorization = "NONE"
  http_method   = "GET"
}
