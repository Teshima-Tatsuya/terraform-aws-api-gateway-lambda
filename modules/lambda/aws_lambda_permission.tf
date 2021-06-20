resource "aws_lambda_permission" "sample" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.sample.function_name
  principal     = "apigateway.amazonaws.com"

  # More: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-control-access-using-iam-policies-to-invoke-api.html
  source_arn = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${var.apigateway.aws_api_gateway_rest_api.id}/*/${var.apigateway.aws_api_gateway_method.http_method}${var.apigateway.aws_api_gateway_resource.path}"

}
