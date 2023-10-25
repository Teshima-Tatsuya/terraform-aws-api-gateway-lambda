resource "aws_api_gateway_deployment" "lambda" {
  rest_api_id = aws_api_gateway_rest_api.lambda.id
  stage_name = aws_api_gateway_stage.stage_name

  triggers = {
    redeployment = sha1(jsonencode(aws_api_gateway_rest_api.lambda.body))
  }

  lifecycle {
    create_before_destroy = true
  }
}
