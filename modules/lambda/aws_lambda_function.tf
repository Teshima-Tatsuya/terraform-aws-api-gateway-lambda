resource "aws_lambda_function" "helloworld" {
  function_name = "api-gateway-sample"
  role          = var.role
  handler       = "helloworld.lambda_handler"
  runtime       = "python3.8"
  filename      = "${path.module}/archive/helloworld.zip"
}
