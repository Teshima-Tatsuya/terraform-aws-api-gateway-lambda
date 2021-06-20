resource "aws_api_gateway_resource" "sample" {
  rest_api_id = aws_api_gateway_rest_api.sample.id
  parent_id   = aws_api_gateway_rest_api.sample.root_resource_id
  path_part   = var.common.function_name
}
