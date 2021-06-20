resource "aws_api_gateway_rest_api" "sample" {
  name = "sample-api"

  tags = {
    Name = "sample-api"
  }

}
