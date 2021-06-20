resource "aws_api_gateway_method_response" "sample" {
  rest_api_id = aws_api_gateway_rest_api.sample.id
  resource_id = aws_api_gateway_resource.sample.id
  http_method = aws_api_gateway_method.sample.http_method
  status_code = "200"
}
