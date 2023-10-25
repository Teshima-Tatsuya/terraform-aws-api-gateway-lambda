output "lambda" {
  value = {
    function_invoke_arn = aws_lambda_function.helloworld.invoke_arn
  }

}
