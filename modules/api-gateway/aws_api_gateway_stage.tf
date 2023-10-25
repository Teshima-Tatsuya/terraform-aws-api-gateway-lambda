resource "aws_api_gateway_stage" "dev" {
  deployment_id = aws_api_gateway_deployment.lambda.id
  rest_api_id   = aws_api_gateway_rest_api.lambda.id
  stage_name    = "dev"
}