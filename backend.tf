terraform {
  backend "s3" {
    bucket  = "teshima-terraform-tfstate"
    key     = "tfstate/api-gateway-lambda.tfstate"
    region  = "ap-northeast-1"
    profile = "terraform"
  }
}
