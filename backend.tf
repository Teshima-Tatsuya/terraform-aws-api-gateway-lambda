terraform {
  cloud {
    hostname = "app.terraform.io"
    organization = "teshima"
    workspaces {
      name = "terraform-aws-api-gateway-lambda"
    }
  }
}