resource "aws_lambda_function" "sample" {
  function_name = var.common.function_name
  role          = var.role
  handler       = "sample.lambda_handler"
  runtime       = "python3.8"
  filename      = "${path.module}/archive/sample.zip"
}
